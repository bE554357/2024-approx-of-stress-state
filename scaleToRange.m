function res = scaleToRange(val, min, max)
% inut: val in [min, max]
% output: res in [-1,1]
	res = (2*val - min - max)/(max - min);
end