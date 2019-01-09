difference(){
    union(){
        translate([0,0,0]) cylinder(4,10,10,$fn=80);
        translate([0,0,4]) cylinder(1,3,3,$fn=20);
    };
    union(){
        translate([0,0,0]) cylinder(5,1.5,1.5,$fn=20);
    };
};
