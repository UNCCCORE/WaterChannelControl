function meterReading = calculateFlowMeterReading(desiredSpeedMpS)
% Calibration based on nathans work, using Jerry's flow meter.
meterReading = (desiredSpeedMpS-0.0983742)/0.7943028;

end