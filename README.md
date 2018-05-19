

# ENG 06 WINTER 2015

PROJECT 3 - STEGANOGRAPHY

-TEAM SM -

                              Peter Alameda

                                Thuy Dao

                            Sindhu Senthilkumar

**APPENDIX**

Peter Alameda – All Embedded Methods (Odd/Even and Modulo 5),  All GUI programming, Written Report.

Thuy Dao – Expand function, Odd/Even Recovery Methods , GUI design, Written Report.

Sindhu Senthilkumar – Flatten function, Mod Recovery Methods , GUI design, Written Report.

- **Objective**

In Project 3 - Steganography we were required to use MATLAB software to conceal a given set of hidden images (10) into an inconspicuous image (The dog image). The general principle was to store the hidden image in the red, green, and blue channels of the RGB image without changing the pixel color by a perceivable amount.

- **Approaches**

Various techniques were used to approach to solve the problem for our project.

Methods-

- Flattening the Images- The matrices of the given hidden image had values ranging from 0 to 255. The threshold value that we chose for this purpose was 128. Thereby making 128-225 pixels dark and below 128 light. This produced a distinguishable black and white image.
- Expanding the Image- We expand a Black/White grayscale flatten Image (400x400x1) into a RGB Image (400x400x3) by creating a zero matrix of dimension (400x400x3) and filling each Red, Green, and Blue registry with 255 (white) to create a Black/White RGB Image.
- The embedding methods used were Odd/Even techniques for red, blue and green colors. Using functions such as loops, xor() and mod we found out the even and odd elements in the matrices of the normal image.
- Recovery Method- We created a zero matrix (400X400X1), and used nested for loops to recreate the image hidden in the embedded image.
- **Description of Functionality**

In a given time frame of two weeks we programmed a code that performed the required task without any error. We performed multiple trials using all the given 10 hidden images and created a graphic user interface (a user-friendly program) that encourages the user to interact with the code.

- **Examples of occurring errors while programming**
- Certain MATLAB in-built functions such as imshow, image, gray2ind etc. did not work on the computers. This was because an image processing tool was required for the project.
- Using AND and OR in the embedding methods code resulted in scattered black and white pixels in the recovered image. To fix this we used xor() function to get the recovered image.
- The flattened and expand function matrix sizes did not agree with the dimensions of the given hidden images. We revised over the code and made it a nXnX3 matrix.
- Mod methods merges in the hidden images on the original when embedded. We found that this was due to a coding error (bug). However we found that it works perfectly in recovery methods therefore performing the assigned task.
- GUI didn&#39;t work because of not including guidata (hObject, handles) to update the handles structure.

**Bibliography**

- [**http://en.wikipedia.org/wiki/Steganography**](http://en.wikipedia.org/wiki/Steganography)
- [**http://www.mathworks.com/videos/creating-a-gui-with-guide-68979.html**](http://www.mathworks.com/videos/creating-a-gui-with-guide-68979.html)
- [**http://www.mathworks.com/help/matlab/ref/mod.html**](http://www.mathworks.com/help/matlab/ref/mod.html)
- [**https://nf.nci.org.au/facilities/software/Matlab/techdoc/creating\_plots/chhand37.html**](https://nf.nci.org.au/facilities/software/Matlab/techdoc/creating_plots/chhand37.html)
- [**http://www.academia.edu/5756954/Implementation\_of\_steganographic\_techniques\_in\_matlab\_Project\_Report**](http://www.academia.edu/5756954/Implementation_of_steganographic_techniques_in_matlab_Project_Report)

