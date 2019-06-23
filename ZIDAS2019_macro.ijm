//** Joanna (gmail, aska)
/**20190623 first repository ever for ZIDAS2019
*/

run("Blobs (25K)");
run("Focus Search Bar");
run("Gaussian Blur...", "sigma=2");
setAutoThreshold("Default dark");
//run("Threshold...");
setAutoThreshold("Default");
//setThreshold(124, 255);
setOption("BlackBackground", true);
run("Convert to Mask");
selectWindow("blobs.gif");
run("Watershed");
run("Analyze Particles...", "display exclude clear summarize add");
saveAs("Results", "C:/Work_Lim/ZIDAS2019/Reproducible_IA/Summary_blobs.csv");
saveAs("Results", "C:/Work_Lim/ZIDAS2019/Reproducible_IA/Results_blobs.csv");
run("Select All");
roiManager("Select", newArray(0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47));
roiManager("Save", "C:/Work_Lim/ZIDAS2019/Reproducible_IA/RoiSet_blobs.zip");
run("Close");
close();