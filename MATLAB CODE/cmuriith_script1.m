%% Encoding a protein sequence
clc; close all; clear all;

seq = input('Enter Sequence ', 's');
seq = upper(seq); % converting everything into upper case
l_seq = zeros(1,length(seq)); %array of zeros

for aa = 1:length(seq)
    if(seq(aa) == 'A')
        l_seq(aa) = 1;
    elseif (seq(aa) == 'G')
        l_seq(aa) = 2;
    elseif (seq(aa) == 'I')
        l_seq(aa) = 3;
    elseif (seq(aa) == 'L')
        l_seq(aa) = 4;
    elseif (seq(aa) == 'P')
        l_seq(aa) = 5;
    elseif (seq(aa) == 'V')
        l_seq(aa) = 6;  
    elseif (seq(aa) == 'F')
        l_seq(aa) = 7;
    elseif (seq(aa) == 'W')
        l_seq(aa) = 8;
    elseif (seq(aa) == 'Y')
        l_seq(aa) = 9;
    elseif (seq(aa) == 'D')
        l_seq(aa) = 10;
    elseif (seq(aa) == 'E')
        l_seq(aa) = 11;    
    elseif (seq(aa) == 'R')
        l_seq(aa) = 12;
    elseif (seq(aa) == 'H')
        l_seq(aa) = 13;
    elseif (seq(aa) == 'K')
        l_seq(aa) = 14;
    elseif (seq(aa) == 'S')
        l_seq(aa) = 15;
    elseif (seq(aa) == 'T')
        l_seq(aa) = 16;    
    elseif (seq(aa) == 'C')
        l_seq(aa) = 17;
    elseif (seq(aa) == 'M')
        l_seq(aa) = 18;
    elseif (seq(aa) == 'N')
        l_seq(aa) = 19;
    elseif (seq(aa) == 'Q')
        l_seq(aa) = 20;
    end 
end
