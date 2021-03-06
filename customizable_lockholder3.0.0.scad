/* [General] */

part = 4; // [1:Complete Lockholder Set, 2:Single Lockholder Set, 3:Top Part, 4:Bottom Part, 5:Assembled Lockholder Set]

// wall thickness
Thickness = 3; // [0.5:0.1:10]

// lower is faster - higher is smoother (use a low value for drafting, increase it later)
Resolution = 50; // [10:1:300]

/* [Bike and Lock] */

TopTubeDiameter = 40.5; // [1:0.01:300]

// make it a little bigger for easy insertion
LockDiameter = 15.1; // [1:0.01:300]

// longer prevents vibrations but may be clumsy
LocktubeLength = 40; // [1:0.01:300]

// between top part and bottom part - bigger values for tighter fit (I suggest to leave it at 0)
Offset = 0; // [0:0.01:300]

/* [Screws and Nuts] */

// A/F in this [picture](https://en.wikipedia.org/wiki/Nut_(hardware)#/media/File:Nut_quote.png)
NutDiameter = 6.01; // [0:0.01:100]

ScrewHeadDiameter = 5.5; // [0:0.01:100]

ScrewThreadDiameter = 3; // [0:0.01:100]

// share of the wall thickness for the screw holes
ScrewholeThickness = 0.75; // [0:0.001:1]

/* [Cable Shafts] */
topCable1Width = 0; // [0:0.01:100]
topCable1Height = 0; // [0:0.01:100]
topCable1Angle = 0; // [-90:0.01:90]
topCable2Height = 0; // [0:0.01:100]
topCable2Width = 0; // [0:0.01:100]
topCable2Angle = 15; // [-90:0.01:90]
topCable3Width = 0; // [0:0.01:100]
topCable3Height = 0; // [0:0.01:100]
topCable3Angle = -15; // [-90:0.01:90]

bottomCable1Width = 5; // [0:0.01:100]
bottomCable1Height = 7; // [0.01:100]
bottomCable1Angle = 0; // [-90:0.01:90]
bottomCable2Width = 0; // [0:0.01:100]
bottomCable2Height = 0; // [0:0.01:100]
bottomCable2Angle = 15; // [-90:0.01:90]
bottomCable3Width = 0; // [0:0.01:100]
bottomCable3Height = 0; // [0:0.01:100]
bottomCable3Angle = -15; // [-90:0.01:90]

/* [Hidden] */
$fn=Resolution;

