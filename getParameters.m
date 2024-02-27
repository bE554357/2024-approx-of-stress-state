function [Y1_value, Y2_value, stressDimless_value] = getParameters(innerD, crackRatio, angle)
%{
 This function provides approximation of quantities Y_1, Y_2, and T^{*} 
 resulting from a solution of linear elastic problem, described in
 https://doi.org/10.1016/j.engfracmech.2024.109875
 
 The outer diameter of the cylinder is supposed to be 39 [mm]

 innerD has dimension of [mm], describes inner diameter of the cylinder. It ranges within [6; 21]
 crackRation is non-diemensional, 
 crackRatio = (length of crack)/(outerD - innerD).
 crackRatio ranges within [0.1; 0.7]
 angle is measured in degrees, describes the angle of crack to vertical axis. 
 angle ranges within [0; 34]
%}
	Y1_value = Y1(innerD, crackRatio, angle);
	Y2_value = Y2(innerD, crackRatio, angle);
	stressDimless_value = stressDimless(innerD, crackRatio, angle);
end