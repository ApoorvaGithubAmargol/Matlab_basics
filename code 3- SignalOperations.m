clc
close all
clear all
t=0:0.02:2
x1=2*sin(2*pi*t*1)
subplot(5,2,1)
stem(t,x1)
title('signal x1')a

x2=1*sin(2*pi*t*1)
subplot(5,2,2)
stem(t,x2)
title('signal x1')

y=x1+x2;
subplot(5,2,3)
stem(t,y)
title('signal addition x1+x2')

y1=x1*5;
subplot(5,2,4)
stem(t,y1)
title('signal multiplication x1 * 5')

q=x1.*x2;
subplot(5,2,5)
stem(t,q)
title('signal multiplication')

y2=1*sin(2*pi*(t/2)*1)
subplot(5,2,6)
stem(t,y2)
title('signal scaling t/2')

y3=1*sin(2*pi*(t*2)*1)
subplot(5,2,7)
stem(t,y2)
title('signal scaling t*2')

y4=1*sin(2*pi*t*1)
subplot(5,2,8)
stem(t,y4)
title('signal scaling t*2')


y5=1*sin(2*pi*t*1)
subplot(5,2,9)
stem(-t+1,y5)
title('signal shifting by 1')

y6=1*sin(2*pi*t*1)
subplot(5,2,10)
stem(-t,y5)
title('signal folding')
