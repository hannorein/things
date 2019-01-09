difference(){
    union(){
        translate([10,100./8.*4,0]) cylinder(4,4,4);
        cube([10,100,4]);
        for(i=[0:8]){ translate([0,100./8.*i,0]) cylinder(4,4,4); };
    };
    union(){
        
        translate([10,100./8.*4,0]) cylinder(4,2,2);
        for(i=[0:8]){ translate([0,100./8.*i,0]) cylinder(4,2,2); };
    };
};
