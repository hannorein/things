difference(){
    union(){
        
        translate([25-1.5,0,0]) cube([3,4,70]);
        translate([40,2,0]) cylinder(4,d=31,$fn=50);
        
    };
    union(){
        translate([25,2,70-0.5]) cylinder(4,0.6,$fn=20);
        translate([40,2,2]) cylinder(2,d=26,$fn=50);
    };
 };
