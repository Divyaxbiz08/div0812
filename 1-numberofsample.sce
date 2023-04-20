clc ;
close ;
// dimesion of the image in inches
m = 6;
n = 4;
N = 100;
N2= N*N ; // Number of dots per inch in both direction
Fs= m* n * N2 ;
disp ( Fs , 'Number of samples requried to preserve the information in the image')
