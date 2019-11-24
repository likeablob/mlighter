include <scad-utils/mirror.scad>
include <scad-utils/morphology.scad>

$fn=30;

BODY_X=32;
BODY_Y=32;
BODY_Z=3.2;

module shell() {
  difference(){
    hull() {
      translate([0, 0, BODY_Z]) 
      linear_extrude(height=0.001, center=!false, convexity=10, twist=0)
      rounding(r=2)
      square(size=[BODY_X, BODY_Y], center=true);

      translate([0, 0, 2]) 
      linear_extrude(height=0.001, center=!false, convexity=10, twist=0)
      rounding(r=2)
      square(size=[BODY_X, BODY_Y], center=true);

      linear_extrude(height=0.001, center=!false, convexity=10, twist=0)
      rounding(r=2)
      square(size=[BODY_X-2, BODY_Y-2], center=true);    
    }

    translate([0, 0, -0.01]) 
    linear_extrude(height=BODY_Z, center=false, convexity=10, twist=0)
    rounding(r=1)
    square(size=[BODY_X-3, BODY_Y-3], center=true);

    translate([0, 0, 1.5]) 
    linear_extrude(height=BODY_Z, center=false, convexity=10, twist=0)
    rounding(r=2)
    square(size=[BODY_X-1.2, BODY_Y-1.2], center=true);
  }
}

shell();
