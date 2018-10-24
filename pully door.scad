difference(){
    union(){
        cylinder(5,d=30,[0,0,0],$fn=25);
    }
    union(){
        intersection(){
                cylinder(5,d=5,[0,0,0],$fn=25);
                translate([-2.5,-1.5,0]) cube([5,3,5]);
        };
        difference(){
            translate([0,0,1]) cylinder(3,d=30,[0,0,0],$fn=25);
            cylinder(5,d=29,[0,0,0],$fn=25);
        }
        difference(){
            translate([0,0,1.5]) cylinder(2,d=30,[0,0,0],$fn=25);
            cylinder(5,d=28,[0,0,0],$fn=25);
        }
        difference(){
            translate([0,0,2]) cylinder(1,d=30,[0,0,0],$fn=25);
            cylinder(5,d=27,[0,0,0],$fn=25);
        }
        translate([10,0,0]) cylinder(5,d=3,[0,0,0],$fn=25);
        translate([10,0,2.5]) rotate([0.,90.,0]) cylinder(50,d=2.5,[0,0,0],$fn=25);
    };
};