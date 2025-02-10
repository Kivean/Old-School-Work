function alignment = BLAST(seq1name,seq2name,gap)
%% Needleman-Wunsch Alignment Tool
% Takes the names of two .txt files as sequence inputs
% .txt files must NOT have newline characters
% Also takes a gap penalty 
% Default gap penalty is 2

%read data from files
seq1 = fileread(seq1name);
seq2 = fileread(seq2name);

% use default gap penalty if one is not supplied
if nargin < 3
    gap = 2;
end

% convert everything to uppercase to clean up the inputs
seq1 = upper(seq1);
seq2 = upper(seq2);

% initialize the matrix at the correct size
len1 = length(seq1);
len2 = length(seq2);
initmat = [len1+1,len2+1];
mat = zeros(initmat);

% initialize the traceback matrix to store path reconstruction data
tracemat = false(len1+1,len2+1,3);

%initialize the first column with the gap penalty
for col = 2:len1+1 
    mat(col,1) = mat(col-1,1)-gap;
    tracemat(col,1,2) = true;
end

%initialize the first row with the gap penalty
for row = 2:len2+1 
    mat(1,row) = mat(1,row-1)-gap;
    tracemat(1,row,3) = true; 
end

% begin the scoring step
for col = 2:len1+1
    for row = 2:len2+1
        %calculate the substitution matrix score
        subscore = submat(seq1(col-1), seq2(row-1)); 
        %calculate the possible cell scores
        cscore = [(mat(col-1,row-1)+subscore) (mat(col-1,row)-gap) (mat(col,row-1)-gap)];
        %determine cell score
        maxcscore = max(cscore);
        for dir = 1:3
            if cscore(dir) == maxcscore
                %assign cell value
                mat(col,row) = cscore(dir);
                %store traceback direction, multiple directions can be stored
                tracemat(col,row,dir) = true;
            end
        end
    end
end

% plot the resulting score matrix
figure('name','Score Matrix','numbertitle','off')
axes('xlim',[0 len2+2],'xtick',1:len2+1,'xgrid','on',... %x axis
    'ylim',[0 len1+2],'ytick',1:len1+1,'ydir','reverse','ygrid','on',... %y axis
    'dataaspectratio',[1 1 1],'box','on'); %general formatting

% label the chart with the sequence letters for the first sequence
for col = 2:len1+1
    text(0.5,col,seq1(col-1),'fontsize',10,'HorizontalAlignment','center')
end

% label the chart with the sequence letters for the second sequence
for row = 2:len2+1
    text(row,0.5,seq2(row-1),'fontsize',12,'HorizontalAlignment','center')
end

% draw the corresponding connections from the traceback matrix 
% diagonal = (:,:,1), up = (:,:,2), right = (:,:,3)
for col = 1:len1+1
    for row = 1:len2+1
        % draw diagonal connection if needed
        if tracemat(col,row,1)
            line([row row-1],[col col-1],'color','g','linewidth',2)
        end
        % draw vertical connection if needed
        if tracemat(col,row,2)
            line([row row-0],[col col-1],'color','g','linewidth',2)
        end
        % draw hprizontal connection if needed
        if tracemat(col,row,3)
            line([row row-1],[col col-0],'color','g','linewidth',2)
        end
        % label each cell with the corresponding score
        text(row,col,num2str(mat(col,row)),'fontsize',12,'HorizontalAlignment','left','VerticalAlignment','top')
    end
end

% trace the path backwards to generate the alignment
% initialize variables
pathnum = 1; %number of paths
stepnum = 1; %step in the search
search = zeros(pathnum,len1+len2+1); %create maximum possible path
fin = false(pathnum,1); %tracks whether search is done
lenp = ones(pathnum,1); %tracks path length

% start search at lower right hand corner (len1+1)*(len2+1)
search(1) = (len1+1)*(len2+1);

while ~all(fin)
    stepnum = stepnum+1;
    for k = 1:pathnum 
        if ~fin(k) % check if current path is finished
            lenp(k) = lenp(k)+1;
            % mark current place in the search
            cur = search(k,stepnum-1);
            % get array index of the current point in the search
            [col,row] = ind2sub(initmat,cur); 
            % generate the indicies of the possible path directions
            avdir = [col-1,row-1; col-1,row-0; col-0,row-1];

            % check for a path in all three directions first setting number
            % of available directions to 0
            ndir = 0;
            for dir = 1:3
                if tracemat(col,row,dir) % only triggers if traceback matrix contains valid path
                    % update number of possible directions
                    ndir = ndir+1;
                    % gets the linear index of the current place in the search
                    place = sub2ind(initmat,avdir(dir,1),avdir(dir,2));
                    
                    % update path if there's only one possible direction
                    if ndir == 1
                        search(k,stepnum) = place;
                    
                    % or otherwise, generate a second path
                    else
                        pathnum = pathnum+1;
                        % mark start of second path
                        search(pathnum,:) = search(k,:);
                        % update path direction
                        search(pathnum,stepnum) = place;
                        % second path is searched
                        fin(pathnum) = false;
                        lenp(pathnum) = lenp(k);
                    end
                    
                    % terminate traceback once upper left corner is reached
                    if place == 1
                        fin(k) = true;
                    end
                end
            end
        end
    end
end

% draw the stored paths
figure('name','Paths','numbertitle','off')
axes('xlim',[1 len2+1],'xtick',1:len2+1,'xgrid','on',... %x axis
    'ylim',[1 len1+1],'ytick',1:len1+1,'ydir','reverse','ygrid','on',... %y axis
    'dataaspectratio',[1 1 1],'box','on'); %general formatting

% allow alignments equal to number of paths
alignment = cell(1,pathnum);  

% plot paths
for k = 1:pathnum
    % access path and flip it to plot
    path = search(k,:);
    path = fliplr(path(1:lenp(k)));
    % get indicies of the next step in the path
    [col,row] = ind2sub(initmat,path);
    % plot the path
    line(row,col,'color','g','linewidth',2)
    % determine whether or not there is a gap
    isgap = [diff(col)',diff(row)'];
    l = lenp(k)-1;
    % initialize a new sequence
    newseq = ' '*ones(2,l);
    for gaps = 1:l
        % vertical (seq1) gap
        if all(isgap(gaps,:) == [0,1])
            % generate next character in both sequences
            newseq(1,gaps) = '-'; 
            newseq(2,gaps) = seq2(row(gaps+1)-1);
        % horizontal (seq2) gap
        elseif all(isgap(gaps,:) == [1,0])
            % generate next character in both sequences
            newseq(1,gaps) = seq1(col(gaps+1)-1);
            newseq(2,gaps) = '-';
        % no gap
        elseif all(isgap(gaps,:) == [1,1])
            % generate next character in both sequences
            newseq(1,gaps) = seq1(col(gaps+1)-1);
            newseq(2,gaps) = seq2(row(gaps+1)-1);
        end
    end
    % generate and print the new sequences
    alignment{k} = char(newseq);
    fprintf('\nSequence Alignment #%d\n',k)
    disp(char(newseq));
end
end