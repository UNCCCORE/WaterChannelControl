function bio=dxpcImMultiTarget_singleimage_CV_euler_finBETAbio
bio = [];
bio(1).blkName='Closed_Lopp_Roll_Set_Pt_Generator';
bio(1).sigName='set_Pt';
bio(1).portIdx=0;
bio(1).dim=[1,1];
bio(1).sigWidth=1;
bio(1).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.set_Pt';
bio(1).ndims=2;
bio(1).size=[];

bio(getlenBIO) = bio(1);

bio(2).blkName='MATLAB Function/p1';
bio(2).sigName='theta';
bio(2).portIdx=0;
bio(2).dim=[1,1];
bio(2).sigWidth=1;
bio(2).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.theta';
bio(2).ndims=2;
bio(2).size=[];


bio(3).blkName='MATLAB Function/p2';
bio(3).sigName='psi';
bio(3).portIdx=1;
bio(3).dim=[1,1];
bio(3).sigWidth=1;
bio(3).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.psi';
bio(3).ndims=2;
bio(3).size=[];


bio(4).blkName='MATLAB Function/p3';
bio(4).sigName='phi';
bio(4).portIdx=2;
bio(4).dim=[1,1];
bio(4).sigWidth=1;
bio(4).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.phi';
bio(4).ndims=2;
bio(4).size=[];


bio(5).blkName='MATLAB Function/p4';
bio(5).sigName='x_cm_ground';
bio(5).portIdx=3;
bio(5).dim=[1,1];
bio(5).sigWidth=1;
bio(5).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cm_ground';
bio(5).ndims=2;
bio(5).size=[];


bio(6).blkName='MATLAB Function/p5';
bio(6).sigName='y_cm_ground';
bio(6).portIdx=4;
bio(6).dim=[1,1];
bio(6).sigWidth=1;
bio(6).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.y_cm_ground';
bio(6).ndims=2;
bio(6).size=[];


bio(7).blkName='MATLAB Function/p6';
bio(7).sigName='z_cm_ground';
bio(7).portIdx=5;
bio(7).dim=[1,1];
bio(7).sigWidth=1;
bio(7).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cm_ground';
bio(7).ndims=2;
bio(7).size=[];


bio(8).blkName='Open_Loop_Set_Pt_Generator/p1';
bio(8).sigName='sin1';
bio(8).portIdx=0;
bio(8).dim=[1,1];
bio(8).sigWidth=1;
bio(8).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sin1';
bio(8).ndims=2;
bio(8).size=[];


bio(9).blkName='Open_Loop_Set_Pt_Generator/p2';
bio(9).sigName='sin2';
bio(9).portIdx=1;
bio(9).dim=[1,1];
bio(9).sigWidth=1;
bio(9).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sin2';
bio(9).ndims=2;
bio(9).size=[];


bio(10).blkName='power_factor/p1';
bio(10).sigName='PF';
bio(10).portIdx=0;
bio(10).dim=[1,1];
bio(10).sigWidth=1;
bio(10).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.PF';
bio(10).ndims=2;
bio(10).size=[];


bio(11).blkName='power_factor/p2';
bio(11).sigName='v_apparent';
bio(11).portIdx=1;
bio(11).dim=[1,1];
bio(11).sigWidth=1;
bio(11).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.v_apparent';
bio(11).ndims=2;
bio(11).size=[];


bio(12).blkName='Clock';
bio(12).sigName='';
bio(12).portIdx=0;
bio(12).dim=[1,1];
bio(12).sigWidth=1;
bio(12).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Clock';
bio(12).ndims=2;
bio(12).size=[];


bio(13).blkName='Clock1';
bio(13).sigName='';
bio(13).portIdx=0;
bio(13).dim=[1,1];
bio(13).sigWidth=1;
bio(13).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Clock1';
bio(13).ndims=2;
bio(13).size=[];


bio(14).blkName='CameraConfig';
bio(14).sigName='';
bio(14).portIdx=0;
bio(14).dim=[1,1];
bio(14).sigWidth=1;
bio(14).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.CameraConfig';
bio(14).ndims=2;
bio(14).size=[];


bio(15).blkName='DrivingAmplitude';
bio(15).sigName='';
bio(15).portIdx=0;
bio(15).dim=[1,1];
bio(15).sigWidth=1;
bio(15).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.DrivingAmplitude';
bio(15).ndims=2;
bio(15).size=[];


bio(16).blkName='DrivingFrequency';
bio(16).sigName='';
bio(16).portIdx=0;
bio(16).dim=[1,1];
bio(16).sigWidth=1;
bio(16).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.DrivingFrequency';
bio(16).ndims=2;
bio(16).size=[];


bio(17).blkName='OpenLoopOverride';
bio(17).sigName='';
bio(17).portIdx=0;
bio(17).dim=[1,1];
bio(17).sigWidth=1;
bio(17).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.OpenLoopOverride';
bio(17).ndims=2;
bio(17).size=[];


bio(18).blkName='V_offset';
bio(18).sigName='';
bio(18).portIdx=0;
bio(18).dim=[1,1];
bio(18).sigWidth=1;
bio(18).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.V_offset';
bio(18).ndims=2;
bio(18).size=[];


bio(19).blkName='V_offset1';
bio(19).sigName='';
bio(19).portIdx=0;
bio(19).dim=[1,1];
bio(19).sigWidth=1;
bio(19).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.V_offset1';
bio(19).ndims=2;
bio(19).size=[];


bio(20).blkName='V_offset2';
bio(20).sigName='';
bio(20).portIdx=0;
bio(20).dim=[1,1];
bio(20).sigWidth=1;
bio(20).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.V_offset2';
bio(20).ndims=2;
bio(20).size=[];


bio(21).blkName='aft_port_command';
bio(21).sigName='';
bio(21).portIdx=0;
bio(21).dim=[1,1];
bio(21).sigWidth=1;
bio(21).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.aft_port_command';
bio(21).ndims=2;
bio(21).size=[];


bio(22).blkName='aft_port_m_comm';
bio(22).sigName='';
bio(22).portIdx=0;
bio(22).dim=[1,1];
bio(22).sigWidth=1;
bio(22).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.aft_port_m_comm';
bio(22).ndims=2;
bio(22).size=[];


