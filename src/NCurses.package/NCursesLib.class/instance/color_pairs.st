colors
color_pairs

	^ (ExternalAddress loadSymbol: #'COLOR_PAIRS' from: self class) integerAt: 1