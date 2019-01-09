difference(){
    union(){
        cube([40,40,4]);
        translate([20,0,0]) cylinder(4,4,4);
        
        translate([0,4,6.5]) rotate([0,90,0]) cylinder(4,4,4);
        translate([40-4,4,6.5]) rotate([0,90,0]) cylinder(4,4,4);
        translate([0,40-4,6.5]) rotate([0,90,0]) cylinder(4,4,4);
        translate([40-4,40-4,6.5]) rotate([0,90,0]) cylinder(4,4,4);
   
    };
    union(){
        translate([20,0,0]) cylinder(4,2,2);
        translate([0,4,6.5]) rotate([0,90,0]) cylinder(4,1.5,1.5,$fn=15);
        translate([40-4,4,6.5]) rotate([0,90,0]) cylinder(4,1.5,1.5,$fn=15);
        translate([0,40-4,6.5]) rotate([0,90,0]) cylinder(4,1.5,1.5,$fn=15);
        translate([40-4,40-4,6.5]) rotate([0,90,0]) cylinder(4,1.5,1.5,$fn=15);
    };
};

