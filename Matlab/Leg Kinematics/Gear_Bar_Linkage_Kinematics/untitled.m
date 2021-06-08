clear all
close all

l=1;
limd=45;
for aspan=(limd+ 1):90;
    thet=( l-aspan/180)*pi/2;
    Max=0;
    Maxh=0;
    Maxd=0;
    %annalizes all numbers
    for count = 1:49;
        H=count * .01 ;%differing hieghts
        D=.005;
        while (D<H);%differing leg spacers
            hi=( -H*cos(thet)/(sin(thet)^2) )/(H/sin(thet)- D);
            lo=(-H*cos(thet)/( sin(thet)^2) )/(H/sin(thet)-l+D);
            upper= atan(hi)/pi*180;
            lower= atan(lo )/pi *180;
            if ( (abs(upper) <= 45) && (abs(lower) <= 45) );
                Max=D;
                if (Max>Maxd);
                    Maxd=Max;
                    Maxh=H;
                end
            end
            D=D+.005;
        end
    end
    MD( aspan-limd)= Maxd;
    MH(aspan-limd)=Maxh;
    Ang( aspan-limd)=aspan;
    stroke(aspan-limd)=2*sin(aspan/2*pi/180*Maxh);
    diff( aspan-limd)= Maxh- Maxd;
    perc(aspan-limd)= Maxd/Maxh;
end
% plot(Ang,MH)
hold on
% plot(Ang,MD)
plot(Ang,stroke)
hold off
%annalizes specific set of numbers
% plot( upper, lower )
%d=distance from tip to slider
%l=totallength of leg
%h= hight of axil off ground
%span=angle of gait
l=.3;
span=60
h=.43*1
d=.195*1
s=.0555;
bear=.005;

thet=( l-aspan/180)*pi/2;
high=(-h*cos(thet)/(sin(thet)^.2))/(h/sin(thet)-d);%upper track attack angle
low=( -h*cos(thet)/(sin(thet)^.2))/(h/sin(thet)-1+d);%10wer track attack angle
up= atan(high)/pi *180
down=atan(low)/pi *180
for i=0:89
    xargus=xfin(1+5*i)
    yargus=yfin(1+5*i)
end
