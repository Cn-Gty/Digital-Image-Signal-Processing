# Gradiant Based Edge Detection
Please review the concepts about image gradiant.

The detector used:  

$$ 
  \ PrewittDetector: 
  \begin{Bmatrix}
    -1 & -1 & -1 \\
    0 & 0 & 0 \\
    1 & 1 & 1
  \end{Bmatrix} \tag{1}
$$

$$
  \ SobelDetector: 
  \begin{Bmatrix}
    -1 & -2 & -1 \\
    0 & 0 & 0 \\
    1 & 2 & 1
  \end{Bmatrix} \tag{2}
$$

$$
  \ Compass(45°): 
  \begin{Bmatrix}
    -3 & -3 & -3 \\
    -3 & 0 & 5 \\
    -3 & 5 & 5
  \end{Bmatrix} \tag{3}
$$

Remember, gradiant method is sensitive to noise, so filtering before edge detection is important. (Threshold can be used as a pre-operation.)
