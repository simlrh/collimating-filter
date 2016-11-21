fillerfilter();

// The standard filter
module filter() {
  difference() {
    union() {
      difference() {
        cube([150,145,30]);
        translate([2,2,-5]) cube([146,141,40]);
      }
      translate([2,2,0]) {
        difference() {
          cube([146, 141, 30]);
          translate([0,0,-5]) {
            for (j = [0:16:145]) {
              for (i = [0:10:145]) {
                translate([i,j,0]) rotate([0,0,30]) cylinder(h=40, d=10, $fn=6);
                translate([i+5,j+8,0]) rotate([0,0,30]) cylinder(h=40, d=10, $fn=6);
              }
            }
          }
        }
      }
      cube([5,145,30]);
      translate([145,0,0]) cube([5,125,30]);
    }
    hull() {
      translate([-1, -1, 8.5]) cube([5,152,3]);
      translate([-5, -1, 11.5]) cube([5,152,3]);
    }
    hull() {
      translate([146, -1, 8.5]) cube([5,152,3]);
      translate([151, -1, 11.5]) cube([5,152,3]);
    }
  }
}

// The filter resized to fit the Replicator, with wall widths optimised for Replicator
module r1dfilter() {
  difference() {
    union() {
      difference() {
        cube([150,125,30]);
        translate([2,2,-5]) cube([146,121,40]);
      }
      translate([2,2,0]) {
        difference() {
          cube([146, 121, 30]);
          translate([0,0,-5]) {
            for (j = [0:15.5:125]) {
              for (i = [0:9:145]) {
                translate([i,j,0]) rotate([0,0,30]) cylinder(h=40, d=10, $fn=6);
                translate([i+4.5,j+7.75,0]) rotate([0,0,30]) cylinder(h=40, d=10, $fn=6);
              }
            }
          }
        }
      }
      cube([5,125,30]);
      translate([145,0,0]) cube([5,125,30]);
    }
    hull() {
      translate([-1, -1, 8.5]) cube([5,152,3]);
      translate([-5, -1, 12.5]) cube([5,152,3]);
    }
    hull() {
      translate([146, -1, 8.5]) cube([5,152,3]);
      translate([151, -1, 12.5]) cube([5,152,3]);
    }
  }
}

// Sized to fit the Replicator, no holes (use slicer infill settings to generate honeycomb)
module fillerfilter() {
  difference() {
    cube([150,125,30]);
    hull() {
      translate([-1, -1, 8.5]) cube([5,152,3]);
      translate([-5, -1, 12.5]) cube([5,152,3]);
    }
    hull() {
      translate([146, -1, 8.5]) cube([5,152,3]);
      translate([151, -1, 12.5]) cube([5,152,3]);
    }
  }
}