difference(){ 
    union(){
        difference(){
            union(){
                cylinder(50,60,60,[0,0,0]);
            };
            union(){
                for (a=[1:14]){
                    rotate([0,0,(a+0.5)*360/16]){
                        translate([0,-5/2.,21/2.]) cube([100,5,5]);
                    };
                };
                for (a=[2:14]){
                    rotate([0,0,a*360/16]){    
                        translate([0,-10/2.,25]) cube([100,10,50]);
                    };
                };
            };
        };
        difference(){
            union(){
                translate([51,-20,0]) cube([32,40,40]);
                rotate([0,-40,0]) translate([82,0,-100]) cylinder(100,27,27,[0,0,0]);
            }
            union(){
                rotate([0,-40,0]) translate([82,0,-101]) cylinder(90,18,18,[0,0,0]);
                translate([80,50,37]) rotate([90,0,0]) cylinder(100,4,4,[0,0,0]);
                translate([98,50,15]) rotate([90,0,0]) cylinder(100,4,4,[0,0,0]);
            }
        }
    };
    union(){
         cylinder(50,52,52,[0,0,0]);
         translate([-200,-200,-100]) cube([400,400,100]);
    };
};