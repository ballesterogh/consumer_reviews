% Create the data for the reviews 
%Calificaciones
x1=10; %1 estrella
x2=5; %2 estrella
x3=1; %3 estrella
x4=1; %4 estrella
x5=7; %5 estrella
total_reviews = x1+x2+x3+x4+x5;

y=[1 2 3 4 5];

reviews = [x1 x2 x3 x4 x5];  %vector de estrellas
upper=max(reviews);

a1=total_reviews-x1;
a2=total_reviews-x2;
a3=total_reviews-x3;
a4=total_reviews-x4;
a5=total_reviews-x5;

reviews1 = [x1 a1 ; x2 a2; x3 a3; x4 a4; x5 a5];

stars = {'1 estrella', '2 estrellas', '3 estrellas', '4 estrellas', '5 estrellas', ''};


mytitle = strcat('(',num2str(total_reviews), ' ',' calificaciones)');

% Plot the reviews on a horizontal bar chart figure
figure
b=barh(reviews1, 'stacked');
b(1).FaceColor =[0.9290, 0.6940, 0.1250];
b(2).FaceColor =[0.85, 0.85, 0.85];

text(total_reviews+0.3,1, num2str(x1), 'FontSize',25)
text(total_reviews+0.3,2,num2str(x2), 'FontSize',25)
text(total_reviews+0.3,3,num2str(x3), 'FontSize',25)
text(total_reviews+0.3,4,num2str(x4), 'FontSize',25)
text(total_reviews+0.3,5,num2str(x5), 'FontSize',25)
%box off

% Set the axis limits
axis([0 (total_reviews+3) 0 6])
% Change the Y axis tick labels to use the stars
set(gca, 'YTick', 1:total_reviews)
set(gca, 'YTickLabel', stars)
set(gca,'FontSize',25)
set(gca,'xtick',[])
set(gca,'xticklabel',[])

% Add a title
title(['\fontsize{30} Opiniones en las últimas 2 semanas' char(10) ...
    '\fontsize{25}' mytitle char(10) ])
	
	
	
%% OTRA FORMA MÁS BÁSICA
% Create the data for the reviews 

%Calificaciones
x1=10; %1 estrella
x2=5; %2 estrella
x3=1; %3 estrella
x4=1; %4 estrella
x5=7; %5 estrella
total_reviews = x1+x2+x3+x4+x5;

y=[1 2 3 4 5];

reviews = [x1 x2 x3 x4 x5];  %vector de estrellas
upper=max(reviews);

stars = {'1 estrella', '2 estrellas', '3 estrellas', '4 estrellas', '5 estrellas', ''};

% Plot the reviews on a horizontal bar chart figure
figure
b=barh(y, reviews, 'stacked');
b.FaceColor =[0.9290, 0.6940, 0.1250];

text(x1+0.3,1, num2str(x1), 'FontSize',25)
text(x2+0.3,2,num2str(x2), 'FontSize',25)
text(x3+0.3,3,num2str(x3), 'FontSize',25)
text(x4+0.3,4,num2str(x4), 'FontSize',25)
text(x5+0.3,5,num2str(x5), 'FontSize',25)
%box off

% Set the axis limits
axis([0 (max(reviews)+2) 0 6])
% Change the Y axis tick labels to use the stars
set(gca, 'YTick', 1:upper)
set(gca, 'YTickLabel', stars)
set(gca,'FontSize',25)
set(gca,'xtick',[])
set(gca,'xticklabel',[])

% Add a title
title('Opiniones en las últimas 2 semanas', 'FontSize', 30)