bio(23).blkName='aft_starboard_command';
bio(23).sigName='';
bio(23).portIdx=0;
bio(23).dim=[1,1];
bio(23).sigWidth=1;
bio(23).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.aft_starboard_command';
bio(23).ndims=2;
bio(23).size=[];


bio(24).blkName='aft_starboard_m_comm';
bio(24).sigName='';
bio(24).portIdx=0;
bio(24).dim=[1,1];
bio(24).sigWidth=1;
bio(24).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.aft_starboard_m_comm';
bio(24).ndims=2;
bio(24).size=[];


bio(25).blkName='phi_amplitude';
bio(25).sigName='';
bio(25).portIdx=0;
bio(25).dim=[1,1];
bio(25).sigWidth=1;
bio(25).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.phi_amplitude';
bio(25).ndims=2;
bio(25).size=[];


bio(26).blkName='phi_control';
bio(26).sigName='';
bio(26).portIdx=0;
bio(26).dim=[1,1];
bio(26).sigWidth=1;
bio(26).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.phi_control';
bio(26).ndims=2;
bio(26).size=[];


bio(27).blkName='phi_des';
bio(27).sigName='';
bio(27).portIdx=0;
bio(27).dim=[1,1];
bio(27).sigWidth=1;
bio(27).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.phi_des';
bio(27).ndims=2;
bio(27).size=[];


bio(28).blkName='phi_frequency';
bio(28).sigName='';
bio(28).portIdx=0;
bio(28).dim=[1,1];
bio(28).sigWidth=1;
bio(28).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.phi_frequency';
bio(28).ndims=2;
bio(28).size=[];


bio(29).blkName='signal_type';
bio(29).sigName='';
bio(29).portIdx=0;
bio(29).dim=[1,1];
bio(29).sigWidth=1;
bio(29).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.signal_type';
bio(29).ndims=2;
bio(29).size=[];


bio(30).blkName='tether_config';
bio(30).sigName='';
bio(30).portIdx=0;
bio(30).dim=[1,1];
bio(30).sigWidth=1;
bio(30).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.tether_config';
bio(30).ndims=2;
bio(30).size=[];


bio(31).blkName='vert_dot_offset';
bio(31).sigName='';
bio(31).portIdx=0;
bio(31).dim=[1,1];
bio(31).sigWidth=1;
bio(31).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.vert_dot_offset';
bio(31).ndims=2;
bio(31).size=[];


bio(32).blkName='water_speed';
bio(32).sigName='';
bio(32).portIdx=0;
bio(32).dim=[1,1];
bio(32).sigWidth=1;
bio(32).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.water_speed';
bio(32).ndims=2;
bio(32).size=[];


bio(33).blkName='z_des';
bio(33).sigName='';
bio(33).portIdx=0;
bio(33).dim=[1,1];
bio(33).sigWidth=1;
bio(33).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_des';
bio(33).ndims=2;
bio(33).size=[];


bio(34).blkName='Fcn';
bio(34).sigName='';
bio(34).portIdx=0;
bio(34).dim=[1,1];
bio(34).sigWidth=1;
bio(34).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Fcn';
bio(34).ndims=2;
bio(34).size=[];


bio(35).blkName='Fcn1';
bio(35).sigName='';
bio(35).portIdx=0;
bio(35).dim=[1,1];
bio(35).sigWidth=1;
bio(35).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Fcn1';
bio(35).ndims=2;
bio(35).size=[];


bio(36).blkName='Fcn2';
bio(36).sigName='';
bio(36).portIdx=0;
bio(36).dim=[1,1];
bio(36).sigWidth=1;
bio(36).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Fcn2';
bio(36).ndims=2;
bio(36).size=[];


bio(37).blkName='Fcn4';
bio(37).sigName='';
bio(37).portIdx=0;
bio(37).dim=[1,1];
bio(37).sigWidth=1;
bio(37).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Fcn4';
bio(37).ndims=2;
bio(37).size=[];


bio(38).blkName='Fcn6';
bio(38).sigName='';
bio(38).portIdx=0;
bio(38).dim=[1,1];
bio(38).sigWidth=1;
bio(38).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Fcn6';
bio(38).ndims=2;
bio(38).size=[];


bio(39).blkName='Fcn7';
bio(39).sigName='';
bio(39).portIdx=0;
bio(39).dim=[1,1];
bio(39).sigWidth=1;
bio(39).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Fcn7';
bio(39).ndims=2;
bio(39).size=[];


bio(40).blkName='u_forward';
bio(40).sigName='';
bio(40).portIdx=0;
bio(40).dim=[1,1];
bio(40).sigWidth=1;
bio(40).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.u_forward';
bio(40).ndims=2;
bio(40).size=[];


bio(41).blkName='u_forward1';
bio(41).sigName='';
bio(41).portIdx=0;
bio(41).dim=[1,1];
bio(41).sigWidth=1;
bio(41).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.u_forward1';
bio(41).ndims=2;
bio(41).size=[];


bio(42).blkName='u_port';
bio(42).sigName='';
bio(42).portIdx=0;
bio(42).dim=[1,1];
bio(42).sigWidth=1;
bio(42).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.u_port';
bio(42).ndims=2;
bio(42).size=[];


bio(43).blkName='u_starboard';
bio(43).sigName='';
bio(43).portIdx=0;
bio(43).dim=[1,1];
bio(43).sigWidth=1;
bio(43).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.u_starboard';
bio(43).ndims=2;
bio(43).size=[];


bio(44).blkName='Gain';
bio(44).sigName='e_pitch';
bio(44).portIdx=0;
bio(44).dim=[1,1];
bio(44).sigWidth=1;
bio(44).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.e_pitch_l';
bio(44).ndims=2;
bio(44).size=[];


bio(45).blkName='Gain1';
bio(45).sigName='e_roll';
bio(45).portIdx=0;
bio(45).dim=[1,1];
bio(45).sigWidth=1;
bio(45).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.e_roll_k';
bio(45).ndims=2;
bio(45).size=[];


bio(46).blkName='Pitch_[Theta]';
bio(46).sigName='';
bio(46).portIdx=0;
bio(46).dim=[1,1];
bio(46).sigWidth=1;
bio(46).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Pitch_Theta';
bio(46).ndims=2;
bio(46).size=[];


