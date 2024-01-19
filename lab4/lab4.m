%% A.1

N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
y = conv(x,x);
plot(y); grid;
title('A.1'); xlabel('t'); ylabel("z(t)");

%% A.2

Xw = fft(x);
f =  [-(N/2):1:(N/2)-1]*(1/N);
Zw = Xw .* Xw;

%% A.3

subplot(2,1,1); plot(f,fftshift(abs(Zw))); grid;
title('A.3'); xlabel('t'); ylabel('|z(t)|');
subplot(2,1,2); plot(f,fftshift(angle(Zw))); grid;
xlabel('t'); ylabel('\angle z(t)');

%% A.4

zhat = ifft(Zw);
subplot(2,1,1); plot(y); grid;
title('A.4'); xlabel('t'); ylabel("z(t)");
subplot(2,1,2); plot(t,zhat); grid;
xlabel('t'); ylabel("z(t)");

% The results generated using time domain and frequency domain operations 
% are identical to the result computed in A.1. This demonstrates the
% convolution property.

%% A.5 (a)

N = 100; PulseWidth = 5;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N);
Xw = fft(x);
Zw = Xw.*Xw;
subplot(211); plot(f,fftshift(abs(Xw))); grid;
title('A.5 a)'); xlabel('w'); ylabel("|X(w)|");
subplot(212); plot(f,fftshift(angle(Xw))); grid;
xlabel('w'); ylabel('\angle X(w)');

%% A.5 (b)

N = 100; PulseWidth = 25;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N);
Xw = fft(x);
Zw = Xw.*Xw;
subplot(211); plot(f,fftshift(abs(Xw))); grid;
title('A.5 b)'); xlabel('w'); ylabel("|X(w)|");
subplot(212); plot(f,fftshift(angle(Xw))); grid;
xlabel('w'); ylabel('\angle X(w)');

% As the pulse width of the original function increases, the amplitude and
% frequency of the fourier transform increases and as it decreases, it decreases.
% This demonstrates the time-scaling property.

%% A.6 (a)

N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N);
w = x.*(exp(j*(pi/3).*t));
Wt = fft(x);
subplot(211); plot(f,fftshift(abs(Wt))); grid;
title('A.6 a)'); xlabel('t'); ylabel('|w_+(t)|');
subplot(212); plot(f,fftshift(angle(Wt))); grid;
xlabel('t'); ylabel('\angle w_+(t)');

%% A.6 (b)

N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N);
w = x.*(exp(-j*(pi/3).*t));
Wt = fft(x);
subplot(211); plot(f,fftshift(abs(Wt))); grid;
title('A.6 b)'); xlabel('t'); ylabel('|w_-(t)|');
subplot(212); plot(f,fftshift(angle(Wt))); grid;
xlabel('t'); ylabel('\angle w_-(t)');

%% A.6 (c)

N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N);
w = x.*cos((pi/3).*t);
Wt = fft(x);
subplot(211); plot(f,fftshift(abs(Wt))); grid;
title('A.6 c)'); xlabel('t'); ylabel('|w_c(t)|');
subplot(212); plot(f,fftshift(angle(Wt))); grid;
xlabel('t'); ylabel('\angle w_c(t)');

% This is just the original function but with the frequency shifted. This
% demonstrates the frequency shift property. 

%% B (xspeech)

load ('Lab4_Data.mat');
clf;
MagSpect(xspeech);
title('xspeech');

%% B (hLPF2000)

MagSpect(hLPF2000);
title('hLPF2000');

%% B (hLPF2500)

MagSpect(hLPF2500);
title('hLPF2500');

%% B (hChannel)

MagSpect(hChannel);
title('hChannel');

%% B (Block Diagram)

imshow(imread('blockdiagram.jpg'));

%% B (Coder)

c1 = osc(3500, 80000); 
x = c1.*xspeech; 
figure;
MagSpect(x);
title('Modulated Signal');

mx = conv(x, hChannel);
figure;
MagSpect(mx);
title('Modulated Signal w/ hChannel filter');

%% B (Decoder)

c2 = osc(3500, 80810); 
y = c2.*mx; 
figure;
MagSpect(y);
title('Demodulated Signal');

s1 = conv(y, hLPF2000); 
figure;
MagSpect(s1); 
title('Demodulated Signal w/ 2 Khz filter');

s2 = conv(y, hLPF2500);
figure;
MagSpect(s2);
title('Demodulated Signal w/ 2.5 Khz filter');

%% B (sound)

sound(s1, 32000);
pause(5);
sound(s2, 32000);

% Upon hearing, signal 2 appears to be better than signal 1 as it is less
% muffled and more louder.
