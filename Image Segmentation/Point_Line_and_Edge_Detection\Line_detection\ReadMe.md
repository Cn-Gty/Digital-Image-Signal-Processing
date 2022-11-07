# Lane Detection
In this part, two MATLAB files are added in this folder. One presents the basic horizontal line detection, the other presents a rotated line detection.
1. Two filters
One is Laplacian filter, the other is:

$$
  \begin{Bmatrix}
    1 & 1 & 1 \\
    -2 & -2 & -2 \\
    1 & 1 & 1
  \end{Bmatrix}
$$

2. Absolute operation
Note that during filtering using the filters provided above, some minus('-') values are produced, hence sometimes abs operation can be used. 
In the jpg results, we can see that we use only positive values instead of negative values.
