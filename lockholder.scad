// Resolution
$fn=20;

lockHolderSet
(
	diameterTopTube = 31.75+0.5,
// Diameter of your bike's top tube (or any other tube on which you want to mount the lockholder)

	lengthLock = 50,
// The length of the tube where you put the lock through. The longer the less vibrations while riding. On the other hand, if the the tube gets too long it might be clumsy

	diameterLock = 19+1,
// Diameter of the lock (this will be the inner diameter of the part that holds the lock)

	nutSizeOuter = 8+1,
// The outer diameter of your hexagonal screw nut A/F in the picture here (http://en.wikipedia.org/wiki/Nut_%28hardware%29#Standard_metric_hex_nuts_sizes)

	nutSizeInner = 4.55+1,
// Diameter of your screw thread

	thickness = 4,
// Material thickness

	offset = 0,
// Offset between upper and lower part of the lockholder. The bigger this value is, the tighter you can screw the lockholder on your bike. However, if offset is getting too big, the material might break while fastening the screw. Normally the lockholders arc would bend down a bit anyway while printing. In this case you can relax and set this value to zero. Otherwise you might want to set it to 1 or 2 mm. If you don't understand the purpose of this variable, try setting it to a large fraction of diameterTopTube and check the result - then you will probably understand it.

	screwOffsetShare = 0.75,
// This value allows to master the thickness of the screwholes as a schare of <thickness>. At 1, there is no difference to normal thickness, at 0 there is no material to fix the screw. To be on the save side this should be 1 or not to much lower.

// You can adjust the design for cables going above or below the top tube. These cables typically go to the brakes or to the shifter. The script allows up to three "cable cuts" both above and below the top tube. To make a cable cut, you must provide its width and height. Optional, you can also provide an angle. The definition may look like this:
	bottomCable1Width = 5,
	bottomCable1Height = 4,
	bottomCable1Angle = 0
// Width and height are defined in mm. The angle is provided in degrees (also negative values are possible). These lines define the first of three bottom cable cuts. To define more bottom cable cuts, replace "1" with "2" and/or "3". To define a top cable cut, replace "bottom" with "top".
);

// lockholder v 2.2

