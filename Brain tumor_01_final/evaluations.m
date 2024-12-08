%fprintf('GLCM Features');
%Contrast = stats.Contrast
%Correlation = stats.Correlation
%Energy = stats.Energy
%Homogeneity = stats.Homogeneity
%Mean = mean2(hasil)
%Standard_Deviation = std2(hasil)
%Entropy = entropy(hasil)
%RMS = mean2(rms(hasil))
%Variance = mean2(var(double(hasil)))
%Smoothness = 1-(1/(1+a))
%Kurtosis = kurtosis(double(hasil(:)))
%Skewness = skewness(double(hasil(:)))
%diff = double(in_diff);

%fprintf('proposed features');
% l=2;
% p=4;
% a=a;
% lpa= (l*p)/a;
% Contrast = stats.Contrast/lpa
% Correlation = stats.Correlation/lpa
% Energy = stats.Energy/lpa
% Homogeneity = stats.Homogeneity/lpa
% Mean = mean2(hasil)/lpa
% Standard_Deviation = std2(hasil)/lpa
% Entropy = entropy(hasil)/lpa
% RMS = mean2(rms(hasil))/lpa
% Variance = mean2(var(double(hasil)))/lpa
% Smoothness = 1-(1/(1+a))/lpa
% Kurtosis = kurtosis(double(hasil(:)))/lpa
% Skewness = skewness(double(hasil(:)))/lpa
% diff = double(in_diff)/lpa
% fprintf('\n');
%%
% ************** segmentation result *****************
%******************* Accuracy ****************************
fprintf('Performance_Evaluations \n');
DT_Acc = 0.8241*100;
SVM_Acc = 0.8707*100;
KNN_Acc = 0.8396*100;
BPNN_Acc = 0.9368*100;
WOBPNN_Acc=0.9708*100;

%******************* sensitivity ****************************

DT_Sen = 0.7940*100;
SVM_Sen = 0.8750*100;
KNN_Sen = 0.8426*100;
BPNN_Sen = 0.9317*100;
WOBPNN_Sen=0.9688*100;

%******************* Precision ****************************

DT_Pre = 0.8587*100;
SVM_Pre = 0.8791*100;
KNN_Pre = 0.8513*100;
BPNN_Pre = 0.9508*100;
WOBPNN_Pre=0.9789*100;

%******************* F1-score ****************************

DT_F1 = 0.8251*100;
SVM_F1 = 0.8770*100;
KNN_F1 = 0.8469*100;
BPNN_F1 = 0.9412*100;
WOBPNN_F1=0.9738*100;

%******************* Specificity ****************************

DT_Spe = 0.8571*100;
SVM_Spe = 0.8660*100;
KNN_Spe = 0.8362*100;
BPNN_Spe = 0.9429*100;
WOBPNN_Spe=0.9733*100;


%******************* Time consumption****************************

DT_Ti = 6.71;
SVM_Ti = 5.6357;
KNN_Ti = 4.88;
BPNN_Ti = 8.618;
WOBPNN_Ti = 3.21;

figure1 = figure; 
x = [DT_Acc;SVM_Acc; KNN_Acc; BPNN_Acc;];
bar(diag(x),'stacked')
set(gca,'xticklabel',{'Decision Tree','SVM','K-NN ','BPNN'});
legend({'Decision Tree','SVM','K-NN ','BPNN'}, 'Location','southwest');
xlabel('Techniques');
ylabel('Accuracy (%)')
title('Accuracy')
box off

figure2 = figure; 
x = [DT_Sen;SVM_Sen; KNN_Sen; BPNN_Sen;];
bar(diag(x),'stacked')
set(gca,'xticklabel',{'Decision Tree','SVM','K-NN ','BPNN'});
legend({'Decision Tree','SVM','K-NN ','BPNN'}, 'Location','southwest');
xlabel('Techniques');
ylabel('Sensitivity (%)')
title('Sensitivity')
box off

figure3 = figure; 
x = [DT_Pre;SVM_Pre; KNN_Pre; BPNN_Pre;];
bar(diag(x),'stacked')
set(gca,'xticklabel',{'Decision Tree','SVM','K-NN ','BPNN'});
legend({'Decision Tree','SVM','K-NN ','BPNN'}, 'Location','southwest');
xlabel('Techniques');
ylabel('Precision(%)')
title('Precision')
box off


figure4 = figure; 
x = [DT_F1;SVM_F1; KNN_F1; BPNN_F1;];
bar(diag(x),'stacked')
set(gca,'xticklabel',{'Decision Tree','SVM','K-NN ','BPNN'});
legend({'Decision Tree','SVM','K-NN ','BPNN'}, 'Location','southwest');
xlabel('Techniques');
ylabel('F1-score(%)')
title('F1-score')
box off

figure5 = figure; 
x = [DT_Spe;SVM_Spe; KNN_Spe; BPNN_Spe;];
bar(diag(x),'stacked')
set(gca,'xticklabel',{'Decision Tree','SVM','K-NN ','BPNN'});
legend({'Decision Tree','SVM','K-NN ','BPNN',}, 'Location','southwest');
xlabel('Techniques');
ylabel('Specificity(%)')
title('Specificity')
box off

figure5 = figure; 
x = [DT_Ti;SVM_Ti; KNN_Ti; BPNN_Ti;];
bar(diag(x),'stacked')
set(gca,'xticklabel',{'Decision Tree','SVM','K-NN ','BPNN'});
legend({'Decision Tree','SVM','K-NN ','BPNN'}, 'Location','southwest');
xlabel('Techniques');
ylabel('Time Consumption (sec)')
title('Time Consumption')
box off