if (part == 1) {
	completeLockHolderSet(
		diameterTopTube = TopTubeDiameter,
		lengthLock = LocktubeLength,
		diameterLock = LockDiameter,

		nutDiameter = NutDiameter,
		screwDiameter = ScrewHeadDiameter,
		threadDiameter = ScrewThreadDiameter,

		thickness = Thickness,
		offset = Offset,
		screwOffsetShare = ScrewholeThickness,

		topCable1Width = topCable1Width,
		topCable1Height = topCable1Height,
		topCable1Angle = topCable1Angle,
		topCable2Width = topCable2Width,
		topCable2Height = topCable2Height,
		topCable2Angle = topCable2Angle,
		topCable3Width = topCable3Width,
		topCable3Height = topCable3Height,
		topCable3Angle = topCable3Angle,

		bottomCable1Width = bottomCable1Width,
		bottomCable1Height = bottomCable1Height,
		bottomCable1Angle = bottomCable1Angle,
		bottomCable2Width = bottomCable2Width,
		bottomCable2Height = bottomCable2Height,
		bottomCable2Angle = bottomCable2Angle,
		bottomCable3Width = bottomCable3Width,
		bottomCable3Height = bottomCable3Height,
		bottomCable3Angle = bottomCable3Angle
	);
} else if (part == 2) {
	lockHolderSet(
		diameterTopTube = TopTubeDiameter,
		lengthLock = LocktubeLength,
		diameterLock = LockDiameter,

		nutDiameter = NutDiameter,
		screwDiameter = ScrewHeadDiameter,
		threadDiameter = ScrewThreadDiameter,

		thickness = Thickness,
		offset = Offset,
		screwOffsetShare = ScrewholeThickness,

		topCable1Width = topCable1Width,
		topCable1Height = topCable1Height,
		topCable1Angle = topCable1Angle,
		topCable2Width = topCable2Width,
		topCable2Height = topCable2Height,
		topCable2Angle = topCable2Angle,
		topCable3Width = topCable3Width,
		topCable3Height = topCable3Height,
		topCable3Angle = topCable3Angle,

		bottomCable1Width = bottomCable1Width,
		bottomCable1Height = bottomCable1Height,
		bottomCable1Angle = bottomCable1Angle,
		bottomCable2Width = bottomCable2Width,
		bottomCable2Height = bottomCable2Height,
		bottomCable2Angle = bottomCable2Angle,
		bottomCable3Width = bottomCable3Width,
		bottomCable3Height = bottomCable3Height,
		bottomCable3Angle = bottomCable3Angle
	);
} else if (part == 3) {
	topPart(
		diameterTopTube = TopTubeDiameter,
		diameterLock = LockDiameter,

		nutDiameter = NutDiameter,
		screwDiameter = ScrewHeadDiameter,
		threadDiameter = ScrewThreadDiameter,

		thickness = Thickness,
		offset = Offset,
		screwOffsetShare = ScrewholeThickness,

		cable1Width = topCable1Width,
		cable1Height = topCable1Height,
		cable1Angle = topCable1Angle,
		cable2Width = topCable2Width,
		cable2Height = topCable2Height,
		cable2Angle = topCable2Angle,
		cable3Width = topCable3Width,
		cable3Height = topCable3Height,
		cable3Angle = topCable3Angle
	);
} else if (part == 4) {
	bottomPart(
		diameterTopTube = TopTubeDiameter,
		lengthLock = LocktubeLength,
		diameterLock = LockDiameter,

		nutDiameter = NutDiameter,
		screwDiameter = ScrewHeadDiameter,
		threadDiameter = ScrewThreadDiameter,

		thickness = Thickness,
		offset = Offset,
		screwOffsetShare = ScrewholeThickness,

		cable1Width = bottomCable1Width,
		cable1Height = bottomCable1Height,
		cable1Angle = bottomCable1Angle,
		cable2Width = bottomCable2Width,
		cable2Height = bottomCable2Height,
		cable2Angle = bottomCable2Angle,
		cable3Width = bottomCable3Width,
		cable3Height = bottomCable3Height,
		cable3Angle = bottomCable3Angle
	);
} else if (part == 5) {
	assembledLockHolderSet(
		diameterTopTube = TopTubeDiameter,
		lengthLock = LocktubeLength,
		diameterLock = LockDiameter,

		nutDiameter = NutDiameter,
		screwDiameter = ScrewHeadDiameter,
		threadDiameter = ScrewThreadDiameter,

		thickness = Thickness,
		offset = Offset,
		screwOffsetShare = ScrewholeThickness,

		topCable1Width = topCable1Width,
		topCable1Height = topCable1Height,
		topCable1Angle = topCable1Angle,
		topCable2Width = topCable2Width,
		topCable2Height = topCable2Height,
		topCable2Angle = topCable2Angle,
		topCable3Width = topCable3Width,
		topCable3Height = topCable3Height,
		topCable3Angle = topCable3Angle,

		bottomCable1Width = bottomCable1Width,
		bottomCable1Height = bottomCable1Height,
		bottomCable1Angle = bottomCable1Angle,
		bottomCable2Width = bottomCable2Width,
		bottomCable2Height = bottomCable2Height,
		bottomCable2Angle = bottomCable2Angle,
		bottomCable3Width = bottomCable3Width,
		bottomCable3Height = bottomCable3Height,
		bottomCable3Angle = bottomCable3Angle
	);
} else {
	completeLockHolderSet(
		diameterTopTube = TopTubeDiameter,
		lengthLock = LocktubeLength,
		diameterLock = LockDiameter,

		nutDiameter = NutDiameter,
		screwDiameter = ScrewHeadDiameter,
		threadDiameter = ScrewThreadDiameter,

		thickness = Thickness,
		offset = Offset,
		screwOffsetShare = ScrewholeThickness,

		topCable1Width = topCable1Width,
		topCable1Height = topCable1Height,
		topCable1Angle = topCable1Angle,
		topCable2Width = topCable2Width,
		topCable2Height = topCable2Height,
		topCable2Angle = topCable2Angle,
		topCable3Width = topCable3Width,
		topCable3Height = topCable3Height,
		topCable3Angle = topCable3Angle,
		bottomCable1Width = bottomCable1Width,
		bottomCable1Height = bottomCable1Height,
		bottomCable1Angle = bottomCable1Angle,
		bottomCable2Width = bottomCable2Width,
		bottomCable2Height = bottomCable2Height,
		bottomCable2Angle = bottomCable2Angle,
		bottomCable3Width = bottomCable3Width,
		bottomCable3Height = bottomCable3Height,
		bottomCable3Angle = bottomCable3Angle
	);
}

// lockholder v 3.0.0

