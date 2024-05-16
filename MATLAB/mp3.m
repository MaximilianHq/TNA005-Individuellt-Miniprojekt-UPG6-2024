clc
clear

track = load('bana-211.mat');

%position
x = 150;
y = 0;
% hastighet
dx = track.v0*cosd(180-track.a0);
dy = track.v0*sind(180-track.a0);

ybv = [x;dx;y;dy];
tspan = [0,70];
[t,z] = ode45(@rocket,tspan,ybv);

% raketens hastighet
r_v = sqrt(z(:,2).^2+z(:,4).^2);

figure(1)
plotTrack(track.portx,track.porty,track.ver,track.v0,track.a0); hold on
plot(z(:,1),z(:,3));
hold off

figure(2)
plotTrack(track.portx,track.porty,track.ver,track.v0,track.a0); hold on
plot(z(:,1),z(:,3),'o');
hold off

figure(3)
plot(z(:,1),r_v)
xlabel('Avstånd i x-led (m)')
ylabel('Hastighet (m/s)')
grid on

figure(4)
r_a = zeros(1,tspan(2)+1);
for t = tspan(1):tspan(2)
    r_a(1,t+1) = rad2deg(direct(t));
end
plot(linspace(tspan(1),tspan(2),71),r_a)
grid on
ylabel('Vinkel (grader)')
xlabel('Tid (s)')