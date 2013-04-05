function hist2(data, nbins)
	xMin = min(data(:,1));
	yMin = min(data(:,2));
	xMax = max(data(:,1));
	yMax = max(data(:,2));

	xInterval = (xMax - xMin) / nbins;
	yInterval = (yMax - yMin) / nbins;

	histogram = zeros(nbins, nbins);

	for i = 1:length(data)
		x = data(i,1);
		y = data(i,2);

		xh = floor((x - xMin) / xInterval);
		xh = xh + 1;
		if (xh < 1)
			xh = 1;
		end
		if (xh > nbins)
			xh = nbins;
		end

		yh = floor((y - yMin) / yInterval);
		yh = yh + 1;
		if (yh < 1)
			yh = 1;
		end
		if (yh > nbins)
			yh = nbins;
		end
		histogram(xh, yh) = histogram(xh, yh) + 1;
	end
