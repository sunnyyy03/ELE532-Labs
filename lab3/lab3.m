%% A.1

I = imread("A1.jpg");
imshow(I)

%% A.2

I2 = imread("A2.jpg");
imshow(I2)

%% A.3 (x1)

n = (-10:10); 
D_n = (n==1).*(1/4)+(n==-1).*(1/4)+(n==3).*(1/2)+(n==-3).*(1/2);
subplot(2,1,1);
stem(n,abs(D_n));
title ('X1');
xlabel ('n');
ylabel ('|D_n|');
grid;
subplot(2,1,2);
stem(n,angle(D_n));
xlabel('n');
ylabel('\angle D_n');
grid;

%% A.3 (x2) 

n=(-10:10);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.05;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/2))./(i*pi);
end
end
subplot (2,1,1);
stem(n,abs(D_n));
title ('X2');
xlabel ('n'); ylabel ('|D_n|');
grid;
subplot(2,1,2);
stem(n,angle(D_n));
xlabel('n');
ylabel('\angle D_n');
grid;

%% A.3 (x3)

n=(-10:10);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.025;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/4))./(i*pi);
end
end
subplot (2,1,1);
stem(n,abs(D_n));
title ('X2');
xlabel ('n'); ylabel ('|D_n|');
grid;
subplot(2,1,2);
stem(n,angle(D_n));
xlabel('n');
ylabel('\angle D_n');
grid;

%% A.4 (x1a)

n = (-5:5); 
D_n = (n==1).*(1/4)+(n==-1).*(1/4)+(n==3).*(1/2)+(n==-3).*(1/2);
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x1(t); (-5:5) ');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x1b)

n = (-20:20); 
D_n = (n==1).*(1/4)+(n==-1).*(1/4)+(n==3).*(1/2)+(n==-3).*(1/2);
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x1(t); (-5:5) ');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x1c)

n = (-50:50); 
D_n = (n==1).*(1/4)+(n==-1).*(1/4)+(n==3).*(1/2)+(n==-3).*(1/2);
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x1(t); (-5:5) ');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x1d)

n = (-500:500); 
D_n = (n==1).*(1/4)+(n==-1).*(1/4)+(n==3).*(1/2)+(n==-3).*(1/2);
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x1(t); (-5:5) ');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x2a)

n=(-5:5);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.05;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/2))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x2(t); (-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x2b)

n=(-20:20);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.05;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/2))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x2(t); (-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x2c)

n=(-50:50);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.05;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/2))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x2(t); (-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x2d)

n=(-500:500);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.05;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/2))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x2(t); (-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;
clf;

%% A.4 (x3a)

n=(-5:5);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.25;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/4))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x3(t);(-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x3b)

n=(-20:20);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.25;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/4))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x3(t);(-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x3c)

n=(-50:50);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.25;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/4))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x3(t);(-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A.4 (x3d)

n=(-500:500);
D_n = n;
for i=min(n):1:max(n)
if i==0
D_n((i+abs(min(n))+1))=0.25;
else
D_n((i+abs(min(n))+1))=(sin((i*pi)/4))./(i*pi);
end
end
subplot(2,1,1);
stem(n,abs(D_n), 'k');
xlabel('n');
ylabel('|D_n|');
title('Dn for x3(t);(-5:5)');
grid;
subplot(2,1,2);
stem(n,angle(D_n),'k');
xlabel('n');
ylabel('\angle D_n [rad]');
grid;

%% A5 (x1)

t = -300:1:300;
x = 0;
for n = -5:5
D_n = 0;
if (n==3 || n==-3)
D_n=(1/2);
end
if (n==1||n==-1)
D_n=(1/4);
end
x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t));
end

%% A5 (x2)

D_n=[-50:50]; 
nleftlim = -50; 
nrightlim = 50; 
x = 50+1; 
if n == 0,
D_n(x) = 0.5;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
end
n = [nleftlim:nrightlim]; 
W0 = pi/10; t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end

%% A5 (x3)

D_n=[-500:500]; 
nleftlim = -500; nrightlim = 500; x = 500+1; 
if n == 0,
D_n(x) = 0.5;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
end
n = [nleftlim:nrightlim]; 
W0 = pi/20; t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end

%% A6 (x1a)

clf;
t = -300:1:300;
x = 0;
for n = -5:5
D_n = 0;
if (n==3 || n==-3)
D_n=(1/2);
end
if (n==1||n==-1)
D_n=(1/4);
end 
x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t)); 
end
plot(t,x);
xlabel('t');
ylabel('x1(t)');
title('x1(t) from D_n and n=-5:5');
grid;

%% A6 (x1b)

t = -300:1:300;
x = 0;
for n = -20:20
D_n = 0;
if (n==3 || n==-3)
D_n=(1/2);
end
if (n==1||n==-1)
D_n=(1/4);
end 
x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t)); 
end
plot(t,x);
xlabel('t');
ylabel('x1(t)');
title('x1(t) from D_n and n=-5:5');
grid;

%% A6 (x1c)

