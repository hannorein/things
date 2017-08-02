$fs=0.2;$fa=2;

intersection() {
	translate(v = [0, 0, -306.6241587606]) {
		union() {
			intersection() {
				sphere(r = 327.9000000000);
				cube(center = true, size = [1311.6000000000, 168.8200000000, 1311.6000000000]);
			}
			translate(v = [-100.3025536994, 0, 312.5844848258]) {
				sphere(r = 1.1487000000);
			}
			translate(v = [-93.7703742550, 0, 315.1973566547]) {
				sphere(r = 2.8497000000);
			}
			translate(v = [-85.2433742091, 0, 317.6614190509]) {
				sphere(r = 3.0000000000);
			}
			translate(v = [-77.7515512740, 0, 319.0960277072]) {
				sphere(r = 1.5960000000);
			}
			translate(v = [-42.1214778254, 0, 336.2419634814]) {
				sphere(r = 32.9100000000);
			}
			translate(v = [23.0745727337, 0, 336.2492017733]) {
				union() {
					sphere(r = 27.4200000000);
					rotate(a = [0, 90, 0]) {
						cylinder(center = true, h = 8.0000000000, r = 56.8350000000);
					}
				}
			}
			translate(v = [65.1898347962, 0, 325.4155552524]) {
				sphere(r = 11.9430000000);
			}
			translate(v = [91.2527258835, 0, 318.9685803395]) {
				sphere(r = 11.5950000000);
			}
            translate(v = [107.2527258835, 0, 309.9685803395]) {
				sphere(r = 0.54225991);
			}
		}
	}
	translate(v = [0, 0, 655.8000000000]) {
		cube(center = true, size = [1311.6000000000, 1311.6000000000, 1311.6000000000]);
	}
}



size1 = 25;

intersection(){
    translate(v = [0, 0, -306.6241587606]) {
sphere(r = 330.9000000000);
    }
translate(v = [0, -70, 0]) {
    rotate([0,0,0]){
linear_extrude(height=20, convexity=4)
                text("UTSC", 
                     size=size1,
                     font="Bitstream Vera Sans",
                     halign="center",
                     valign="center");
        }
    };
};



size = 25;

intersection(){
    translate(v = [0, 0, -306.6241587606]) {
sphere(r = 330.9000000000);
    }
    
translate(v = [0, 70, 0]) {
    rotate([0,0,180]){
linear_extrude(height=20, convexity=8)
                text("Solar Walk", 
                     size=size,
                     font="Bitstream Vera Sans",
                     halign="center",
                     valign="center");
        }
    };
}
