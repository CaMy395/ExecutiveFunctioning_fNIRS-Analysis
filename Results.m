clc,clear
%%DCCS Task 
%Bilinguals Accuracy
Pre=[8.71];
Post=[8.36];
Mixed=[8.43]; 
D_B = table(Pre,Post,Mixed)
       D_B.Properties.Description = 'Bilingual Accuracy';
       D_B.Properties.VariableUnits =  {'Pre-trial'  'Post-trial'  'Mixed trial'};

% %Monolongials Accuracy
% M_c=[8.71];
% M_s=[8.36];
% M_b=[8.43];
% M_B = table(B_c,B_s,B_b)
%        M_B.Properties.Description = 'Monolingual Accuracy';
%        M_B.Properties.VariableUnits =  {'Pre-trial'  'Post-trial'  'Mixed trial'};