bio(47).blkName='Roll_[phi]';
bio(47).sigName='';
bio(47).portIdx=0;
bio(47).dim=[1,1];
bio(47).sigWidth=1;
bio(47).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Roll_phi';
bio(47).ndims=2;
bio(47).size=[];


bio(48).blkName='Yaw_[Psi]';
bio(48).sigName='';
bio(48).portIdx=0;
bio(48).dim=[1,1];
bio(48).sigWidth=1;
bio(48).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Yaw_Psi';
bio(48).ndims=2;
bio(48).size=[];


bio(49).blkName='convert_to_rad';
bio(49).sigName='';
bio(49).portIdx=0;
bio(49).dim=[1,1];
bio(49).sigWidth=1;
bio(49).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.convert_to_rad';
bio(49).ndims=2;
bio(49).size=[];


bio(50).blkName='convert_to_rad_2';
bio(50).sigName='';
bio(50).portIdx=0;
bio(50).dim=[1,1];
bio(50).sigWidth=1;
bio(50).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.convert_to_rad_2';
bio(50).ndims=2;
bio(50).size=[];


bio(51).blkName='Multiport Switch';
bio(51).sigName='';
bio(51).portIdx=0;
bio(51).dim=[1088,2040];
bio(51).sigWidth=2219520;
bio(51).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.MultiportSwitch[0]';
bio(51).ndims=2;
bio(51).size=[];


bio(52).blkName='Multiport Switch1';
bio(52).sigName='';
bio(52).portIdx=0;
bio(52).dim=[1,1];
bio(52).sigWidth=1;
bio(52).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.MultiportSwitch1';
bio(52).ndims=2;
bio(52).size=[];


bio(53).blkName='Multiport Switch2';
bio(53).sigName='';
bio(53).portIdx=0;
bio(53).dim=[1,1];
bio(53).sigWidth=1;
bio(53).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.MultiportSwitch2';
bio(53).ndims=2;
bio(53).size=[];


bio(54).blkName='Multiport Switch4';
bio(54).sigName='';
bio(54).portIdx=0;
bio(54).dim=[1,1];
bio(54).sigWidth=1;
bio(54).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.MultiportSwitch4';
bio(54).ndims=2;
bio(54).size=[];


bio(55).blkName='Product';
bio(55).sigName='';
bio(55).portIdx=0;
bio(55).dim=[1,1];
bio(55).sigWidth=1;
bio(55).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Product';
bio(55).ndims=2;
bio(55).size=[];


bio(56).blkName='Product1';
bio(56).sigName='';
bio(56).portIdx=0;
bio(56).dim=[1,1];
bio(56).sigWidth=1;
bio(56).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Product1';
bio(56).ndims=2;
bio(56).size=[];


bio(57).blkName='Product2';
bio(57).sigName='';
bio(57).portIdx=0;
bio(57).dim=[1,1];
bio(57).sigWidth=1;
bio(57).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Product2';
bio(57).ndims=2;
bio(57).size=[];


bio(58).blkName='Product3';
bio(58).sigName='pitchCmd';
bio(58).portIdx=0;
bio(58).dim=[1,1];
bio(58).sigWidth=1;
bio(58).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.pitchCmd';
bio(58).ndims=2;
bio(58).size=[];


bio(59).blkName='Rate Transition';
bio(59).sigName='';
bio(59).portIdx=0;
bio(59).dim=[1088,2040];
bio(59).sigWidth=2219520;
bio(59).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.RateTransition[0]';
bio(59).ndims=2;
bio(59).size=[];


bio(60).blkName='Rate Limiter';
bio(60).sigName='';
bio(60).portIdx=0;
bio(60).dim=[1,1];
bio(60).sigWidth=1;
bio(60).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.RateLimiter';
bio(60).ndims=2;
bio(60).size=[];


bio(61).blkName='Saturation';
bio(61).sigName='center';
bio(61).portIdx=0;
bio(61).dim=[1,1];
bio(61).sigWidth=1;
bio(61).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.center';
bio(61).ndims=2;
bio(61).size=[];


bio(62).blkName='Saturation1';
bio(62).sigName='port';
bio(62).portIdx=0;
bio(62).dim=[1,1];
bio(62).sigWidth=1;
bio(62).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.port';
bio(62).ndims=2;
bio(62).size=[];


bio(63).blkName='Saturation2';
bio(63).sigName='starboard';
bio(63).portIdx=0;
bio(63).dim=[1,1];
bio(63).sigWidth=1;
bio(63).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.starboard';
bio(63).ndims=2;
bio(63).size=[];


bio(64).blkName='Saturation3';
bio(64).sigName='altCmd';
bio(64).portIdx=0;
bio(64).dim=[1,1];
bio(64).sigWidth=1;
bio(64).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.altCmd';
bio(64).ndims=2;
bio(64).size=[];


bio(65).blkName='Saturation4';
bio(65).sigName='pitchCmd';
bio(65).portIdx=0;
bio(65).dim=[1,1];
bio(65).sigWidth=1;
bio(65).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.pitchCmd_e';
bio(65).ndims=2;
bio(65).size=[];


bio(66).blkName='Saturation5';
bio(66).sigName='rollCmd';
bio(66).portIdx=0;
bio(66).dim=[1,1];
bio(66).sigWidth=1;
bio(66).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.rollCmd';
bio(66).ndims=2;
bio(66).size=[];


bio(67).blkName='Saturation6';
bio(67).sigName='';
bio(67).portIdx=0;
bio(67).dim=[1,1];
bio(67).sigWidth=1;
bio(67).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Saturation6';
bio(67).ndims=2;
bio(67).size=[];


bio(68).blkName='Neon CL ';
bio(68).sigName='';
bio(68).portIdx=0;
bio(68).dim=[1088,2040];
bio(68).sigWidth=2219520;
bio(68).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.NeonCL[0]';
bio(68).ndims=2;
bio(68).size=[];


bio(69).blkName='Neon CL 1';
bio(69).sigName='';
bio(69).portIdx=0;
bio(69).dim=[1088,2040];
bio(69).sigWidth=2219520;
bio(69).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.NeonCL1[0]';
bio(69).ndims=2;
bio(69).size=[];


bio(70).blkName='Neon CL 2';
bio(70).sigName='';
bio(70).portIdx=0;
bio(70).dim=[1088,2040];
bio(70).sigWidth=2219520;
bio(70).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.NeonCL2[0]';
bio(70).ndims=2;
bio(70).size=[];