// Functions
// - Set of Top Part and Bottom Part
module lockHolderSet
(
	diameterTopTube = 30,
	lengthLock = 50,
	diameterLock = 15,
	nutSizeOuter = 10,
	nutSizeInner = 6,
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
	lengthTopTube = lengthTopTube(diameterLock, nutSizeOuter, thickness);
	screwBarWidth = screwBarWidth(nutSizeOuter, thickness);

	translate(v = [(diameterTopTube / 2) + screwBarWidth + (1.5 * thickness), 0, 0]) {
		topPart(diameterTopTube, diameterLock, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare, topCable1Width, topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle);
	}

	translate(v = [(-1) * ((diameterTopTube / 2) + screwBarWidth + (1.5 * thickness)), 0, 0]) {
		rotate(a = [0, 0, 180]) {
			bottomPart(diameterTopTube, lengthLock, diameterLock, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare, bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
		}
	}
}

// - Complete Set of 2 Top Parts and 2 Bottom Parts
module completeLockHolderSet
(
	diameterTopTube = 30,
	lengthLock = 50,
	diameterLock = 15,
	nutSizeOuter = 10,
	nutSizeInner = 6,
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
	lengthTopTube = lengthTopTube(diameterLock, nutSizeOuter, thickness);
	screwBarWidth = screwBarWidth(nutSizeOuter, thickness);

	translate(v = [0, (lengthTopTube + thickness) / 2, 0]) {
		lockHolderSet(diameterTopTube, lengthLock, diameterLock, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare, topCable1Width,	topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle,	bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
	}

	translate(v = [0, (-1) * ((lengthTopTube + thickness) / 2), 0]) {
		lockHolderSet(diameterTopTube, lengthLock, diameterLock, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare, topCable1Width,	topCable1Height, topCable1Angle, topCable2Width, topCable2Height, topCable2Angle, topCable3Width, topCable3Height, topCable3Angle,	bottomCable1Width, bottomCable1Height, bottomCable1Angle, bottomCable2Width, bottomCable2Height, bottomCable2Angle, bottomCable3Width, bottomCable3Height, bottomCable3Angle);
	}
}

// Object with cables
// - Top Part
module topPart
(
	diameterTopTube = 30,
	diameterLock = 15,
	nutSizeOuter = 10,
	nutSizeInner = 6,
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
	lengthTopTube = lengthTopTube(diameterLock, nutSizeOuter, thickness);
	difference() {
		union() {
			topPartPlain
			(
				diameterTopTube,
				diameterLock,
				nutSizeOuter,
				nutSizeInner,
				thickness,
				offset,
				screwOffsetShare
			);
			union() {
				if (cable1Height > 0 && cable1Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable1Width + (2 * thickness)), (cable1Height + thickness), cable1Angle);
				}
				if (cable2Height > 0 && cable2Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable2Width + (2 * thickness)), (cable2Height + thickness), cable2Angle);
				}
				if (cable3Height > 0 && cable3Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable3Width + (2 * thickness)), (cable3Height + thickness), cable3Angle);
				}
			}
		};
		union() {
			if (cable1Height > 0 && cable1Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable1Width, cable1Height, cable1Angle, true);
			}
			if (cable2Height > 0 && cable2Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable2Width, cable2Height, cable2Angle, true);
			}
			if (cable3Height > 0 && cable3Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable3Width, cable3Height, cable3Angle, true);
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
	nutSizeOuter = 10,
	nutSizeInner = 6,
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
	lengthTopTube = lengthTopTube(diameterLock, nutSizeOuter, thickness);
	difference() {
		union() {
			bottomPartPlain
			(
				diameterTopTube,
				lengthLock,
				diameterLock,
				nutSizeOuter,
				nutSizeInner,
				thickness,
				offset,
				screwOffsetShare
			);
			union() {
				if (cable1Height > 0 && cable1Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable1Width + (2 * thickness)), (cable1Height + thickness), cable1Angle);
				}
				if (cable2Height > 0 && cable2Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable2Width + (2 * thickness)), (cable2Height + thickness), cable2Angle);
				}
				if (cable3Height > 0 && cable3Width > 0) {
					cablePart(diameterTopTube, lengthTopTube, (cable3Width + (2 * thickness)), (cable3Height + thickness), cable3Angle);
				}
			}
		};
		union() {
			if (cable1Height > 0 && cable1Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable1Width, cable1Height, cable1Angle, true);
			}
			if (cable2Height > 0 && cable2Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable2Width, cable2Height, cable2Angle, true);
			}
			if (cable3Height > 0 && cable3Width > 0) {
				cablePart(diameterTopTube, (lengthTopTube + 2), cable3Width, cable3Height, cable3Angle, true);
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
	nutSizeOuter,
	nutSizeInner,
	thickness,
	offset,
	screwOffsetShare
)
{
	lengthTopTube = lengthTopTube(diameterLock, nutSizeOuter, thickness);
	screwBarWidth = screwBarWidth(nutSizeOuter, thickness);

	translate(v = [0, lengthTopTube / 2, 0]) {
		topPart1(lengthTopTube, diameterTopTube, diameterLock, screwBarWidth, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare);
		translate(v = [0, (-1) * (nutSizeOuter + (thickness / 2)), 0]) {
			doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
		}
		translate(v = [0, (-1) * (lengthTopTube - (nutSizeOuter + (1.5 * thickness))), 0]) {
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
	nutSizeOuter,
	nutSizeInner,
	thickness,
	offset,
	screwOffsetShare
)
{
	lengthTopTube = lengthTopTube(diameterLock, nutSizeOuter, thickness);
	screwBarWidth = screwBarWidth(nutSizeOuter, thickness);

	translate(v = [0, lengthTopTube / 2, 0]) {
		difference() {
			union() {
				bottomPart1(lengthTopTube, diameterTopTube, lengthLock, diameterLock, screwBarWidth, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare);
				translate(v = [0, (-1) * (nutSizeOuter + (thickness / 2)), 0]) {
					doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
				}
				translate(v = [0, (-1) * (lengthTopTube - (nutSizeOuter + (1.5 * thickness))), 0]) {
					doubleStabilityBracing(diameterTopTube, screwBarWidth, thickness, offset);
				}
				translate(v = [0, (-1) * ((lengthTopTube - thickness) / 2), 0]) {
					lockBracing(diameterTopTube, lengthLock, thickness, offset);
				}
			}
			translate(v = [((diameterTopTube + diameterLock) / 2)+ thickness, (-1) * (lengthTopTube / 2), (lengthLock - (thickness / 2))]) {
				carveRoundTube(diameterLock, thickness);
			}
			translate(v = [((diameterTopTube + diameterLock) / 2)+ thickness, (-1) * (lengthTopTube / 2), 0]) {
				rotate(a = [180, 0, 0]) {
					difference() {
						translate(v = [0, 0, (-1) * (thickness / 2)]) {
						carveRoundTube(diameterLock, thickness);
						}
						difference() {
							translate(v = [screwBarWidth - diameterLock, 0, (-1) * thickness / 2]) {
								cube(size = [diameterLock, diameterLock + (2 * thickness) + 2, thickness + 2], center = true);
							}
							translate(v = [0, 0, (-1) * ((thickness + 4) / 2)])
							cylinder(h = thickness + 4, r = (diameterLock + thickness) / 2);
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
		translate(v = [((-1) * (diameter + (2 * thickness))) / 2, (-1) * ((diameter / 2) + thickness) - 1, -1]) {
			cube([diameter + (2 * thickness), (diameter / 2) + thickness +1 + (offset / 2), height + 2]);
		}
	}
}

module screwBar(nutSizeOuter, lengthTopTube, diameterTopTube, thickness, offset, screwOffsetShare) {
	difference() {
		union() {
			hull() {
				translate(v = [((diameterTopTube + nutSizeOuter) / 2) + thickness, thickness + (offset / 2), (nutSizeOuter + thickness) / 2]) {
					rotate(a = [90, 0, 0]) {
						cylinder(r = ((nutSizeOuter + thickness) / 2), h = thickness);
					}
				}
				translate(v = [(-1) * (((diameterTopTube + nutSizeOuter) / 2) + thickness), thickness + (offset / 2), (nutSizeOuter + thickness) / 2]) {
					rotate(a = [90, 0, 0]) {
						cylinder(r = (nutSizeOuter + thickness) / 2, h = thickness);
					}
				}
				translate(v = [((diameterTopTube + nutSizeOuter) / 2) + thickness, thickness + (offset / 2), lengthTopTube - ((nutSizeOuter + thickness) / 2) ]) {
					rotate(a = [90, 0, 0]) {
						cylinder(r = ((nutSizeOuter + thickness) / 2), h = thickness);
					}
				}
				translate(v = [(-1) * (((diameterTopTube + nutSizeOuter) / 2) + thickness), thickness + (offset / 2), lengthTopTube - ((nutSizeOuter + thickness) / 2)]) {
					rotate(a = [90, 0, 0]) {
						cylinder(r = ((nutSizeOuter + thickness) / 2), h = thickness);
					}
				}
			}
			positionShells(nutSizeOuter, diameterTopTube + (2 * thickness), lengthTopTube, thickness, offset, screwOffsetShare);
		}
		translate(v = [0, 0, -1]) {
			cylinder(r = diameterTopTube / 2, h = lengthTopTube + 2);
		}
	}
}

module tubeWithBar(lengthTopTube, diameterTopTube, nutSizeOuter, thickness, offset, screwOffsetShare) {
	union() {
		halfTube(lengthTopTube, diameterTopTube, thickness, offset);
		screwBar(nutSizeOuter, lengthTopTube, diameterTopTube, thickness, offset, screwOffsetShare);
	}
}

module makeShell(diameter, thickness, offset, screwOffsetShare) {
	translate(v = [0, ((1 + screwOffsetShare) * thickness) + (offset / 2), 0]) {
		rotate(a = [90, 0, 0]) {
			cylinder(r = (diameter + thickness) / 2, h = thickness);
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

module positionNuts(diameter, plateSizeX, plateSizeY, thickness, screwOffsetShare) {
	translate(v = [(plateSizeX + diameter) / 2, 0, ((diameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(plateSizeX + diameter) / 2, 0, plateSizeY - ((diameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + diameter) / 2), 0, ((diameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + diameter) / 2), 0, plateSizeY - ((diameter + thickness) / 2)]) {
		makeNut(diameter, thickness, screwOffsetShare);
	}
}

module positionScrewHeadHoles(diameter, plateSizeX, plateSizeY, thickness, screwOffsetShare) {
	translate(v = [(plateSizeX + diameter) / 2, 0, ((diameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(plateSizeX + diameter) / 2, 0, plateSizeY - ((diameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + diameter) / 2), 0, ((diameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
	translate(v = [(-1) * ((plateSizeX + diameter) / 2), 0, plateSizeY - ((diameter + thickness) / 2)]) {
		screwHeadHole(diameter, thickness, screwOffsetShare);
	}
}

module positionScrewHoles(diameterInner, diameterOuter, plateSizeX, plateSizeY, thickness) {
	translate(v = [(plateSizeX + diameterOuter) / 2, 0, ((diameterOuter + thickness) / 2)]) {
		screwHole(diameterInner, thickness);
	}
	translate(v = [(plateSizeX + diameterOuter) / 2, 0, plateSizeY - ((diameterOuter + thickness) / 2)]) {
		screwHole(diameterInner, thickness);
	}
	translate(v = [(-1) * ((plateSizeX + diameterOuter) / 2), 0, ((diameterOuter + thickness) / 2)]) {
		screwHole(diameterInner, thickness);
	}
	translate(v = [(-1) * ((plateSizeX + diameterOuter) / 2), 0, plateSizeY - ((diameterOuter + thickness) / 2)]) {
		screwHole(diameterInner, thickness);
	}
}

module nutHolesComplete(diameterOuter, diameterInner, plateSizeX, plateSizeY, thickness, offset, screwOffsetShare) {
	translate(v = [0, offset / 2, 0]) {
		union() {
			positionNuts(diameterOuter, plateSizeX, plateSizeY, thickness, screwOffsetShare);
			positionScrewHoles(diameterInner, diameterOuter, plateSizeX, plateSizeY, thickness);
		}
	}
}

module screwHeadHolesComplete(diameterOuter, diameterInner, plateSizeX, plateSizeY, thickness, offset, screwOffsetShare) {
	translate(v = [0, offset / 2, 0]) {
		union() {
			positionScrewHeadHoles(diameterOuter, plateSizeX, plateSizeY, thickness, screwOffsetShare);
			positionScrewHoles(diameterInner, diameterOuter, plateSizeX, plateSizeY, thickness);
		}
	}
}

module topPart1(lengthTopTube, diameterTopTube, diameterLock, screwBarWidth, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare) {
translate(v = [0, 0, (-1) * (offset / 2)]) {
		rotate(a = [90, 0, 0]) {
			difference() {
				difference() {
					tubeWithBar(lengthTopTube, diameterTopTube, nutSizeOuter, thickness, offset, screwOffsetShare);
					screwHeadHolesComplete(nutSizeOuter, nutSizeInner, diameterTopTube + (2 * thickness), lengthTopTube, thickness, offset, screwOffsetShare);
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

module bottomPart1(lengthTopTube, diameterTopTube, lengthLock, diameterLock, screwBarWidth, nutSizeOuter, nutSizeInner, thickness, offset, screwOffsetShare) {
	translate(v = [0, 0, (-1) * (offset / 2)]) {
		rotate(a = [90, 0, 0]) {
			difference() {
				union() {
					difference() {
						tubeWithBar(lengthTopTube, diameterTopTube, nutSizeOuter, thickness, offset, screwOffsetShare);
						nutHolesComplete(nutSizeOuter, nutSizeInner, diameterTopTube + (2 * thickness), lengthTopTube, thickness, offset, screwOffsetShare);
					}
	// -- Lock Tube
					translate(v = [((diameterTopTube + diameterLock) / 2) + thickness, lengthLock + (offset / 2), lengthTopTube / 2]) {
						rotate(a = [90, 0, 0]) {
							tube(lengthLock, diameterLock, thickness);
						}
					}
				}
	// -- Hole for Lock Tube
				translate(v = [((diameterTopTube + diameterLock) / 2) + thickness, lengthLock + 1 + (offset / 2), lengthTopTube / 2]) {
						rotate(a = [90, 0, 0]) {
							cylinder(r = diameterLock / 2, h = lengthLock + 2);
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
					polygon(points = [[0, thickness], [(diameterTopTube / 2) + screwBarWidth + thickness, thickness], [0, ((diameterTopTube - offset) / 2) + thickness]], paths = [[0, 1, 2]]);
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

module lockBracing(diameterTopTube, lengthLock, thickness, offset) {
	rotate(a = [90, 0, 0]) {
		difference() {
			linear_extrude(height = thickness) {
				polygon(points = [[0, 0], [(diameterTopTube / 2) + thickness, 0], [(diameterTopTube / 2) + thickness, lengthLock], [0, ((diameterTopTube - offset) / 2) + thickness]], paths = [[0, 1, 2, 3]]);
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

module cablePart(diameterTopTube, lengthTopTube, width, height, angle, cut=false) {
	finalHeight = (diameterTopTube / 2) + height;
	rotate(a = [90, angle, 0]) {
		translate(v = [0, 0, -(lengthTopTube / 2)]) {
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
					translate(v = [0, 0, -1]) {
						cylinder(h = (lengthTopTube + 2), r = (diameterTopTube / 2));					}
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
function lengthTopTube(diameterLock, nutSizeOuter, thickness) = diameterLock + (2 * nutSizeOuter) + (3 * thickness);

function screwBarWidth(nutSizeOuter, thickness) = nutSizeOuter + (thickness / 2);
