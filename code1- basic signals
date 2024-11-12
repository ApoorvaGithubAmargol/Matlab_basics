clc;
close all;
clear all;
n=-5:1:5;
y=[0,0,0,0,0,1,0,0,0,0,0];
subplot(4,2,1)
stem(n,y)
title('unit sample')
x=[0,0,0,0,0,1,1,1,1,1,1]
subplot(4,2,2)
stem(n,x)
title('unit step')
a=0.5;
b1=exp(a*n)
subplot(4,2,4)
stem(n,b1)
title('decay signals')

m=0:0.04:2
e=sin(2*pi*m*2)
subplot(4,2,5)
stem(m,e)
title('sinosoidal signak')

r=randn(1,11)
subplot(4,2,6)
stem(n,r)
title('random signal')
c= -5:0.2:5
d=sinc(c)
subplot(4,2,8)
stem(c,d)
title('sinc signals')
