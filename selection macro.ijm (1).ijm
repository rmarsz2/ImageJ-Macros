macro "selection Tool - C0a0L18f8L818f" {
	dg_title = "Set Selection Size Parameters";
	width=1024; height=1024;
	Dialog.create(dg_title);
	Dialog.addNumber("Width:", width);
	Dialog.addNumber("Height:", height);
	Dialog.show();
	width = Dialog.getNumber();
	height = Dialog.getNumber();;
    getCursorLoc(x, y, z, flags);
	makeRectangle(x-(width/2), y-(height/2), width, height);
	run("Duplicate...", "duplicate");
    print("Sample: "+x+" "+y);
	Table.create("Image Coordinates");
	Table.set("X",0,x);
	Table.set("Y",0,y);
	Table.set("w",0,width);
	Table.set("h",0,height);
}