// Functions
// - Set of Top Part and Bottom Part
module lockHolderSet
(
	diameterTopTube = 30,
	lengthLock = 50,
	diameterLock = 15,

	nutDiameter = 10,
	screwDiameter = 10,
	threadDiameter = 6,

	thickness = 5,
	offset = 2,
	screwOffsetShare = 0.75,
	
	topCable1Width = 0,
	topCable1Height = 0,
	topCable1Angle = 0,
	topCable2Width = 0,
	topCable2Height = 0,
	topCable2Angle = 15,
	topCable3Width = 0,
	topCable3Height = 0,
	topCable3Angle = -15,

	bottomCable1Width = 0,
	bottomCable1Height = 0,
	bottomCable1Angle = 0,
	bottomCable2Width = 0,
	bottomCable2Height = 0,
	bottomCable2Angle = 15,
	bottomCable3Width = 0,
	bottomCable3Height = 0,
	bottomCable3Angle = -15
)
{
	shellDiameter = shellDiameter(nutDiameter, screwDiameter);
	lengthTopTube = lengthTopTube(diameterLock, shellDiameter, thickness);
	screwBarWidth = screwBarWidth(shellDiameter, thickness);

	translate(v = [(diameterTopTube / 2) + screwBarWidth + (1.5 * thickness), 0, 0]) {
		topPart(diameterTopTube, diameterLock, nutDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare, topCable1Width, topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle);
	}

	translate(v = [(-1) * ((diameterTopTube / 2) + screwBarWidth + (1.5 * thickness)), 0, 0]) {
		rotate(a = [0, 0, 180]) {
			bottomPart(diameterTopTube, lengthLock, diameterLock, nutDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare, bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
		}
	}
}

// - Complete Set of 2 Top Parts and 2 Bottom Parts
module completeLockHolderSet
(
	diameterTopTube = 30,
	lengthLock = 50,
	diameterLock = 15,

	nutDiameter = 10,
	screwDiameter = 10,
	threadDiameter = 6,

	thickness = 5,
	offset = 2,
	screwOffsetShare = 0.75,
	
	topCable1Width = 0,
	topCable1Height = 0,
	topCable1Angle = 0,
	topCable2Width = 0,
	topCable2Height = 0,
	topCable2Angle = 15,
	topCable3Width = 0,
	topCable3Height = 0,
	topCable3Angle = -15,

	bottomCable1Width = 0,
	bottomCable1Height = 0,
	bottomCable1Angle = 0,
	bottomCable2Width = 0,
	bottomCable2Height = 0,
	bottomCable2Angle = 15,
	bottomCable3Width = 0,
	bottomCable3Height = 0,
	bottomCable3Angle = -15
)
{
	shellDiameter = shellDiameter(nutDiameter, screwDiameter);
	lengthTopTube = lengthTopTube(diameterLock, shellDiameter, thickness);
	screwBarWidth = screwBarWidth(shellDiameter, thickness);

	translate(v = [0, (lengthTopTube + thickness) / 2, 0]) {
		lockHolderSet(diameterTopTube, lengthLock, diameterLock, nutDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare, topCable1Width,	topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle,	bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
	}

	translate(v = [0, (-1) * ((lengthTopTube + thickness) / 2), 0]) {
		lockHolderSet(diameterTopTube, lengthLock, diameterLock, nutDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare, topCable1Width,	topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle,	bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
	}
}

// - Set of Top Part and Bottom Part Assembled
module assembledLockHolderSet
(
	diameterTopTube = 30,
	lengthLock = 50,
	diameterLock = 15,

	nutDiameter = 10,
	screwDiameter = 10,
	threadDiameter = 6,

	thickness = 5,
	offset = 2,
	screwOffsetShare = 0.75,
	
	topCable1Width = 0,
	topCable1Height = 0,
	topCable1Angle = 0,
	topCable2Width = 0,
	topCable2Height = 0,
	topCable2Angle = 15,
	topCable3Width = 0,
	topCable3Height = 0,
	topCable3Angle = -15,

	bottomCable1Width = 0,
	bottomCable1Height = 0,
	bottomCable1Angle = 0,
	bottomCable2Width = 0,
	bottomCable2Height = 0,
	bottomCable2Angle = 15,
	bottomCable3Width = 0,
	bottomCable3Height = 0,
	bottomCable3Angle = -15
)
{
	shellDiameter = shellDiameter(nutDiameter, screwDiameter);
	lengthTopTube = lengthTopTube(diameterLock, shellDiameter, thickness);
	screwBarWidth = screwBarWidth(shellDiameter, thickness);

	translate([0,0,offset/2]) {
		topPart(diameterTopTube, diameterLock, nutDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare, topCable1Width, topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle);
	}
	
	translate([0,0,-offset/2]) {
		rotate(a = [0, 180, 180]) {
			bottomPart(diameterTopTube, lengthLock, diameterLock, nutDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare, bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
		}
	}
}


// Object with cables
// - Top Part
module topPart
(
	diameterTopTube = 30,
	diameterLock = 15,

	nutDiameter = 10,
	screwDiameter = 10,
	threadDiameter = 6,

	thickness = 5,
	offset = 2,
	screwOffsetShare = 0.75,
	
	cable1Width = 0,
	cable1Height = 0,
	cable1Angle = 0,
	cable2Width = 0,
	cable2Height = 0,
	cable2Angle = 15,
	cable3Width = 0,
	cable3Height = 0,
	cable3Angle = -15
)
{
	shellDiameter = shellDiameter(nutDiameter, screwDiameter);
	lengthTopTube = lengthTopTube(diameterLock, shellDiameter, thickness);
	difference() {
		union() {
			topPartPlain
			(
				diameterTopTube,
				diameterLock,
				shellDiameter,
				screwDiameter,
				threadDiameter,
				thickness,
				offset,
				screwOffsetShare
			);
			union() {
				if (cable1Height > 0 && cable1Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable1Width + (2 * thickness)), (cable1Height + thickness), cable1Angle, thickness, offset);
				}
				if (cable2Height > 0 && cable2Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable2Width + (2 * thickness)), (cable2Height + thickness), cable2Angle, thickness, offset);
				}
				if (cable3Height > 0 && cable3Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable3Width + (2 * thickness)), (cable3Height + thickness), cable3Angle, thickness, offset);
				}
			}
		};
		union() {
			if (cable1Height > 0 && cable1Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable1Width, cable1Height, cable1Angle, thickness, offset, true);
			}
			if (cable2Height > 0 && cable2Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable2Width, cable2Height, cable2Angle, thickness, offset, true);
			}
			if (cable3Height > 0 && cable3Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable3Width, cable3Height, cable3Angle, thickness, offset, true);
			}
		}
	};
}