t = -300:1:300;
x = 0;
for n = -50:50
D_n = 0;
if (n==3 || n==-3)
D_n=(1/2);
end
if (n==1||n==-1)
D_n=(1/4);
end 
x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t)); 
end
plot(t,x);
xlabel('t');
ylabel('x1(t)');
title('x1(t) from D_n and n=-5:5');
grid;

%% A6 (x1d)

t = -300:1:300;
x = 0;
for n = -500:500
D_n = 0;
if (n==3 || n==-3)
D_n=(1/2);
end
if (n==1||n==-1)
D_n=(1/4);
end 
x=x+D_n.*(exp(sqrt(-1)*n*(pi/10)*t)); 
end
plot(t,x);
xlabel('t');
ylabel('x1(t)');
title('x1(t) from D_n and n=-5:5');
grid;

%% A6 (x2a)

D_n=[-5:5]; nleftlim = -5; 
nrightlim = 5; 
x = 5+1; 
if n == 0,
D_n(x) = 0.05;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
end
n = [nleftlim:nrightlim];
W0 = pi/10;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b'); 
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x2(t) from D_n for -5:5'); 
legend('Signal x_2(t)'); 
grid;

%% A6 (x2b)

D_n=[-20:20]; nleftlim = -20; 
nrightlim = 20; 
x = 20+1; 
if n == 0,
D_n(x) = 0.05;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
end
n = [nleftlim:nrightlim];
W0 = pi/10;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b'); 
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x2(t) from D_n for -5:5'); 
legend('Signal x_2(t)'); 
grid;

%% A6 (x2c)

D_n=[-50:50]; nleftlim = -50; 
nrightlim = 50; 
x = 50+1; 
if n == 0,
D_n(x) = 0.05;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
end
n = [nleftlim:nrightlim];
W0 = pi/10;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b'); 
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x2(t) from D_n for -5:5'); 
legend('Signal x_2(t)'); 
grid;

%% A6 (x2d)

D_n=[-500:500]; nleftlim = -500; 
nrightlim = 500; 
x = 500+1; 
if n == 0,
D_n(x) = 0.05;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.5)./(n.*pi));
end
n = [nleftlim:nrightlim];
W0 = pi/10;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b'); 
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x2(t) from D_n for -5:5'); 
legend('Signal x_2(t)'); 
grid;

%% A6 (x3a) 

D_n=[-5:5];
nleftlim = -5; 
nrightlim = 5;
x = 5+1; 
if n == 0,
D_n(x) = 0.025;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
end
n = [nleftlim:nrightlim]; 
W0 = pi/20;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b');
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x(t) from D_n for -5:5');
legend('Signal x_3(t)'); 
grid; 

%% A6 (x3b) 

D_n=[-20:20];
nleftlim = -20; 
nrightlim = 20;
x = 20+1; 
if n == 0,
D_n(x) = 0.025;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
end
n = [nleftlim:nrightlim]; 
W0 = pi/20;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b');
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x(t) from D_n for -5:5');
legend('Signal x_3(t)'); 
grid; 

%% A6 (x3c) 

D_n=[-50:50];
nleftlim = -50; 
nrightlim = 50;
x = 50+1; 
if n == 0,
D_n(x) = 0.025;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
end
n = [nleftlim:nrightlim]; 
W0 = pi/20;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b');
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x(t) from D_n for -5:5');
legend('Signal x_3(t)'); 
grid; 

%% A6 (x3d) 

D_n=[-500:500];
nleftlim = -500; 
nrightlim = 500;
x = 500+1; 
if n == 0,
D_n(x) = 0.025;
else
D_n(n-nleftlim+1) = (sin(n.*pi*0.25)./(n.*pi));
end
n = [nleftlim:nrightlim]; 
W0 = pi/20;
t = -300:300;
s = 300+1; 
b=length(t);
x = zeros(1,b); 
for t=-300:300
for n=nleftlim:nrightlim
x(t+s) = x(t+s) + real(D_n(n-nleftlim+1).*exp(n.*1i*W0*t));
end
end
t=-300:300;
plot(t,real(x),'b');
ylabel('x(t)');
xlabel('t'); 
title('Regenerated x(t) from D_n for -5:5');
legend('Signal x_3(t)'); 
grid; 

%% B1

% From A.1 and A.2 ;
% wo for x1(t) : pi/10
% wo for x2(t) : pi/10
% wo for x3(t) : pi/20

%% B2

% The difference between the fourier coefficients of x1 and x2 is
% that from n = (-inf:inf), for x2, there are infinite coefficeints and 
% for x1, there will always be only 4 coefficients.

%% B3

% The fourier coefficients are similar except for x3, the sin function
% is dilated by 4pi and for x2 the sine function is dilated by pi/2

%% B4

% For x2, D0 is 1/2 and since x4 is just x2 shifted down by 1/2, D0 for
% x4 is 0

%% B5

% x1 would not change since there are distinct number
% for x2 and x3 the higher the value of n, the more accurate 
% the functions become

%% B6

% for x2 and x3, you would need n to be from (-inf:inf) to reconstruct the
% functions properly

%% B7

% storing the coeffecients would not work as x(t) is arbritary, so we don't
% know how many coeffecients are there
