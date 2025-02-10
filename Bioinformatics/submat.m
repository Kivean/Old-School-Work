function matscore = submat(seq1, seq2, newmat)
%% Substitution Matrix Calculator
% Takes two uppercase strings of single letters
% Uses the following matrix by default, but another matrix can be supplied 
% in the same format if desired
%    C  T  A  G
% C  1 -1 -2 -2
% T -1  1 -2 -2 
% A -2 -2  1 -1 
% G -2 -2 -1  1

% a "softer" version of this matrix is as follows, this encourages
% similarity over true homology
%    C  T  A  G
% C  2  1 -1 -1
% T  1  2 -1 -1 
% A -1 -1  2  1 
% G -1 -1  1  2

% use default matrix if no other supplied
if nargin < 3
     newmat = [1 -1 -1 -1; -1 1 -1 -1; -1 -1 1 -1; -1 -1 -1 1] %in-class version
    % newmat = [2 1 -1 -1; 1 2 -1 -1; -1 -1 2 1; -1 -1 1 2] %softer version
    %newmat = [1 -1 -2 -2; -1 1 -2 -2; -2 -2 1 -1; -2 -2 -1 1];
end

% assign a number to each letter for seq1
if seq1 == "C"
    seqnum1 = 1;
elseif seq1 == "T"
    seqnum1 = 2;
elseif seq1 == "A"
    seqnum1 = 3;
elseif seq1 == "G"
    seqnum1 = 4;
end

% assign a number to each letter for seq2
if seq2 == "C"
    seqnum2 = 1;
elseif seq2 == "T"
    seqnum2 = 2;
elseif seq2 == "A"
    seqnum2 = 3;
elseif seq2 == "G"
    seqnum2 = 4;
end

% return substitution matrix score
matscore = newmat(seqnum1, seqnum2);

