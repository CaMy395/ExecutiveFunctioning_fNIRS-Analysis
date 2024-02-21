%% Accuacy DCCS
%Bilinguals;Monolinguals
Pre=[.96,.9611,];
Post=[1.0058,.8980];
Mix=[.8075,.7481];
%std Bilinguals;Monolinguals
sPre=[.02795,.09345,];
sPost=[.12960,.24842];
sMix=[.09838,.18318];
DAstd=[sPre;sPost;sMix];
AB=[Pre;Post;Mix];
figure
ylabel('Mean Accuracy')
xlabel('Conditions')
title('DCCS')
% legend('Bilinguals','Monolinguals')
hold on
bar(AB)
ax = gca;
ax.XTick = [1 2 3];
ax.XTickLabel = {'Pre-', 'Post-', 'Mixed'};
ngroups = size(AB, 1);
nbars = size(AB, 2);
%Calculating the width for each bar group
groupwidth = min(.8, nbars/(nbars+1.5));
for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, AB(:,i), DAstd(:,i), '.');
end
hold off
legend('Bilinguals','Monolinguals')


%% RT DCCS
%RT Bilingual
Pre=[234.0574,1077];
Post=[319.5833,1436];
Mix=[588.0375,3608];
%std Bilinguals;Monolinguals
sPre=[485.46,514.10491];
sPost=[653.13,70.8284];
sMix=[1171,2954.41];
DAstd=[sPre;sPost;sMix];
AB=[Pre;Post;Mix];
figure
ylabel('Mean Speed')
xlabel('Conditions')
title('DCCS')
% legend('Bilinguals','Monolinguals')
hold on
bar(AB)
ax = gca;
ax.XTick = [1 2 3];
ax.XTickLabel = {'Pre-', 'Post-', 'Mixed'};
ngroups = size(AB, 1);
nbars = size(AB, 2);
%Calculating the width for each bar group
groupwidth = min(.8, nbars/(nbars+1.5));
for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, AB(:,i), DAstd(:,i), '.');
end
hold off
legend('Bilinguals','Monolinguals')

%% RT GNG
%[Bilinguals,Monolinguals]
RTG= [486.0612,398.8067]; %mean speed
RTNG= [615.3100,504.7096] ; 
RTGs=[59.53,19.03];
RTNGs=[73.04,43.59];

data=[RTG;RTNG];
std=[RTGs;RTNGs];
figure
ylabel('Mean Speed')
xlabel ('Conditions')
title('Go-No/Go')
hold on
hb=bar(data);
ax = gca;
ax.XTick = [1 2 ];
ax.XTickLabel = {'Go' 'No/Go'};
ngroups = size(data, 1);
nbars = size(data, 2);
%Calculating the width for each bar group
groupwidth = min(.8, nbars/(nbars+1.5));
for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, data(:,i), std(:,i), '.');
end
hold off
legend('Bilinguals','Monolinguals')

%% GNG Accuracy

%[Bilinguals,Monolinguals]
RTG= [.8875,.8515]; %mean speed
RTNG= [.8783,.8815] ; 
RTGs=[.11392,.06559];
RTNGs=[.08670,.06501];

data=[RTG;RTNG];
std=[RTGs;RTNGs];
figure
ylabel('Mean Accuracy')
xlabel ('Conditions')
hold on
hb=bar(data);ax = gca;
ax.XTick = [1 2 3];
ax.XTickLabel = {'Go' ,'No/Go'};
ngroups = size(data, 1);
nbars = size(data, 2);
%Calculating the width for each bar group
groupwidth = min(.8, nbars/(nbars+1.5));
for i = 1:nbars
    x = (1:ngroups) - groupwidth/2 + (2*i-1) * groupwidth / (2*nbars);
    errorbar(x, data(:,i), std(:,i), '.');
end
hold off
legend('Bilinguals','Monolinguals')
title('Go-No/Go')