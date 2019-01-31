difference(){
    union(){
        for (i=[0:0.5:5]){
            translate([30.5,0,0+i]) cylinder(h=0.5,d=30-i,$fn=50);    
            translate([30.5,0,15.6-0.5-i]) cylinder(h=0.5,d=30-i,$fn=50);    
        }
        translate([30.5,0,0]) cylinder(h=15,d=24.5,$fn=50);    
        
        cylinder(h=5,d=30,$fn=50);
        translate([10.5,0,0]) cylinder(h=8,d=6,$fn=50);
        
        translate([0,10+2,25]) rotate([90,0,0]){ cylinder(h=4,d=30,$fn=50);};
        translate([-15,10-2,0]) cube([30,4,25]);
        
        translate([0,-20,0]){
        translate([0,10+2,25]) rotate([90,0,0]){ cylinder(h=4,d=30,$fn=50);};
        translate([-15,10-2,0]) cube([30,4,25]);
        };
        
    };
    union(){
        translate([30.5,0,0]) cylinder(h=300,d=2.7,$fn=50);
    
        translate([10.5,0,0]) cylinder(h=8,d=2.7,$fn=50);
        translate([0,10+42,25]) rotate([90,0,0]){ cylinder(h=400,d=2.7,$fn=50);};
    };
 };