// - Bottom Part
module bottomPart
(
	diameterTopTube = 30,
	lengthLock = 50,
	diameterLock = 15,

	nutDiameter = 10,
	screwDiameter = 10,
	threadDiameter = 6,

	thickness = 5,
	offset = 2,
	screwOffsetShare = 0.75,
	
	cable1Width = 0,
	cable1Height = 0,
	cable1Angle = 0,
	cable2Width = 0,
	cable2Height = 0,
	cable2Angle = 20,
	cable3Width = 0,
	cable3Height = 0,
	cable3Angle = -15
)
{
	shellDiameter = shellDiameter(nutDiameter, screwDiameter);
	lengthTopTube = lengthTopTube(diameterLock, thickness);
	difference() {
		union() {
			bottomPartPlain
			(
				diameterTopTube,
				lengthLock,
				diameterLock,
				shellDiameter,
				nutDiameter,
				threadDiameter,
				thickness,
				offset,
				screwOffsetShare
			);
			union() {
				if (cable1Height > 0 && cable1Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable1Width + (2 * thickness)), (cable1Height + thickness), cable1Angle, thickness, offset);
				}
				if (cable2Height > 0 && cable2Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable2Width + (2 * thickness)), (cable2Height + thickness), cable2Angle, thickness, offset);
				}
				if (cable3Height > 0 && cable3Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable3Width + (2 * thickness)), (cable3Height + thickness), cable3Angle, thickness, offset);
				}
			}
		};
		union() {
			if (cable1Height > 0 && cable1Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable1Width, cable1Height, cable1Angle, thickness, offset, true);
			}
			if (cable2Height > 0 && cable2Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable2Width, cable2Height, cable2Angle, thickness, offset, true);
			}
			if (cable3Height > 0 && cable3Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable3Width, cable3Height, cable3Angle, thickness, offset, true);
			}
		}
	};
}

// Plain Objects (without cables)
// - Top Part
module topPartPlain
(
	diameterTopTube,
	diameterLock,
	shellDiameter,
	screwDiameter,
	threadDiameter,
	thickness,
	offset,
	screwOffsetShare
)
{
	lengthTopTube = lengthTopTube(diameterLock, shellDiameter, thickness);
	screwBarWidth = screwBarWidth(shellDiameter, thickness);

	translate(v = [0, lengthTopTube / 2, 0]) {
		topPart1(lengthTopTube, diameterTopTube, diameterLock, screwBarWidth, shellDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare);
		translate(v = [0, (-1) * (shellDiameter + (thickness / 2)), 0]) {
			doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
		}
		translate(v = [0, (-1) * (lengthTopTube - (shellDiameter + (1.5 * thickness))), 0]) {
			doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
		}
	}
}

// - Bottom Part
module bottomPartPlain
(
	diameterTopTube,
	lengthLock,
	diameterLock,
	shellDiameter,
	nutDiameter,
	threadDiameter,
	thickness,
	offset,
	screwOffsetShare
)
{
	lengthTopTube = lengthTopTube(diameterLock, thickness);
	screwBarWidth = screwBarWidth(shellDiameter, thickness);

	translate(v = [0, lengthTopTube / 2, 0]) {
		difference() {
			union() {
				bottomPart1(lengthTopTube, diameterTopTube, lengthLock, diameterLock, screwBarWidth, shellDiameter, nutDiameter, threadDiameter, thickness, offset, screwOffsetShare);
				translate(v = [0, (-1) * (shellDiameter + (thickness / 2)), 0]) {
					doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
				}
				translate(v = [0, (-1) * (lengthTopTube - (shellDiameter + (1.5 * thickness))), 0]) {
					doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
				}
				translate(v = [0, (-1) * ((lengthTopTube - thickness) / 2), 0]) {
					lockBracing(diameterTopTube, lockTubeOffset(diameterTopTube, shellDiameter, diameterLock, lengthTopTube, thickness) - ((diameterLock + thickness) / 2), lengthLock, thickness, offset);
				}
			}
			translate(v = [lockTubeOffset(diameterTopTube, shellDiameter, diameterLock, lengthTopTube, thickness), (-1) * (lengthTopTube / 2), (lengthLock - (thickness / 2))]) {
				carveRoundTube(diameterLock, thickness);
			}
			translate(v = [lockTubeOffset(diameterTopTube, shellDiameter, diameterLock, lengthTopTube, thickness), (-1) * (lengthTopTube / 2), 0]) {
				rotate(a = [180, 0, 0]) {
					difference() {
						translate(v = [0, 0, (-1) * (thickness / 2)]) {
							carveRoundTube(diameterLock, thickness);
						}
						difference() {
							translate(v = [screwBarWidth - diameterLock, 0, (-1) * thickness / 2]) {
								cube(size = [diameterLock, diameterLock + (2 * thickness) + 2, thickness + 2], center = true);
							}
							translate(v = [0, 0, (-1) * ((thickness + 4) / 2)]) {
								cylinder(h = thickness + 4, r = (diameterLock + thickness) / 2);
							}
						}
					}
				}
			}
		}
	}
}