bio(71).blkName='Receive/p1';
bio(71).sigName='';
bio(71).portIdx=0;
bio(71).dim=[1,1];
bio(71).sigWidth=1;
bio(71).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Receive_o1';
bio(71).ndims=2;
bio(71).size=[];


bio(72).blkName='Receive/p2';
bio(72).sigName='';
bio(72).portIdx=1;
bio(72).dim=[1,1];
bio(72).sigWidth=1;
bio(72).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Receive_o2';
bio(72).ndims=2;
bio(72).size=[];


bio(73).blkName='Add';
bio(73).sigName='';
bio(73).portIdx=0;
bio(73).dim=[1,1];
bio(73).sigWidth=1;
bio(73).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add_a';
bio(73).ndims=2;
bio(73).size=[];


bio(74).blkName='Add18';
bio(74).sigName='e_height';
bio(74).portIdx=0;
bio(74).dim=[1,1];
bio(74).sigWidth=1;
bio(74).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.e_height';
bio(74).ndims=2;
bio(74).size=[];


bio(75).blkName='Add19';
bio(75).sigName='e_roll';
bio(75).portIdx=0;
bio(75).dim=[1,1];
bio(75).sigWidth=1;
bio(75).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.e_roll';
bio(75).ndims=2;
bio(75).size=[];


bio(76).blkName='Add20';
bio(76).sigName='e_pitch';
bio(76).portIdx=0;
bio(76).dim=[1,1];
bio(76).sigWidth=1;
bio(76).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.e_pitch';
bio(76).ndims=2;
bio(76).size=[];


bio(77).blkName='Add8';
bio(77).sigName='';
bio(77).portIdx=0;
bio(77).dim=[1,1];
bio(77).sigWidth=1;
bio(77).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add8';
bio(77).ndims=2;
bio(77).size=[];


bio(78).blkName='Add9';
bio(78).sigName='';
bio(78).portIdx=0;
bio(78).dim=[1,1];
bio(78).sigWidth=1;
bio(78).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add9';
bio(78).ndims=2;
bio(78).size=[];


bio(79).blkName='Transfer Fcn';
bio(79).sigName='';
bio(79).portIdx=0;
bio(79).dim=[1,1];
bio(79).sigWidth=1;
bio(79).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.TransferFcn';
bio(79).ndims=2;
bio(79).size=[];


bio(80).blkName='Transfer Fcn1';
bio(80).sigName='';
bio(80).portIdx=0;
bio(80).dim=[1,1];
bio(80).sigWidth=1;
bio(80).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.TransferFcn1';
bio(80).ndims=2;
bio(80).size=[];


bio(81).blkName='Transfer Fcn2';
bio(81).sigName='';
bio(81).portIdx=0;
bio(81).dim=[1,1];
bio(81).sigWidth=1;
bio(81).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.TransferFcn2';
bio(81).ndims=2;
bio(81).size=[];


bio(82).blkName='Atomic Subsystem/Jpeg Compression/p1';
bio(82).sigName='';
bio(82).portIdx=0;
bio(82).dim=[2219520,1];
bio(82).sigWidth=2219520;
bio(82).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.JpegCompression_o1[0]';
bio(82).ndims=2;
bio(82).size=[];


bio(83).blkName='Atomic Subsystem/Jpeg Compression/p2';
bio(83).sigName='';
bio(83).portIdx=1;
bio(83).dim=[1,1];
bio(83).sigWidth=1;
bio(83).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.JpegCompression_o2';
bio(83).ndims=2;
bio(83).size=[];


bio(84).blkName='CamParameters/view_angle_horiz';
bio(84).sigName='';
bio(84).portIdx=0;
bio(84).dim=[1,1];
bio(84).sigWidth=1;
bio(84).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.view_angle_horiz';
bio(84).ndims=2;
bio(84).size=[];


bio(85).blkName='CamParameters/view_angle_vert';
bio(85).sigName='';
bio(85).portIdx=0;
bio(85).dim=[1,1];
bio(85).sigWidth=1;
bio(85).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.view_angle_vert';
bio(85).ndims=2;
bio(85).size=[];


bio(86).blkName='CamParameters/x_cam_1';
bio(86).sigName='';
bio(86).portIdx=0;
bio(86).dim=[1,1];
bio(86).sigWidth=1;
bio(86).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cam_1';
bio(86).ndims=2;
bio(86).size=[];


bio(87).blkName='CamParameters/x_cam_2';
bio(87).sigName='';
bio(87).portIdx=0;
bio(87).dim=[1,1];
bio(87).sigWidth=1;
bio(87).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cam_2';
bio(87).ndims=2;
bio(87).size=[];


bio(88).blkName='CamParameters/x_cam_3';
bio(88).sigName='';
bio(88).portIdx=0;
bio(88).dim=[1,1];
bio(88).sigWidth=1;
bio(88).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cam_3';
bio(88).ndims=2;
bio(88).size=[];


bio(89).blkName='CamParameters/y_cam_1';
bio(89).sigName='';
bio(89).portIdx=0;
bio(89).dim=[1,1];
bio(89).sigWidth=1;
bio(89).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.y_cam_1';
bio(89).ndims=2;
bio(89).size=[];


bio(90).blkName='CamParameters/y_cam_2';
bio(90).sigName='';
bio(90).portIdx=0;
bio(90).dim=[1,1];
bio(90).sigWidth=1;
bio(90).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.y_cam_2';
bio(90).ndims=2;
bio(90).size=[];


bio(91).blkName='CamParameters/y_cam_3';
bio(91).sigName='';
bio(91).portIdx=0;
bio(91).dim=[1,1];
bio(91).sigWidth=1;
bio(91).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.y_cam_3';
bio(91).ndims=2;
bio(91).size=[];


bio(92).blkName='CamParameters/z_cam_1';
bio(92).sigName='';
bio(92).portIdx=0;
bio(92).dim=[1,1];
bio(92).sigWidth=1;
bio(92).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cam_1';
bio(92).ndims=2;
bio(92).size=[];


bio(93).blkName='CamParameters/z_cam_2';
bio(93).sigName='';
bio(93).portIdx=0;
bio(93).dim=[1,1];
bio(93).sigWidth=1;
bio(93).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cam_2';
bio(93).ndims=2;
bio(93).size=[];


