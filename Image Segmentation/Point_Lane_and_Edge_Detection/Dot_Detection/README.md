# Dot Detection
This part is using laplacian filter as a detector for dot detection.
## Instructions
- .m file is the MATLAB illustration of dot detection.
- In the result figure (named as Dot_Detection.jpg), we can see that by using ***Laplacian Filter***, the dot is detected.
- The original dot has the coordinates as (30,30). The size of image is 100\*100.
- No matter the backgroud is black or white, the left-top corner after filtering the original image is (29,29).
- We can find out that by using filter like:  

$$
  \begin{bmatrix}
  1 & 1 & 1 \\
  1 & -8 & 1 \\
  1 & 1 & 1
  \end{bmatrix}
$$

we can always get the outside edge of that dot.