// Modules
module tube(height, diameter, thickness) {
	difference() {
		cylinder(h = height, r = ((diameter / 2) + thickness));
		translate(v = [0, 0, -1]) {
			cylinder(h = height + 2, r = diameter / 2);
		}
	}
}

module halfTube(height, diameter, thickness, offset) {
	difference() {
		tube(height, diameter, thickness);
		union() {
			translate(v = [((-1) * (diameter + (2 * thickness))) / 2, (-1) * ((diameter / 2) + thickness) - 1, -1]) {
				cube([diameter + (2 * thickness), (diameter / 2) + thickness +1 + (offset / 2), height + 2]);
			}
			translate(v = [0, 0, thickness]) {
				rotate(a = [180,0,0]) {
					carveHalfRoundTube(diameter, thickness);
				}
			}
			translate(v = [0, 0, height - thickness]) {
				carveHalfRoundTube(diameter, thickness);
			}
		}
	}
}

module screwBar(shellDiameter, holeDiameter, lengthTopTube, diameterTopTube, thickness, offset, screwOffsetShare) {
	difference() {
		union() {
			difference() {
				hull() {
					translate(v = [((diameterTopTube + shellDiameter) / 2) + thickness, thickness + (offset / 2), (shellDiameter + thickness) / 2]) {
						rotate(a = [90, 0, 0]) {
							cylinder(r = ((shellDiameter + thickness) / 2), h = thickness);
						}
					}
					translate(v = [(-1) * (((diameterTopTube + shellDiameter) / 2) + thickness), thickness + (offset / 2), (shellDiameter + thickness) / 2]) {
						rotate(a = [90, 0, 0]) {
							cylinder(r = (shellDiameter + thickness) / 2, h = thickness);
						}
					}
					translate(v = [((diameterTopTube + shellDiameter) / 2) + thickness, thickness + (offset / 2), lengthTopTube - ((shellDiameter + thickness) / 2) ]) {
						rotate(a = [90, 0, 0]) {
							cylinder(r = ((shellDiameter + thickness) / 2), h = thickness);
						}
					}
					translate(v = [(-1) * (((diameterTopTube + shellDiameter) / 2) + thickness), thickness + (offset / 2), lengthTopTube - ((shellDiameter + thickness) / 2)]) {
						rotate(a = [90, 0, 0]) {
							cylinder(r = ((shellDiameter + thickness) / 2), h = thickness);
						}
					}
				}
				translate(v = [((diameterTopTube + thickness) / 2) + shellDiameter, 0, 0]) {
					difference() {
						cube([thickness + 1, thickness + 1, lengthTopTube]);
						translate(v = [0, 0, -1]) {
							cylinder(r = thickness, h = lengthTopTube + 2);
						}
					}
				}
				translate(v = [(-1)*((diameterTopTube + thickness) / 2) - shellDiameter, 0, 0]) {
					difference() {
						translate(v = [(-1)*(thickness + 1), 0, 0]) {
							cube([thickness + 1, thickness + 1, lengthTopTube]);
						}
						translate(v = [0, 0, -1]) {
							cylinder(r = thickness, h = lengthTopTube + 2);
						}
					}
				}
				translate(v = [(-1) * ((diameterTopTube / 2) + 1.5 * thickness + shellDiameter), 0, lengthTopTube - thickness]) {
					difference() {
						cube([diameterTopTube + 2 * shellDiameter + 3 * thickness, thickness + 1, thickness + 1]);
						rotate(a = [0, 90, 0]) {
							translate(v = [0, 0, -1]) {
								cylinder(r = thickness, h = diameterTopTube + 2 * shellDiameter + 3 * thickness + 2);
							}
						}
					}
				}
				translate(v = [(-1) * ((diameterTopTube / 2) + 1.5 * thickness + shellDiameter), 0, thickness]) {
					difference() {
						translate(v = [0, 0, (-1)*(thickness + 1)]) {
							cube([diameterTopTube + 2 * shellDiameter + 3 * thickness, thickness + 1, thickness + 1]);
						}
						rotate(a = [0, 90, 0]) {
							translate(v = [0, 0, -1]) {
								cylinder(r = thickness, h = diameterTopTube + 2 * shellDiameter + 3 * thickness + 2);
							}
						}
					}
				}
			}
			positionShells(shellDiameter, diameterTopTube + (2 * thickness), lengthTopTube, thickness, offset, screwOffsetShare);
		}
		translate(v = [0, 0, -1]) {
			cylinder(r = diameterTopTube / 2, h = lengthTopTube + 2);
		}
	}
}