bio(94).blkName='CamParameters/z_cam_3';
bio(94).sigName='';
bio(94).portIdx=0;
bio(94).dim=[1,1];
bio(94).sigWidth=1;
bio(94).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cam_3';
bio(94).ndims=2;
bio(94).size=[];


bio(95).blkName='alt_controlFCN/Derivative';
bio(95).sigName='';
bio(95).portIdx=0;
bio(95).dim=[1,1];
bio(95).sigWidth=1;
bio(95).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Derivative_e';
bio(95).ndims=2;
bio(95).size=[];


bio(96).blkName='alt_controlFCN/kd_alt';
bio(96).sigName='';
bio(96).portIdx=0;
bio(96).dim=[1,1];
bio(96).sigWidth=1;
bio(96).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.kd_alt';
bio(96).ndims=2;
bio(96).size=[];


bio(97).blkName='alt_controlFCN/kp_alt';
bio(97).sigName='';
bio(97).portIdx=0;
bio(97).dim=[1,1];
bio(97).sigWidth=1;
bio(97).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.kp_alt';
bio(97).ndims=2;
bio(97).size=[];


bio(98).blkName='alt_controlFCN/tau_alt';
bio(98).sigName='';
bio(98).portIdx=0;
bio(98).dim=[1,1];
bio(98).sigWidth=1;
bio(98).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.tau_alt';
bio(98).ndims=2;
bio(98).size=[];


bio(99).blkName='alt_controlFCN/Integrator';
bio(99).sigName='';
bio(99).portIdx=0;
bio(99).dim=[1,1];
bio(99).sigWidth=1;
bio(99).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Integrator_g';
bio(99).ndims=2;
bio(99).size=[];


bio(100).blkName='alt_controlFCN/Add';
bio(100).sigName='';
bio(100).portIdx=0;
bio(100).dim=[1,1];
bio(100).sigWidth=1;
bio(100).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add_o';
bio(100).ndims=2;
bio(100).size=[];


bio(101).blkName='alt_controlFCN/Add1';
bio(101).sigName='';
bio(101).portIdx=0;
bio(101).dim=[1,1];
bio(101).sigWidth=1;
bio(101).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add1';
bio(101).ndims=2;
bio(101).size=[];


bio(102).blkName='phi_controlFCN/Derivative';
bio(102).sigName='';
bio(102).portIdx=0;
bio(102).dim=[1,1];
bio(102).sigWidth=1;
bio(102).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Derivative';
bio(102).ndims=2;
bio(102).size=[];


bio(103).blkName='phi_controlFCN/kd_phi';
bio(103).sigName='';
bio(103).portIdx=0;
bio(103).dim=[1,1];
bio(103).sigWidth=1;
bio(103).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.kd_phi';
bio(103).ndims=2;
bio(103).size=[];


bio(104).blkName='phi_controlFCN/kp_phi';
bio(104).sigName='';
bio(104).portIdx=0;
bio(104).dim=[1,1];
bio(104).sigWidth=1;
bio(104).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.kp_phi';
bio(104).ndims=2;
bio(104).size=[];


bio(105).blkName='phi_controlFCN/tau_phi';
bio(105).sigName='';
bio(105).portIdx=0;
bio(105).dim=[1,1];
bio(105).sigWidth=1;
bio(105).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.tau_phi';
bio(105).ndims=2;
bio(105).size=[];


bio(106).blkName='phi_controlFCN/Integrator';
bio(106).sigName='';
bio(106).portIdx=0;
bio(106).dim=[1,1];
bio(106).sigWidth=1;
bio(106).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Integrator';
bio(106).ndims=2;
bio(106).size=[];


bio(107).blkName='phi_controlFCN/Add';
bio(107).sigName='';
bio(107).portIdx=0;
bio(107).dim=[1,1];
bio(107).sigWidth=1;
bio(107).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add';
bio(107).ndims=2;
bio(107).size=[];


bio(108).blkName='phi_controlFCN/Add1';
bio(108).sigName='';
bio(108).portIdx=0;
bio(108).dim=[1,1];
bio(108).sigWidth=1;
bio(108).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add1_e';
bio(108).ndims=2;
bio(108).size=[];


bio(109).blkName='pitch_cam_horiz_dots/Dot_detector_pitch/p1';
bio(109).sigName='uOut';
bio(109).portIdx=0;
bio(109).dim=[1088,2040];
bio(109).sigWidth=2219520;
bio(109).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_d.uOut[0]';
bio(109).ndims=2;
bio(109).size=[];


bio(110).blkName='pitch_cam_horiz_dots/Dot_detector_pitch/p2';
bio(110).sigName='r1Img';
bio(110).portIdx=1;
bio(110).dim=[1,2];
bio(110).sigWidth=2;
bio(110).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_d.r1Img[0]';
bio(110).ndims=2;
bio(110).size=[];


bio(111).blkName='pitch_cam_horiz_dots/Dot_detector_pitch/p3';
bio(111).sigName='r2Img';
bio(111).portIdx=2;
bio(111).dim=[1,2];
bio(111).sigWidth=2;
bio(111).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_d.r2Img[0]';
bio(111).ndims=2;
bio(111).size=[];


bio(112).blkName='pitch_cam_horiz_dots/Dot_detector_pitch/p4';
bio(112).sigName='rCentroidImg';
bio(112).portIdx=3;
bio(112).dim=[1,2];
bio(112).sigWidth=2;
bio(112).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_d.rCentroidImg[0]';
bio(112).ndims=2;
bio(112).size=[];


bio(113).blkName='pitch_cam_horiz_dots/convertAbsolutePositionToCM/p1';
bio(113).sigName='x_cm';
bio(113).portIdx=0;
bio(113).dim=[1,1];
bio(113).sigWidth=1;
bio(113).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cm_d';
bio(113).ndims=2;
bio(113).size=[];


bio(114).blkName='pitch_cam_horiz_dots/convertAbsolutePositionToCM/p2';
bio(114).sigName='z_cm';
bio(114).portIdx=1;
bio(114).dim=[1,1];
bio(114).sigWidth=1;
bio(114).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cm_a';
bio(114).ndims=2;
bio(114).size=[];


