close all
clear all
% xy
l=.3;
span=60
h=.43*1
d=.195*1
s=.0555;
bear=.005;
theta=span/3*60*pi+pi/2;
for i=1:101;
    ang(i)= theta;
    rfloor(i)=-h/sin(theta);%work foot path
    rtop(i)=-h/sin(theta)+l;
    rlow(i)=-h/sin(theta)+d;%work bearing center
    rup(i)=-h/sin(theta)+l-d;
    clearlow(i)=rlow(i)+bear;%work clearence path
    clearup( i)=rup( i)-bear;
    psiup=-atan((-h*cos(theta)/(sin(theta)^2))/(rup(i)));%upper contact angle
    psilow=atan((-h*cos(theta)/(sin(theta)^2))/(rlow(i)));%10wer contact angle
    trackup(i)=(rup(i)^.2+bear^2-2*abs(rup(i))*bear*cos(pi-psiup))^.5;%upper track radius
    phiup(i)=-asin((bear)*sin(pi-psiup)/trackup(i))+ang(i);%upper track angle
    tracklow(i)=(rlow(i)^.2+bear^2-2*abs(rlow(i))*bear*cos(pi-psilow))^.5;%lower track radius
    philow(i)=asin((bear)*sin(pi-psilow)/tracklow(i))+ang(i)-pi;%lower track angle
    theta=theta-span/100*pi/180;
end
polar(phiup,trackup);
polar(philow,tracklow);

%%
X=pi;
x=ang(1);
Y=d-1/2;
dY=0;
y=rlow(1);
dy=(h*cos(ang(1 ))/(sin( ang(1 ))^.2));
B=-dy* (x-X)+(y- Y)-( dy-dY)* (x^3- X^3- 3*x^2 *(x-X))/(3 *x^2- 3*X^2);
B=B/(-2*(x-X)*( x^3- X^3-3 *x^2 *(x-X))/(3 *x^2- 3*X^2)+(x^2- X^2- 2*x*(x -X)));
A=( -dY+dy-B *(2*x-2*X))/(3 *x^2-3 *X^2);
C=-3* A *x^2-2*B*x+dy;
D=-A *x^3-B*x^2-C*x+y;
%return paths.
for count=1:90-span/2+ 1;
    retang1(count)=span/360*pi+pi/2+pi/180*( count-l );%return track angle
    retang2( count )=pi -retang1(count);
    retlow( count)=A *retang1(count)^.3+B *retang1(count)^.2+C*retang1(count)+ D;%retum track low
    dret=3 *A*(retang1(count))^.2+ 2*B*(retang1(count))+C;
    rethigh( count)=retlow( count)+1-2* d;%return track high
    rpsi1=atan( dret/retlow(count)); %contact angle return track
    rpsi2=atan( dret/rethigh( count));%contact angle return track
    rtrack1(count)=-(retlow( count)^.2+bear^2-2*bear*abs(retlow( count))*cos(pi-rpsi1))^.5;%return track radius
    rtrack2(count)=(rethigh(count)^.2+bear^2-2*bear*rethigh(count)*cos(pi-rpsi2))^.5;%return track radius
    phi1(count)=-asin(bear*sin(pi-rpsi1)/abs(rtrack1 (count)))+retang1(count);%return track    angle
    phi1op(count)=pi-phi1(count);%return track angle opposite
    phi2( count)=-asin(bear* sin(pi -rpsi2)/rtrack2( count) )+retang1(count);%return track    angle
    phi2op( count)=pi-phi2( count);%return track angle opposite
    %Return foot paths
    retflow( count)=retlow( count )-d;
    retfui( count)=rethigh( count)+d;
    %return inner clearence
    reclear1(count)=retlow( count )+bear;
    reclear2( count)=rethigh( count)-bear;
end
polar(ang,rfloor);%work foot path
polar( ang,rlow);
polar(ang,rup);%work bearing center path
hold on;
polar( ang,rtop);
polar(phiup,trackup);%work track path
polar(philow,tracklow);
polar( ang,clearlow);%work clearence
polar( ang,clearup);
polar(retang1,retlow);%return bearing center path
polar(retang1,rethigh);
polar(retang2,retlow);
polar( retang2,rethigh);
polar(phi1,rtrack1 );%return track path
polar(phi2,rtrack2);
polar(phi1op,rtrack1);
polar(phi2op,rtrack2);
polar(retang1,retflow);%Return foot path
polar(retang1,retfui);
polar(retang2,retflow);
polar(retang2 ,retfui);
polar(retang1,reclear1);%return clearence
polar(retang1,reclear2);
polar(retang2,reclear1);
polar( retang2,reclear2);
hold off;
%d=distance from tip to slider
%l=totallength of leg
%h= hight of axil off ground
%span is angle of gait
%bear bearing radius