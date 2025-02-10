function newseqs = BLASTtree(seq1,seq2,pmv)
% newseqs = myblast_tree(seq1,seq2,pmv)
%  This function implements a BLAST (Basic Local Alignment Search Tool) 
%  algorithm using a simple dynamic programming strategy. In this version,
%  the "Reconstruct" process is based on a tree, whose data is stored in a
%  vector. The idea is inspired by the union-find algorithm.
% Scoring rule: 
%  match +2, mismatch -1.
% Input arguments: 
%  pmv: plus minus vector, which defines the scoring rule.
%  
% Jan/10/2015, hanligong@gmail.com
%
if nargin < 3
    pmv = [2 1];
end
scrPlus  = pmv(1);
scrMinus = pmv(2);
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
for ii = 2:l1+1
    m(ii,1) = m(ii-1,1)-scrMinus;
    mDir(ii,1,2) = true;
end
for jj = 2:l2+1
    m(1,jj) = m(1,jj-1)-scrMinus;
    mDir(1,jj,3) = true;
end
%% Score
for ii = 2:l1+1
    for jj = 2:l2+1
        v = [m(ii-1,jj-1) m(ii-1,jj) m(ii,jj-1)]-scrMinus*[1 1 1];
        if seq1(ii-1) == seq2(jj-1)
            v(1) = v(1)+scrMinus+scrPlus;
        end
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
% %
%% Reconstruct
%Path:
% [idx1,idx2,...;idx1,idx2,...]
%Tree Structure
% pathTree, using a vector to store a tree
%  [0 1 1 ...] each value in the vector represents the index of its father,
%  negative means a child
% nodeName, corresponding names of nodes
%  [rootName childName1 ...]
global pathTree nodeName vecLen
pathTree = 0; %root
nodeName = (l1+1)*(l2+1);
pathNum = 1;
srchDone = false;
vecLen = 1;
%pathIdx, index of the last child in a path
pathIdx = zeros(pathNum,1);pathIdx(1) = 1;
while ~all(srchDone)
    for k = 1:pathNum
        if ~srchDone(k)
            currPt = nodeName(pathIdx(k));
            [ii,jj] = ind2sub(sz,currPt);
            subMat = [...
                ii-1,jj-1;...
                ii-1,jj-0;...
                ii-0,jj-1];
            ndir = 0;
            currIdx = pathIdx(k);
            for ix = 1:3
                if mDir(ii,jj,ix)
                    ndir = ndir+1;
                    idx = sub2ind(sz,subMat(ix,1),subMat(ix,2));
                    addTreeChild(currIdx,idx);
                    if ndir == 1
                        pathIdx(k) = vecLen;
                    else
                        pathNum = pathNum+1;
                        srchDone(pathNum) = false;
                        pathIdx(pathNum) = vecLen;
                    end
                    if idx == 1
                        srchDone(k) = true;
                    end
                end
            end
        end
    end
end
%Plot pathTree
figure('name','Plot Path Tree',...
    'numbertitle','off','menubar','none','color',[1 1 1])
axes('dataaspectratio',[1 1 1],'box','on');
treeplot(abs(pathTree))
%% Formulate Sequence
figure('name','Plot Possible Paths',...
    'numbertitle','off','menubar','none','color',[1 1 1])
axes('dataaspectratio',[1 1 1],'box','on',...
    'xlim',[1 l2+1],'xtick',1:l2+1,'xdir','normal','xgrid','on',...
    'ylim',[1 l1+1],'ytick',1:l1+1,'ydir','reverse','ygrid','on');
newseqs = cell(1,pathNum);
for k = 1:pathNum
    [vPath,len] = getTreePath(pathIdx(k));
    [ii,jj] = ind2sub(sz,vPath);
    line(jj,ii,'color',[0 0 1],'linewidth',2)
    subDiff = [diff(ii)',diff(jj)'];
    len = len-1;
    nwseq = ' '*ones(2,len);
    for kk = 1:len
        if all(subDiff(kk,:) == [0,1])
            nwseq(1,kk) = '-';
            nwseq(2,kk) = seq2(jj(kk+1)-1);
        elseif all(subDiff(kk,:) == [1,0])
            nwseq(1,kk) = seq1(ii(kk+1)-1);
            nwseq(2,kk) = '-';
        elseif all(subDiff(kk,:) == [1,1])
            nwseq(1,kk) = seq1(ii(kk+1)-1);
            nwseq(2,kk) = seq2(jj(kk+1)-1);
        end
    end
    newseqs{k} = char(nwseq);
    fprintf('\nMatched Sequence No.%d\n',k)
    disp(char(nwseq));
end
    function addTreeChild(father,name)
        vecLen = vecLen+1;
        pathTree(father) = abs(pathTree(father));
        pathTree(vecLen) = -father;
        nodeName(vecLen) = name;
    end
    function [vPath,len] = getTreePath(child)
        len = 1;
        vPath = nodeName(child);
        father = -pathTree(child);
        while father ~= 0
            len = len+1;
            vPath(len) = nodeName(father);
            father = pathTree(father);
        end
    end
end
