difference(){
    union(){
        
        translate([0,0,0]) cube([3,8,50]);
        translate([0,0,0]) cube([4,8,2]);
        translate([-25,0,50]) cube([53,8,2]);
        
    };
    union(){
        translate([25,4,50]) cylinder(4,1.2,$fn=20);
        translate([-25+3,4,50]) cylinder(4,1.2,$fn=20);
    };
 };