module tubeWithBar(lengthTopTube, diameterTopTube, shellDiameter, holeDiameter, thickness, offset, screwOffsetShare) {
	union() {
		halfTube(lengthTopTube, diameterTopTube, thickness, offset);
		screwBar(shellDiameter, holeDiameter, lengthTopTube, diameterTopTube, thickness, offset, screwOffsetShare);
	}
}

module makeShell(diameter, thickness, offset, screwOffsetShare) {
	translate(v = [0, ((1 + screwOffsetShare) * thickness) + (offset / 2), 0]) {
		rotate(a = [90, 0, 0]) {
			difference() {
				cylinder(r = (diameter + thickness) / 2, h = ((1 + screwOffsetShare) * thickness));
				rotate(a = [180, 0, 0]) {
					translate(v = [0, 0, -thickness]) {
						difference() {
							carveHalfRoundTube(diameter - thickness, thickness);
							translate(v = [0, 0, -1]) {
								cylinder(r = diameter - 2 * thickness, thickness + 3);
							}
						}
					}
				}
			}
		}
	}
}

module makeNut(diameter, thickness, screwOffsetShare) {
	translate(v = [0, (screwOffsetShare * thickness) + 1, 0]) {
		rotate(a = [90, 0, 0]) {
			translate(v = [0, 0, (-1) * (thickness / 2)]) {
				hexagon(size = diameter, height = thickness + 2);
			}
		}
	}
}

module screwHeadHole(diameter, thickness, screwOffsetShare) {
	translate(v = [0, (screwOffsetShare * thickness), 0]) {
		rotate(a = [-90, 0, 0]) {
			cylinder(r = diameter / 2, h = thickness + 2);
		}
	}
}

module screwHole(diameter, thickness) {
	translate(v = [0, -1, 0]) {
		rotate(a = [-90, 0, 0]) {
			cylinder(r = diameter / 2, h = (2 * thickness) + 2);
		}
	}
}

module positionShells(diameter, plateSizeX, plateSizeY, thickness, offset, screwOffsetShare) {
	translate(v = [(plateSizeX + diameter) / 2, 0, ((diameter + thickness) / 2)]) {
		makeShell(diameter, thickness, offset, screwOffsetShare);
	}
	translate(v = [(plateSizeX + diameter) / 2, 0, plateSizeY - ((diameter + thickness) / 2)]) {
		makeShell(diameter, thickness, offset, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + diameter) / 2), 0, ((diameter + thickness) / 2)]) {
		makeShell(diameter, thickness, offset, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + diameter) / 2), 0, plateSizeY - ((diameter + thickness) / 2)]) {
		makeShell(diameter, thickness, offset, screwOffsetShare);
	}
}

