/**
 * Generate all west-to-east paths, find the one with the lowest total
 * elevation change, and return the index of the row that path starts on.
 *
 * @param grid - the 2D array of elevation values
 * @return the index of the row where the lowest elevation-change path
 * starts.
 */
public int indexOfLowestElevPath( int[][] data ) {
  //VARIABLES
  int index = 0;
  int change = 0;
  int minChange = drawLowestElevPath(data,0);           //set the minimum change to the first row for now.
  //PROCESSING
  for (int r = 0; r < data.length-1; r++) {             //Go through each row
    fill(255,0,0);
    change = drawLowestElevPath(data, r);               //Draw a path starting from each row, and also find the total elevation change for that path
    if (change < minChange) {                           //If the change on another row is less than the current minChange, that becomes minChange
      minChange = change;
      index = r;                                        //Finding index or "which row" the min elevation change occurs in
    }
  }
  //OUTPUT
  return index;                                         //Return index of row of minimum elevation change
  
}