bio(115).blkName='pitch_cam_horiz_dots/convertPixelsToCM/p1';
bio(115).sigName='delta_x_cm';
bio(115).portIdx=0;
bio(115).dim=[1,1];
bio(115).sigWidth=1;
bio(115).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_x_cm_n';
bio(115).ndims=2;
bio(115).size=[];


bio(116).blkName='pitch_cam_horiz_dots/convertPixelsToCM/p2';
bio(116).sigName='delta_z_cm';
bio(116).portIdx=1;
bio(116).dim=[1,1];
bio(116).sigWidth=1;
bio(116).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_z_cm_o';
bio(116).ndims=2;
bio(116).size=[];


bio(117).blkName='pitch_cam_horiz_dots/distanceToCenterOfMass/p1';
bio(117).sigName='d_cam_com';
bio(117).portIdx=0;
bio(117).dim=[1,1];
bio(117).sigWidth=1;
bio(117).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.d_cam_com';
bio(117).ndims=2;
bio(117).size=[];


bio(118).blkName='pitch_cam_horiz_dots/distanceToCenterOfMass/p2';
bio(118).sigName='x_dist';
bio(118).portIdx=1;
bio(118).dim=[1,1];
bio(118).sigWidth=1;
bio(118).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_dist';
bio(118).ndims=2;
bio(118).size=[];


bio(119).blkName='pitch_cam_horiz_dots/distanceToCenterOfMass/p3';
bio(119).sigName='y_dist';
bio(119).portIdx=2;
bio(119).dim=[1,1];
bio(119).sigWidth=1;
bio(119).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.y_dist';
bio(119).ndims=2;
bio(119).size=[];


bio(120).blkName='pitch_cam_horiz_dots/distanceToCenterOfMass/p4';
bio(120).sigName='z_dist';
bio(120).portIdx=3;
bio(120).dim=[1,1];
bio(120).sigWidth=1;
bio(120).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_dist';
bio(120).ndims=2;
bio(120).size=[];


bio(121).blkName='pitch_cam_horiz_dots/Transfer Fcn';
bio(121).sigName='d_cam1a';
bio(121).portIdx=0;
bio(121).dim=[1,1];
bio(121).sigWidth=1;
bio(121).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.d_cam1a';
bio(121).ndims=2;
bio(121).size=[];


bio(122).blkName='pitch_cam_horiz_dots/Delay';
bio(122).sigName='';
bio(122).portIdx=0;
bio(122).dim=[1,1];
bio(122).sigWidth=1;
bio(122).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay';
bio(122).ndims=2;
bio(122).size=[];


bio(123).blkName='pitch_cam_horiz_dots/Delay1';
bio(123).sigName='';
bio(123).portIdx=0;
bio(123).dim=[1,1];
bio(123).sigWidth=1;
bio(123).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay1';
bio(123).ndims=2;
bio(123).size=[];


bio(124).blkName='pitch_cam_vertical_dots/Dot_detector_pitch/p1';
bio(124).sigName='uOut';
bio(124).portIdx=0;
bio(124).dim=[1088,2040];
bio(124).sigWidth=2219520;
bio(124).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_n.uOut[0]';
bio(124).ndims=2;
bio(124).size=[];


bio(125).blkName='pitch_cam_vertical_dots/Dot_detector_pitch/p2';
bio(125).sigName='r1Img';
bio(125).portIdx=1;
bio(125).dim=[1,2];
bio(125).sigWidth=2;
bio(125).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_n.r1Img[0]';
bio(125).ndims=2;
bio(125).size=[];


bio(126).blkName='pitch_cam_vertical_dots/Dot_detector_pitch/p3';
bio(126).sigName='r2Img';
bio(126).portIdx=2;
bio(126).dim=[1,2];
bio(126).sigWidth=2;
bio(126).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_n.r2Img[0]';
bio(126).ndims=2;
bio(126).size=[];


bio(127).blkName='pitch_cam_vertical_dots/Dot_detector_pitch/p4';
bio(127).sigName='rCentroidImg';
bio(127).portIdx=3;
bio(127).dim=[1,2];
bio(127).sigWidth=2;
bio(127).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_n.rCentroidImg[0]';
bio(127).ndims=2;
bio(127).size=[];


bio(128).blkName='pitch_cam_vertical_dots/MATLAB Function/p1';
bio(128).sigName='d_cam_com';
bio(128).portIdx=0;
bio(128).dim=[1,1];
bio(128).sigWidth=1;
bio(128).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_k.d_cam_com';
bio(128).ndims=2;
bio(128).size=[];


bio(129).blkName='pitch_cam_vertical_dots/MATLAB Function/p2';
bio(129).sigName='x_dist';
bio(129).portIdx=1;
bio(129).dim=[1,1];
bio(129).sigWidth=1;
bio(129).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_k.x_dist';
bio(129).ndims=2;
bio(129).size=[];


bio(130).blkName='pitch_cam_vertical_dots/MATLAB Function/p3';
bio(130).sigName='y_dist';
bio(130).portIdx=2;
bio(130).dim=[1,1];
bio(130).sigWidth=1;
bio(130).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_k.y_dist';
bio(130).ndims=2;
bio(130).size=[];


bio(131).blkName='pitch_cam_vertical_dots/MATLAB Function/p4';
bio(131).sigName='z_dist';
bio(131).portIdx=3;
bio(131).dim=[1,1];
bio(131).sigWidth=1;
bio(131).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_k.z_dist';
bio(131).ndims=2;
bio(131).size=[];


bio(132).blkName='pitch_cam_vertical_dots/convertAbsolutePositionToCM/p1';
bio(132).sigName='x_cm';
bio(132).portIdx=0;
bio(132).dim=[1,1];
bio(132).sigWidth=1;
bio(132).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cm_ax';
bio(132).ndims=2;
bio(132).size=[];


bio(133).blkName='pitch_cam_vertical_dots/convertAbsolutePositionToCM/p2';
bio(133).sigName='z_cm';
bio(133).portIdx=1;
bio(133).dim=[1,1];
bio(133).sigWidth=1;
bio(133).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cm_i';
bio(133).ndims=2;
bio(133).size=[];


bio(134).blkName='pitch_cam_vertical_dots/convertPixelsToCM/p1';
bio(134).sigName='delta_x_cm';
bio(134).portIdx=0;
bio(134).dim=[1,1];
bio(134).sigWidth=1;
bio(134).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_x_cm_e';
bio(134).ndims=2;
bio(134).size=[];


