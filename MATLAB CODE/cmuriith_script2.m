%% Hierarchial and k-means clustering

clc; close all; clear all; 
%%k-mean clustering

data = readtable('dataset3.csv');
col = [5,6,7,8,9,10,11];
p_matt = data(:,col);
p_matt = table2array(p_matt);
egfr = data(:,12);
egfr = table2array(egfr);
egfr = egfr'; % transposing egfr

egfr_label_vec = zeros(50,1); %initializes label vector

for j = 1:length(egfr)
    if egfr(j) <= 15
        egfr_label_vec(j,1) = 1;
    else 
        egfr_label_vec(j,1) = 0;
    end
 j = j + 1;   
end

%%kmeans
[idx, C] = kmeans (p_matt, 2, 'Distance', 'cityblock');

%% Data visualization

figure;
plot(p_matt(idx==1,1),p_matt(idx==1,2),'r.','MarkerSize',12);
hold on;
plot(p_matt(idx==2,1),p_matt(idx==2,2),'b.','MarkerSize',12);
plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3);
legend('Cluster 1', 'Cluster 2', 'Centroids','Location','NW');
title('Cluster assigments and centroids');
hold off;

%% hierarchial clustering

data = readtable('dataset3.csv');
col = [5,6,7,8,9,10,11];
p_matt = data(:,col);
p_matt = table2array(p_matt);
egfr = data(:,12);
egfr = table2array(egfr);
egfr = egfr'; % transposing egfr

egfr_label_vec = zeros(50,1); %initializes label vector

for j = 1:length(egfr)
    if egfr(j) <= 15
        egfr_label_vec(j,1) = 1;
    else 
        egfr_label_vec(j,1) = 0;
    end
 j = j + 1;   
end

%hiearchial clustering
% Compute pairwise distances

Y = pdist(p_matt);

% Link pair of objects that are close to each other

Z = linkage(Y);

%% Create a dendrogram (Graphical representation of the cluster tree)

dendrogram(Z);

%% Verify clustering

C = cophenet(Z, Y);


%% Heatmap (Clustergram)

cg = clustergram(p_matt, 'Standardize', 'Row');

%% Use the encoded data for plotting and validating your clustering technique
%%validation of kmeans_clustering
figure;
plot(p_matt(idx==1,1),p_matt(idx==1,2),'r.','MarkerSize',18);
hold on;
plot(p_matt(idx==2,1),p_matt(idx==2,2),'b.','MarkerSize',18);
plot(p_matt(egfr_label_vec==0,1),p_matt(egfr_label_vec==0,2),'r+','MarkerSize',12);
plot(p_matt(egfr_label_vec==1,1),p_matt(egfr_label_vec==1,2),'b+','MarkerSize',12);
plot(C(:,1),C(:,2),'kx','MarkerSize',15,'LineWidth',3);
legend('Cluster 1', 'Cluster 2', 'Healthy', 'Patient','Centroids','Location','NW');
title('Cluster assigments and centroids');
hold off;


%mean(egfr_label_vec(idx==2)==1)  %idx==2 means that these points belongs to cluster2. 
%egfr_label_vec(idx==2) just get all points that are assigned to cluster2. 
%egfr_label_vec(idx==2)==1 how many points within clusters are patients. 
%mean(mean(egfr_label_vec(idx==2)==1)) just the percentage. 

%mean(egfr_label_vec(idx==2)==0)

%mean(egfr_label_vec(idx==1)==1)
%mean(egfr_label_vec(idx==1)==0)
