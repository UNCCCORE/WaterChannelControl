function tsc =appendVelocities(tsc)
dims = size(tsc.x.data);

% Define flow velocity vector
vxFlow = tsc.flowSpeedCentimetersPerSecond.data;
vyFlow = zeros(dims);
vzFlow = zeros(dims);

% Define model velocity vector
vx = diff(tsc.x.data)./diff(tsc.x.time);
vy = diff(tsc.y.data)./diff(tsc.y.time);
vz = diff(tsc.z.data)./diff(tsc.z.time);

% Append another data point on the velocities have the right lengths
vx(end+1) = vx(end);
vy(end+1) = vy(end);
vz(end+1) = vz(end);

time = tsc.x.time;

vxFlow = timeseries(vxFlow,time);
vyFlow = timeseries(vyFlow,time);
vzFlow = timeseries(vzFlow,time);

vx = timeseries(vx,time);
vy = timeseries(vy,time);
vz = timeseries(vz,time);

tsc = addts(tsc,vxFlow,'vxFlow');
tsc = addts(tsc,vyFlow,'vyFlow');
tsc = addts(tsc,vzFlow,'vzFlow');

tsc = addts(tsc,vx,'vx');
tsc = addts(tsc,vy,'vy');
tsc = addts(tsc,vz,'vz');

end