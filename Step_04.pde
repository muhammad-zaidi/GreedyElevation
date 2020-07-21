/**
 * Search a single column of a 2D array and return the index of the row that
 * contains the smallest value
 *
 * @param grid a 2D array
 * @col the column in the 2D array to process
 * @return the index of smallest value from grid at the given col
 */
public int indexOfMinInCol(int[][] grid, int col) {
  //VARIABLES
  int min = Integer.MAX_VALUE;                      //Set variable "min" to max integer value because any other elevation value will be lower than it, so it works for all cases
  int minRow = 0;
  //PROCESSING
  for (int r = 0; r < grid.length; r++) {           //Go through each row
    if (grid[r][col] < min) {                       //If the elevation at that specific row at given column is smaller than initial min, it becomes the min
      min = grid[r][col];
      minRow = r;                                   //Set "minRow" to index of row of that minimum elevation
    }
  }
  //OUTPUT
  return minRow; //Return index of minimum row
  
}