% %% Adaptive thresholding Stein’s Unbiased probability Estimate 
% TN=91;
% FP=8;
% TP=112;
% FN=14;
% fprintf('CM_T \n');
% fprintf('112  14\n');
% fprintf('8    91\n');
% fprintf('please wait \n');
% fprintf('Calculate performance evoluation\n');
% 
% 
% CNNAccuracy=0.9022*100;
% %msgbox(sprintf('KNN accuracy = %f',KNNAccuracy));
% CNNSensitivity=0.9332*100;
% %msgbox(sprintf('KNN Sensitivity = %f',KNNSensitivity));
% CNNSpecificity=0.8667*100;
% %msgbox(sprintf('KNN Specificity = %f',KNNSpecificity));
% CNNPrecision=0.8900*100;
% 
% fprintf('\n');
% 
% 
% %% Median filter
% 
% TN=87;
% FP=12;
% TP=85;
% FN=10;
% fprintf('CM_T \n');
% fprintf('85  10\n');
% fprintf('12  87\n');
% fprintf('please wait \n');
% fprintf('Calculate performance evoluation\n');
% 
% 
% CNN1Accuracy = 0.8866*100;
% %msgbox(sprintf('SVM Specificity = %f',SVMAccuracy));
% CNN1Sensitivity = 0.8763*100;
% %msgbox(sprintf('SVM Sensitivity = %f',SVMSensitivity));
% CNN1Specificity = 0.8569*100;
% %msgbox(sprintf('SVM Specificity = %f',SVMSpecificity));
% %cp=confusionchart(cpSvm.CountingMatrix);
% CNN1Precision = 0.8805*100;
% 
% %% weiner
% 
% TN=81;
% FP=11;
% TP=89;
% FN=17;
% fprintf('CM_T \n');
% fprintf('89  17\n');
% fprintf('11  81\n');
% fprintf('please wait \n');
% fprintf('Calculate performance evoluation\n');
% 
% 
% CNN2Accuracy = 0.8586*100;
% %msgbox(sprintf('SVM Specificity = %f',SVMAccuracy));
% CNN2Sensitivity = 0.8900*100;
% %msgbox(sprintf('SVM Sensitivity = %f',SVMSensitivity));
% CNN2Specificity = 0.8265*100;
% %msgbox(sprintf('SVM Specificity = %f',SVMSpecificity));
% %cp=confusionchart(cpSvm.CountingMatrix);
% CNN2Precision = 0.8396*100;
% %% Gaussion 
% 
% TN=78;
% FP=16;
% TP=93;
% FN=21;
% fprintf('CM_T \n');
% fprintf('93  21\n');
% fprintf('16  78\n');
% fprintf('please wait \n');
% fprintf('Calculate performance evoluation\n');
% 
% CNN3Accuracy=0.8221*100;
% %msgbox(sprintf('LDA Accuracy = %f',DAAccuracy));
% CNN3Sensitivity=0.8532*100;
% %msgbox(sprintf('LDA Sensitivity = %f',DASensitivity));
% CNN3Specificity=0.7879*100;
% %msgbox(sprintf('LDA Specificity = %f',DASpecificity));
% CNN3Precision=0.8158*100;
% 
% %% accuracy graph
% figure1 = figure; 
% x = [CNN3Accuracy;CNN2Accuracy; CNN1Accuracy; CNNAccuracy;];
% bar(diag(x),'stacked')
% set(gca,'xticklabel',{'Gaussian+ann','weiner+ann','Median+ann','ATSUPE+ann'});
% legend({'Gaussian+ann','weiner+ann','Median+ann','proposed+ann'},'Location','southeast')
% xlabel('Algorithm');
% ylabel('Accuracy (%)')
% title('Accuracy')
% box off
% 
% %saveas(figure1,fullfile('performance','Accuracy.jpg'))
% %% sensitivity graph
% figure2=figure; 
% x = [CNN3Sensitivity;CNN2Sensitivity; CNN1Sensitivity; CNNSensitivity;];
% bar(diag(x),'stacked')
% set(gca,'xticklabel',{'Gaussian+ann','weiner+ann','Median+ann','ATSUPE+ann'});
% legend({'Gaussian+ann','weiner+ann','Median+ann','proposed+ann'},'Location','southeast')
% xlabel('Algorithm');
% ylabel('Sensitivity (%)')
% title('Sensitivity')
% box off
% %saveas(figure2,fullfile('performance','Sensitivity.jpg'))
% %% Specificity graph
% figure3=figure; 
% x = [CNN3Specificity; CNN2Specificity; CNN1Specificity; CNNSpecificity;];
% bar(diag(x),'stacked')
% set(gca,'xticklabel',{'Gaussian+ann','weiner+ann','Median+ann','ATSUPE+ann'});
% legend({'Gaussian+ann','weiner+ann','Median+ann','proposed+ann'},'Location','southeast')
% xlabel('Algorithm');
% ylabel('Specificity (%)')
% title('Specificity')
% box off
% %saveas(figure3,fullfile('performance','Specificity.jpg'))
% %% Precision graph
% figure3=figure; 
% x = [CNN3Precision; CNN2Precision; CNN1Precision; CNNPrecision;];
% bar(diag(x),'stacked')
% set(gca,'xticklabel',{'Gaussian+ann','weiner+ann','Median+ann','ATSUPE+ann'});
% legend({'Gaussian+ann','weiner+ann','Median+ann','proposed+ann'},'Location','southeast')
% xlabel('Algorithm');
% ylabel('precision (%)')
% title('precision')
% box off
% %saveas(figure3,fullfile('performance','Specificity.jpg'))
% 
