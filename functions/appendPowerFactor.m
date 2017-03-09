function tsc = appendPowerFactor(tsc)

vax = tsc.vxFlow.data - tsc.vxFiltered.data;
vay = tsc.vyFlow.data - tsc.vyFiltered.data;
vaz = tsc.vzFlow.data - tsc.vzFiltered.data;

va = (vax.^2+vay.^2+vaz.^2).^(1/2);
vFlow = (tsc.vxFlow.data.^2+tsc.vyFlow.data.^2+tsc.vzFlow.data.^2).^(1/2);

powerFactor = (va./vFlow).^3;

time = tsc.x.time;

powerFactor = timeseries(powerFactor,time);
va          = timeseries(va         ,time);
tsc = addts(tsc,powerFactor,'powerFactor');
tsc = addts(tsc,va,'va');
end