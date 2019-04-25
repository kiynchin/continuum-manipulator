clear
close all
clc

%first section
k = 1; %curvature
phi = pi/4;
L = 1.5;
s = 0:0.01:L;
r = 1/k;
[T,p] = FK(s,k,phi,r,eye(4));
ind = (length(s) - 1)*4 + 1;
T1_end = T(ind:ind+3,:);

%second section
k2 = 2;
phi2 = 3*pi/4;
L2 = 1;
s2 = 0:0.01:L2;
r2 = 1/k2;
[T2,p2] = FK(s2,k2,phi2,r2,T1_end);
ind2 = (length(s2) - 1)*4 + 1;
T2_end = T2(ind2:ind2+3,:);

%third section
k3 = 3;
phi3 = pi;
L3 = .5;
s3 = 0:0.01:L3;
r3 = 1/k3;
[T3,p3] = FK(s3,k3,phi3,r3,T2_end);

figure()
plot3(p(:,1),p(:,2),p(:,3))
hold on
plot3(p2(:,1),p2(:,2),p2(:,3))
hold on
plot3(p3(:,1),p3(:,2),p3(:,3))
xlabel('x')
ylabel('y')
zlabel('z')
  