bio(135).blkName='pitch_cam_vertical_dots/convertPixelsToCM/p2';
bio(135).sigName='delta_z_cm';
bio(135).portIdx=1;
bio(135).dim=[1,1];
bio(135).sigWidth=1;
bio(135).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_z_cm_n';
bio(135).ndims=2;
bio(135).size=[];


bio(136).blkName='pitch_cam_vertical_dots/Transfer Fcn';
bio(136).sigName='d_cam1a';
bio(136).portIdx=0;
bio(136).dim=[1,1];
bio(136).sigWidth=1;
bio(136).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.d_cam1a_i';
bio(136).ndims=2;
bio(136).size=[];


bio(137).blkName='pitch_cam_vertical_dots/Delay10';
bio(137).sigName='';
bio(137).portIdx=0;
bio(137).dim=[1,1];
bio(137).sigWidth=1;
bio(137).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay10';
bio(137).ndims=2;
bio(137).size=[];


bio(138).blkName='pitch_cam_vertical_dots/Delay11';
bio(138).sigName='';
bio(138).portIdx=0;
bio(138).dim=[1,1];
bio(138).sigWidth=1;
bio(138).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay11';
bio(138).ndims=2;
bio(138).size=[];


bio(139).blkName='roll_slant_cam/Dot_detector_pitch/p1';
bio(139).sigName='uOut';
bio(139).portIdx=0;
bio(139).dim=[1088,2040];
bio(139).sigWidth=2219520;
bio(139).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_dd.uOut[0]';
bio(139).ndims=2;
bio(139).size=[];


bio(140).blkName='roll_slant_cam/Dot_detector_pitch/p2';
bio(140).sigName='r1Img';
bio(140).portIdx=1;
bio(140).dim=[1,2];
bio(140).sigWidth=2;
bio(140).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_dd.r1Img[0]';
bio(140).ndims=2;
bio(140).size=[];


bio(141).blkName='roll_slant_cam/Dot_detector_pitch/p3';
bio(141).sigName='r2Img';
bio(141).portIdx=2;
bio(141).dim=[1,2];
bio(141).sigWidth=2;
bio(141).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_dd.r2Img[0]';
bio(141).ndims=2;
bio(141).size=[];


bio(142).blkName='roll_slant_cam/Dot_detector_pitch/p4';
bio(142).sigName='rCentroidImg';
bio(142).portIdx=3;
bio(142).dim=[1,2];
bio(142).sigWidth=2;
bio(142).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch_dd.rCentroidImg[0]';
bio(142).ndims=2;
bio(142).size=[];


bio(143).blkName='roll_slant_cam/MATLAB Function/p1';
bio(143).sigName='d_cam_com';
bio(143).portIdx=0;
bio(143).dim=[1,1];
bio(143).sigWidth=1;
bio(143).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_j.d_cam_com';
bio(143).ndims=2;
bio(143).size=[];


bio(144).blkName='roll_slant_cam/MATLAB Function/p2';
bio(144).sigName='x_dist';
bio(144).portIdx=1;
bio(144).dim=[1,1];
bio(144).sigWidth=1;
bio(144).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_j.x_dist';
bio(144).ndims=2;
bio(144).size=[];


bio(145).blkName='roll_slant_cam/MATLAB Function/p3';
bio(145).sigName='y_dist';
bio(145).portIdx=2;
bio(145).dim=[1,1];
bio(145).sigWidth=1;
bio(145).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_j.y_dist';
bio(145).ndims=2;
bio(145).size=[];


bio(146).blkName='roll_slant_cam/MATLAB Function/p4';
bio(146).sigName='z_dist';
bio(146).portIdx=3;
bio(146).dim=[1,1];
bio(146).sigWidth=1;
bio(146).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_j.z_dist';
bio(146).ndims=2;
bio(146).size=[];


bio(147).blkName='roll_slant_cam/convertAbsolutePositionToCM/p1';
bio(147).sigName='x_cm';
bio(147).portIdx=0;
bio(147).dim=[1,1];
bio(147).sigWidth=1;
bio(147).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cm_a';
bio(147).ndims=2;
bio(147).size=[];


bio(148).blkName='roll_slant_cam/convertAbsolutePositionToCM/p2';
bio(148).sigName='z_cm';
bio(148).portIdx=1;
bio(148).dim=[1,1];
bio(148).sigWidth=1;
bio(148).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.z_cm';
bio(148).ndims=2;
bio(148).size=[];


bio(149).blkName='roll_slant_cam/convertPixelsToCM/p1';
bio(149).sigName='delta_x_cm';
bio(149).portIdx=0;
bio(149).dim=[1,1];
bio(149).sigWidth=1;
bio(149).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_x_cm_i';
bio(149).ndims=2;
bio(149).size=[];


bio(150).blkName='roll_slant_cam/convertPixelsToCM/p2';
bio(150).sigName='delta_z_cm';
bio(150).portIdx=1;
bio(150).dim=[1,1];
bio(150).sigWidth=1;
bio(150).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_z_cm';
bio(150).ndims=2;
bio(150).size=[];


bio(151).blkName='roll_slant_cam/Transfer Fcn';
bio(151).sigName='d_cam2';
bio(151).portIdx=0;
bio(151).dim=[1,1];
bio(151).sigWidth=1;
bio(151).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.d_cam2';
bio(151).ndims=2;
bio(151).size=[];


bio(152).blkName='roll_slant_cam/Delay6';
bio(152).sigName='';
bio(152).portIdx=0;
bio(152).dim=[1,1];
bio(152).sigWidth=1;
bio(152).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay6';
bio(152).ndims=2;
bio(152).size=[];


bio(153).blkName='roll_slant_cam/Delay7';
bio(153).sigName='';
bio(153).portIdx=0;
bio(153).dim=[1,1];
bio(153).sigWidth=1;
bio(153).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay7';
bio(153).ndims=2;
bio(153).size=[];


bio(154).blkName='theta_controlFCN/Derivative';
bio(154).sigName='';
bio(154).portIdx=0;
bio(154).dim=[1,1];
bio(154).sigWidth=1;
bio(154).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Derivative_l';
bio(154).ndims=2;
bio(154).size=[];


