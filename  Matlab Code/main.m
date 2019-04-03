
% MFCC coefficients Calculation 

for dig = 0:9
    for enu = 0:2
        if enu <= 1
            inputFile = sprintf ('%s/%d_%s_%d.%s', '/home/nitya/Documents/MATLAB/Speech_Project01/Dataset02', dig, 'nitya', enu, 'wav');
            [audioIn, Fs] = audioread (inputFile);

            coeffs = mfcc (audioIn, Fs);

            A {dig+1,enu+1,:,:} = coeffs;
        
        else
            inputFile = sprintf ('%s/%d_%s_%d.%s', '/home/nitya/Documents/MATLAB/Speech_Project01/Dataset02', dig, 'bollam', enu, 'wav');
            [audioIn, Fs] = audioread (inputFile);

            coeffs = mfcc (audioIn, Fs);

            A {dig+1,enu+1,:,:} = coeffs;
        end
    end
end

% Calculating dtw distance between two similar digit and ploting the dt curves

sim_dist = zeros (10, 1);

for dig = 0:9
%     [sim_dist(dig + 1, 1), ix, iy] = dtw ( cell2mat(A(dig+1, 1))', cell2mat(A(dig+1, 2))'); 
%     figure
%     plot (ix, iy);
%     title ( sprintf ('%s %d','Similarity Curve: Digit', dig ));
%     saveas (gcf, sprintf ('%s %d.%s', 'Similarity_curve_', dig, 'jpeg'));
end

% Calculating dtw distance between different digits and ploting their dtw curves

dis_dist = zeros (10, 1);

for dig = 0:9
%     [dis_dist(dig+1, 1), ix, iy] = dtw ( cell2mat(A(dig+1,1))', cell2mat(A(mod(dig+3, 10) + 1, 1))');
%     figure
%     plot (ix, iy);
%     title ( sprintf ('%s %d %s %d','Dissimilarity Curve: Digit', dig, '&', mod(dig+3, 10)));
%     saveas (gcf, sprintf ('%s %d_%d.%s', 'Dissimilarity_curve_', dig, mod(dig+3, 10), 'jpeg'));
end 

sim_distDP = zeros (10, 1);   

for dig = 0:9
%     [sim_distDP(dig + 1, 1), ix, iy] = dtw ( cell2mat(A(dig+1, 1))', cell2mat(A(dig+1, 3))'); 
%     figure
%     plot (ix, iy);
%     title ( sprintf ('%s %d','Similarity Curve DP: Digit', dig ));
%     saveas (gcf, sprintf ('%s %d.%s', 'Similarity_curve_DP_', dig, 'jpeg'));
end