module positionNuts(shellDiameter, diameter, plateSizeX, plateSizeY, thickness, screwOffsetShare) {
	translate(v = [(plateSizeX + shellDiameter) / 2, 0, ((shellDiameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(plateSizeX + shellDiameter) / 2, 0, plateSizeY - ((shellDiameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + shellDiameter) / 2), 0, ((shellDiameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + shellDiameter) / 2), 0, plateSizeY - ((shellDiameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
}

module positionScrewHeadHoles(shellDiameter, diameter, plateSizeX, plateSizeY, thickness, screwOffsetShare) {
	translate(v = [(plateSizeX + shellDiameter) / 2, 0, ((shellDiameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(plateSizeX + shellDiameter) / 2, 0, plateSizeY - ((shellDiameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + shellDiameter) / 2), 0, ((shellDiameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + shellDiameter) / 2), 0, plateSizeY - ((shellDiameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
}

module positionScrewHoles(shellDiameter, diameter, plateSizeX, plateSizeY, thickness) {
	translate(v = [(plateSizeX + shellDiameter) / 2, 0, ((shellDiameter + thickness) / 2)]) {
		screwHole(diameter, thickness);
	}
	translate(v = [(plateSizeX + shellDiameter) / 2, 0, plateSizeY - ((shellDiameter + thickness) / 2)]) {
		screwHole(diameter, thickness);
	}
	translate(v = [(-1) * ((plateSizeX + shellDiameter) / 2), 0, ((shellDiameter + thickness) / 2)]) {
		screwHole(diameter, thickness);
	}
	translate(v = [(-1) * ((plateSizeX + shellDiameter) / 2), 0, plateSizeY - ((shellDiameter + thickness) / 2)]) {
		screwHole(diameter, thickness);
	}
}

module nutHolesComplete(shellDiameter, nutDiameter, threadDiameter, plateSizeX, plateSizeY, thickness, offset, screwOffsetShare) {
	translate(v = [0, offset / 2, 0]) {
		union() {
			positionNuts(shellDiameter, nutDiameter, plateSizeX, plateSizeY, thickness, screwOffsetShare);
			positionScrewHoles(shellDiameter, threadDiameter, plateSizeX, plateSizeY, thickness);
		}
	}
}

module screwHeadHolesComplete(shellDiameter, screwDiameter, threadDiameter, plateSizeX, plateSizeY, thickness, offset, screwOffsetShare) {
	translate(v = [0, offset / 2, 0]) {
		union() {
			positionScrewHeadHoles(shellDiameter, screwDiameter, plateSizeX, plateSizeY, thickness, screwOffsetShare);
			positionScrewHoles(shellDiameter, threadDiameter, plateSizeX, plateSizeY, thickness);
		}
	}
}

module topPart1(lengthTopTube, diameterTopTube, diameterLock, screwBarWidth, shellDiameter, screwDiameter, threadDiameter, thickness, offset, screwOffsetShare) {
	translate(v = [0, 0, (-1) * (offset / 2)]) {
		rotate(a = [90, 0, 0]) {
			difference() {
				difference() {
					tubeWithBar(lengthTopTube, diameterTopTube, shellDiameter, screwDiameter, thickness, offset, screwOffsetShare);
					screwHeadHolesComplete(shellDiameter, screwDiameter, threadDiameter, diameterTopTube + (2 * thickness), lengthTopTube, thickness, offset, screwOffsetShare);
				}
	// -- Hole for Lock Tube
				translate(v = [((diameterTopTube + diameterLock) / 2) + thickness, thickness + (offset / 2) + 1, lengthTopTube / 2]) {
					rotate(a = [90, 0, 0]) {
						union() {
							difference() {
								carveRing(diameterLock, thickness);
								translate(v = [0, 0, 0]) {
									translate(v = [(-1) * ((diameterLock + thickness) / 2), 0, 0]) {
										cube([thickness, diameterLock + thickness + 2, ((thickness + 2))], true);
									}
									translate(v = [(-1) * ((diameterLock + thickness) / 2), (diameterLock + thickness) / 2, 0]) {
										cube([diameterLock + thickness + 4, thickness, ((thickness + 2))], true);
									}
									translate(v = [(-1) * ((diameterLock + thickness) / 2), (-1) * (diameterLock + thickness) / 2, 0]) {
										cube([diameterLock + thickness + 4, thickness, ((thickness + 2))], true);
									}
								}
							}
							translate(v = [screwBarWidth, 0, (thickness / 2) + 1]) {
								cube([diameterLock, diameterLock + thickness + 2, thickness + 4], true);
							}
						}
					}
				}
			}
		}
	}
}

module bottomPart1(lengthTopTube, diameterTopTube, lengthLock, diameterLock, screwBarWidth, shellDiameter, nutDiameter, threadDiameter, thickness, offset, screwOffsetShare) {
	translate(v = [0, 0, (-1) * (offset / 2)]) {
		rotate(a = [90, 0, 0]) {
			difference() {
				union() {
					difference() {
						tubeWithBar(lengthTopTube, diameterTopTube, shellDiameter, nutDiameter, thickness, offset, screwOffsetShare);
						nutHolesComplete(shellDiameter, nutDiameter, threadDiameter, diameterTopTube + (2 * thickness), lengthTopTube, thickness, offset, screwOffsetShare);
					}
	// -- Lock Tube
	echo(lengthTopTube);
					translate(v = [lockTubeOffset(diameterTopTube, shellDiameter, diameterLock, lengthTopTube, thickness), lengthLock + (offset / 2), lengthTopTube / 2]) {
						rotate(a = [90, 0, 0]) {
							tube(lengthLock, diameterLock, thickness);
						}
					}
				}
			}
		}
	}
}

module stabilityBracing(diameterTopTube, screwBarWidth, thickness, offset) {
	rotate(a = [90, 0, 0]) {
		difference() {
			linear_extrude(height = thickness) {
					polygon(points = [[0, thickness], [(diameterTopTube / 2) + screwBarWidth, thickness], [0, ((diameterTopTube - offset) / 2) + thickness]], paths = [[0, 1, 2]]);
			}
			translate(v = [0, (-1) * (offset / 2), -1]) {
				cylinder(r = diameterTopTube / 2, h = thickness + 2);
			}
		}
	}
}

module doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset) {
	stabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
	rotate(a = [0, 0, 180]) {
		translate(v = [0, thickness, 0]) {
			stabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
		}
	}
}

module lockBracing(diameterTopTube, lockTubeOuterPos, lengthLock, thickness, offset) {
	rotate(a = [90, 0, 0]) {
		difference() {
			linear_extrude(height = thickness) {
				polygon(points = [[0, 0], [lockTubeOuterPos, 0], [lockTubeOuterPos, lengthLock], [0, ((diameterTopTube - offset) / 2) + thickness]], paths = [[0, 1, 2, 3]]);
			}
			translate(v = [0, (-1) * (offset / 2), -1]) {
				cylinder(r = diameterTopTube / 2, h = thickness + 2);
			}
		}
	}
}

module carveRoundTube(diameter, thickness) {
	difference() {
		cylinder(h = (thickness / 2) + 1, r = ((diameter / 2) + thickness) + 1);
		rotate_extrude() {
			translate(v = [((diameter  + thickness) / 2), 0, 0]) {
				circle(r = (thickness / 2));
			}
		}
	}
}

module carveHalfRoundTube(diameter, thickness) {
	difference() {
		cylinder(h = (thickness) + 1, r = ((diameter / 2) + thickness) + 1);
		rotate_extrude() {
			translate(v = [(diameter / 2), 0, 0]) {
				difference() {
					circle(r = thickness);
					translate(v = [-(2 * thickness + 1),(-1)*((2 * thickness + 1) / 2),0]) {
						square(2 * thickness + 1);
					}
				}
			}
		}
	}
}

module carveRing(diameter, thickness) {
	difference() {
		cylinder(h = thickness + 2, r = ((diameter + thickness) / 2));
		rotate_extrude() {
			translate(v = [((diameter + thickness) / 2), (thickness / 2) + 1, 0]) {
				circle(r = (thickness / 2));
			}
		}
	}
}

module cablePart(diameterTopTube, lengthTopTube, width, height, angle, thickness, offset, cut=false) {
	finalHeight = (diameterTopTube / 2) + height;
	rotate(a = [90, angle, 0]) {
		translate(v = [0, -(offset / 2), -(lengthTopTube / 2)]) {
			difference() {
				union() {
					translate(v = [-(width / 2), 0, 0]) {
						cube([width, (finalHeight - width / 2), lengthTopTube]);
					}
					translate(v = [0, (finalHeight - width / 2), 0]) {
						cylinder(h = lengthTopTube, r = (width / 2));
					}
				}
				if (cut == false) {
					union() {
						translate(v = [0, (finalHeight - width / 2), thickness]) {
							rotate(a = [180, 0, 0]) {
								carveHalfRoundTube(width - 2* thickness, thickness);
							}
						}
						translate(v = [0, (finalHeight - width / 2), lengthTopTube - thickness]) {
							carveHalfRoundTube(width - 2* thickness, thickness);
						}
					}
					union() {
						translate(v = [0, 0, -1]) {
							cylinder(h = (lengthTopTube + 2), r = (diameterTopTube / 2));
						}
						translate(v = [(-1) * ((width / 2)), 0, 0]) {
							difference() {
								translate(v = [-1, 0, -1]) {
									cube([thickness + 1, (finalHeight - width / 2) + 1, thickness + 1]);
								}
								rotate(a = [-90, 0, 0]) {
									translate(v = [thickness, -thickness, -1]) {
										cylinder(h = (finalHeight - width / 2) + 3, r = thickness);
									}
								}
							}
						}
						translate(v = [((width / 2)), 0, 0]) {
							difference() {
								translate(v = [-thickness, 0, -1]) {
									cube([thickness + 1, (finalHeight - width / 2) + 1, thickness + 1]);
								}
								rotate(a = [-90, 0, 0]) {
									translate(v = [-thickness, -thickness, -1]) {
										cylinder(h = (finalHeight - width / 2) + 3, r = thickness);
									}
								}
							}
						}
						translate(v = [(-1) * ((width / 2)), 0, lengthTopTube + 1]) {
							difference() {
								translate(v = [-1, 0, (-1) * (1 + thickness)]) {
									cube([thickness + 1, (finalHeight - width / 2) + 1, thickness + 1]);
								}
								rotate(a = [-90, 0, 0]) {
									translate(v = [thickness, thickness + 1, -1]) {
										cylinder(h = (finalHeight - width / 2) + 3, r = thickness);
									}
								}
							}
						}
						translate(v = [((width / 2)), 0, lengthTopTube + 1]) {
							difference() {
								translate(v = [-thickness, 0, (-1) * (1 + thickness)]) {
									cube([thickness + 1, (finalHeight - width / 2) + 1, thickness + 1]);
								}
								rotate(a = [-90, 0, 0]) {
									translate(v = [-thickness, thickness + 1, -1]) {
										cylinder(h = (finalHeight - width / 2) + 3, r = thickness);
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

module hexagon(size, height) {
	// http://svn.clifford.at/openscad/trunk/libraries/shapes.scad
	/*
	 *  OpenSCAD Shapes Library (www.openscad.org)
	 *  Copyright (C) 2009  Catarina Mota
	 *
	 *  This program is free software; you can redistribute it and/or modify
	 *  it under the terms of the GNU General Public License as published by
	 *  the Free Software Foundation; either version 2 of the License, or
	 *  (at your option) any later version.
	 *
	 *  This program is distributed in the hope that it will be useful,
	 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
	 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	 *  GNU General Public License for more details.
	 *
	 *  You should have received a copy of the GNU General Public License
	 *  along with this program; if not, write to the Free Software
	 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
	 *
	*/
	boxWidth = size/1.75;
	for (r = [-60, 0, 60]) rotate([0,0,r]) cube([boxWidth, size, height], true);
}

// Internal functions
function shellDiameter(nutDiameter, screwDiameter) = max(nutDiameter, screwDiameter);

function lengthTopTube(diameterLock, thickness) = diameterLock + (2 * thickness);

function screwBarWidth(shellDiameter, thickness) = shellDiameter + (thickness / 2);

function lockTubeOffset(diameterTopTube, shellDiameter, diameterLock, lengthTopTube, thickness) = (diameterTopTube + shellDiameter) / 2 + thickness + sqrt(pow(((shellDiameter + diameterLock) / 2) + thickness,2)-pow(((lengthTopTube - shellDiameter) / 2 - thickness), 2));
