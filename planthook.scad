difference(){
    union(){
        cylinder(3,16,16,[0,0,0]);
        translate([0,13,0]) cube([50,3,3]);
        translate([0,-16,0]) cube([50,3,3]);
    };
    union(){
        cylinder(3,13,13,[0,0,0]);
        translate([0,-13,0]) cube([50,26,3]);
    }
};
