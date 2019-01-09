difference(){
    union(){
        translate([-9,0,0]) cube([58,40,4]);
        translate([20,0,0]) cylinder(4,4,4);
        
        translate([0,3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
        translate([40-3,3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
        translate([0,40-3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
        translate([40-3,40-3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
         
        translate([-9,3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
        translate([40-3+9,3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
        translate([-9,40-3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
        translate([40-3+9,40-3,6.5]) rotate([0,90,0]) cylinder(3,4,4);
   
    };
    union(){
        translate([-6,0,0]) cube([6,10+3+3,4]);
        translate([-6,40-16,0]) cube([6,10+3+3,4]);
        translate([40,0,0]) cube([6,10+3+3,4]);
        translate([40,40-16,0]) cube([6,10+3+3,4]);
        translate([20,0,0]) cylinder(4,2,2);
        
        translate([0,3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
        translate([40-3,3,6.5]) rotate([0,90,0]) cylinder(3,1.1,1.2,$fn=15);
        translate([0,40-3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
        translate([40-3,40-3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
        
        translate([2,3,6.5]) rotate([0,90,0]) cylinder(1,2.5,2.5,$fn=6);
        translate([40-3,3,6.5]) rotate([0,90,0]) cylinder(1,2.5,2.5,$fn=6);
        translate([2,40-3,6.5]) rotate([0,90,0]) cylinder(1,2.5,2.5,$fn=6);
        translate([40-3,40-3,6.5]) rotate([0,90,0]) cylinder(1,2.5,2.5,$fn=6);
    
        
        translate([-9,3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
        translate([40-3+9,3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
        translate([-9,40-3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
        translate([40-3+9,40-3,6.5]) rotate([0,90,0]) cylinder(3,1.2,1.2,$fn=15);
    };
};

