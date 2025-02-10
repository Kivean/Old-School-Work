function newseqs = testBLAST(seq1,seq2,gap)
% newseqs = myblast(seq1,seq2,pmv)
%  This function implements a BLAST (Basic Local Alignment Search Tool) 
%  algorithm using a simple dynamic programming strategy.
% Scoring rule: 
%  match +2, mismatch -1.
% Input arguments: 
%  pmv: plus minus vector, which defines the scoring rule.
%  
% Jan/10/2015, hanligong@gmail.com
%
if nargin < 3
    gap = 2;
end
seq1 = upper(seq1);
seq2 = upper(seq2);
l1 = length(seq1);
l2 = length(seq2);
sz = [l1+1,l2+1];
%matrix:
% seq1, row
% seq2, col
%mDirection:
% (ii-1,jj-1), (ii-1,jj), (ii,jj-1)
m = zeros(sz);
mDir = false(l1+1,l2+1,3);
%% Initialize
for ii = 2:l1+1 %initialize first column
    m(ii,1) = m(ii-1,1)-gap;
    mDir(ii,1,2) = true;
end
for jj = 2:l2+1 %initialize first row
    m(1,jj) = m(1,jj-1)-gap;
    mDir(1,jj,3) = true; 
end
%% Score
for ii = 2:l1+1
    for jj = 2:l2+1
        subscore = submat(seq1(ii-1), seq2(jj-1)); %calculate the substitution matrix score
        v = [(m(ii-1,jj-1)+subscore) (m(ii-1,jj)-gap) (m(ii,jj-1)-gap)];
        vm = max(v);
        for ix = 1:3
            if v(ix) == vm
                m(ii,jj) = v(ix);
                mDir(ii,jj,ix) = true;
            end
        end
    end
end
%plot mDir
figure('name','Plot Direction Arrows',...
    'numbertitle','off','menubar','none','color',[1 1 1])
axes('dataaspectratio',[1 1 1],'box','on',...
    'xlim',[0 l2+2],'xtick',1:l2+1,'xdir','normal','xgrid','on',...
    'ylim',[0 l1+2],'ytick',1:l1+1,'ydir','reverse','ygrid','on');
for ii = 2:l1+1
    text(0.5,ii,seq1(ii-1),...
        'HorizontalAlignment','center','fontsize',12)
end
for jj = 2:l2+1
    text(jj,0.5,seq2(jj-1),...
        'HorizontalAlignment','center','fontsize',12)
end
for ii = 1:l1+1
    for jj = 1:l2+1
        if mDir(ii,jj,1)
            line([jj jj-1],[ii ii-1],'color',[1 0 0],'linewidth',2)
        end
        if mDir(ii,jj,2)
            line([jj jj-0],[ii ii-1],'color',[1 0 0],'linewidth',2)
        end
        if mDir(ii,jj,3)
            line([jj jj-1],[ii ii-0],'color',[1 0 0],'linewidth',2)
        end
        text(jj,ii,[num2str(m(ii,jj)) '(' num2str(sub2ind(sz,ii,jj)) ')'],...
            'HorizontalAlignment','center','fontsize',11)
    end
end