bio(155).blkName='theta_controlFCN/kd_theta';
bio(155).sigName='';
bio(155).portIdx=0;
bio(155).dim=[1,1];
bio(155).sigWidth=1;
bio(155).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.kd_theta';
bio(155).ndims=2;
bio(155).size=[];


bio(156).blkName='theta_controlFCN/kp_theta';
bio(156).sigName='';
bio(156).portIdx=0;
bio(156).dim=[1,1];
bio(156).sigWidth=1;
bio(156).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.kp_theta';
bio(156).ndims=2;
bio(156).size=[];


bio(157).blkName='theta_controlFCN/tau_theta';
bio(157).sigName='';
bio(157).portIdx=0;
bio(157).dim=[1,1];
bio(157).sigWidth=1;
bio(157).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.tau_theta';
bio(157).ndims=2;
bio(157).size=[];


bio(158).blkName='theta_controlFCN/Integrator';
bio(158).sigName='';
bio(158).portIdx=0;
bio(158).dim=[1,1];
bio(158).sigWidth=1;
bio(158).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Integrator_o';
bio(158).ndims=2;
bio(158).size=[];


bio(159).blkName='theta_controlFCN/Add';
bio(159).sigName='';
bio(159).portIdx=0;
bio(159).dim=[1,1];
bio(159).sigWidth=1;
bio(159).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add_m';
bio(159).ndims=2;
bio(159).size=[];


bio(160).blkName='theta_controlFCN/Add1';
bio(160).sigName='';
bio(160).portIdx=0;
bio(160).dim=[1,1];
bio(160).sigWidth=1;
bio(160).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Add1_g';
bio(160).ndims=2;
bio(160).size=[];


bio(161).blkName='yaw_cam/Dot_detector_pitch/p1';
bio(161).sigName='uOut';
bio(161).portIdx=0;
bio(161).dim=[1088,2040];
bio(161).sigWidth=2219520;
bio(161).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch.uOut[0]';
bio(161).ndims=2;
bio(161).size=[];


bio(162).blkName='yaw_cam/Dot_detector_pitch/p2';
bio(162).sigName='r1Img';
bio(162).portIdx=1;
bio(162).dim=[1,2];
bio(162).sigWidth=2;
bio(162).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch.r1Img[0]';
bio(162).ndims=2;
bio(162).size=[];


bio(163).blkName='yaw_cam/Dot_detector_pitch/p3';
bio(163).sigName='r2Img';
bio(163).portIdx=2;
bio(163).dim=[1,2];
bio(163).sigWidth=2;
bio(163).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch.r2Img[0]';
bio(163).ndims=2;
bio(163).size=[];


bio(164).blkName='yaw_cam/Dot_detector_pitch/p4';
bio(164).sigName='rCentroidImg';
bio(164).portIdx=3;
bio(164).dim=[1,2];
bio(164).sigWidth=2;
bio(164).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_Dot_detector_pitch.rCentroidImg[0]';
bio(164).ndims=2;
bio(164).size=[];


bio(165).blkName='yaw_cam/MATLAB Function/p1';
bio(165).sigName='d_cam_com';
bio(165).portIdx=0;
bio(165).dim=[1,1];
bio(165).sigWidth=1;
bio(165).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_e.d_cam_com';
bio(165).ndims=2;
bio(165).size=[];


bio(166).blkName='yaw_cam/MATLAB Function/p2';
bio(166).sigName='x_dist';
bio(166).portIdx=1;
bio(166).dim=[1,1];
bio(166).sigWidth=1;
bio(166).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_e.x_dist';
bio(166).ndims=2;
bio(166).size=[];


bio(167).blkName='yaw_cam/MATLAB Function/p3';
bio(167).sigName='y_dist';
bio(167).portIdx=2;
bio(167).dim=[1,1];
bio(167).sigWidth=1;
bio(167).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_e.y_dist';
bio(167).ndims=2;
bio(167).size=[];


bio(168).blkName='yaw_cam/MATLAB Function/p4';
bio(168).sigName='z_dist';
bio(168).portIdx=3;
bio(168).dim=[1,1];
bio(168).sigWidth=1;
bio(168).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.sf_MATLABFunction_e.z_dist';
bio(168).ndims=2;
bio(168).size=[];


bio(169).blkName='yaw_cam/convertAbsolutePositionToCM/p1';
bio(169).sigName='x_cm';
bio(169).portIdx=0;
bio(169).dim=[1,1];
bio(169).sigWidth=1;
bio(169).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.x_cm';
bio(169).ndims=2;
bio(169).size=[];


bio(170).blkName='yaw_cam/convertAbsolutePositionToCM/p2';
bio(170).sigName='y_cm';
bio(170).portIdx=1;
bio(170).dim=[1,1];
bio(170).sigWidth=1;
bio(170).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.y_cm';
bio(170).ndims=2;
bio(170).size=[];


bio(171).blkName='yaw_cam/convertPixelsToCM/p1';
bio(171).sigName='delta_x_cm';
bio(171).portIdx=0;
bio(171).dim=[1,1];
bio(171).sigWidth=1;
bio(171).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_x_cm';
bio(171).ndims=2;
bio(171).size=[];


bio(172).blkName='yaw_cam/convertPixelsToCM/p2';
bio(172).sigName='delta_y_cm';
bio(172).portIdx=1;
bio(172).dim=[1,1];
bio(172).sigWidth=1;
bio(172).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.delta_y_cm';
bio(172).ndims=2;
bio(172).size=[];


bio(173).blkName='yaw_cam/Transfer Fcn';
bio(173).sigName='dcam3';
bio(173).portIdx=0;
bio(173).dim=[1,1];
bio(173).sigWidth=1;
bio(173).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.dcam3';
bio(173).ndims=2;
bio(173).size=[];


bio(174).blkName='yaw_cam/Delay12';
bio(174).sigName='';
bio(174).portIdx=0;
bio(174).dim=[1,1];
bio(174).sigWidth=1;
bio(174).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay12';
bio(174).ndims=2;
bio(174).size=[];


bio(175).blkName='yaw_cam/Delay13';
bio(175).sigName='';
bio(175).portIdx=0;
bio(175).dim=[1,1];
bio(175).sigWidth=1;
bio(175).sigAddress='&dxpcImMultiTarget_singleimage_CV_euler_finBETA_B.Delay13';
bio(175).ndims=2;
bio(175).size=[];


function len = getlenBIO
len = 175;

