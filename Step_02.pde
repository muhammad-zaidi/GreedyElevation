/**
 * MINIMUM VALUE
 *
 * @param data a 2D array from which you want to find the minimum value
 * @return the minimum value in the given 2D Array
 */
public static int findMin( int[][] data ) {
int min = Integer.MAX_VALUE;                   //Set "min" to max integer value, because nothing can be higher than that, so something will always be lower than this
for (int r = 0; r < data.length; r++) {        //Go through each row
  for (int c = 0; c < data[r].length; c++) {   //Go through each column
    if (data[r][c] < min) {                    //If value at that specific row and column is smaller than the min, it becomes the min
      min = data[r][c];
    }
  }
}



  return min; //Return minimum value
  
}

/**
 * MAXIMUM VALUE
 *
 * @param data a 2D array from which you want to find the minimum value
 * @return the minimum value in the given 2D Array
 */
public static int findMax( int[][] data ) {
int max = Integer.MIN_VALUE;                   //Set max to min value of an integer because something will always be bigger than it, so it will become the max
for (int r = 0; r < data.length; r++) {        //Go through each row
  for (int c = 0; c < data[r].length; c++) {   //Go through each column
    if (data[r][c] > max) {                    //If value at that specific row and column is bigger than initial max value, it becomes the max
      max = data[r][c];
    }
  }
}
  return max; //Return maximum value;
  
}
