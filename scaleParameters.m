function [innerD, crackRatio, angle] = scaleParameters(innerUnscaled, crackRatioUnscaled, angleUnscaled)
	% these are paramters ranges of polynomial approximation. Approxmators are functions Y1, Y2 and stressDimless below.
	minInnerD = 6;
	maxInnerD = 21;
	minCrackRatio = 0.1;
	maxCrackRatio = 0.7;
	minAngle = 0;
	maxAngle = 34;

	innerD = scaleToRange(innerUnscaled, minInnerD, maxInnerD);
	crackRatio = scaleToRange(crackRatioUnscaled, minCrackRatio, maxCrackRatio);
	angle = scaleToRange(angleUnscaled, minAngle, maxAngle);

	if innerD < -1 || innerD > 1
		warning("inner diameter is out of approximation range, large approximation error is expected; input value = %d, range = [%d, %d]", innerUnscaled, minInnerD, maxInnerD);
	end

	if crackRatio < -1 || crackRatio > 1
		warning("crack ratio is out of approximation range, large approximation error is expected; input value = %d, range = [%d, %d]", crackRatio, minCrackRatio, maxCrackRatio);
	end

	if angle < -1 || angle > 1
		warning("crack angle is out of approximation range, large approximation error is expected; input value = %d, range = [%d, %d]", angle, minAngle, maxAngle);
	end

end