/**
 * Find the minimum elevation-change route from West-to-East in the given
 * grid, from the given starting row, and draw it using the given graphics
 * context
 *
 * @param data - the 2D array of elevation values
 * @param row - the starting row for traversing to find the min path
 * @return total elevation of the route
 */

public int drawLowestElevPath( int[][] data, int r ) {
   //VARIABLES
  int fwd;
  int fwdUp;
  int fwdDown;
  int fwdChange;
  int fwdUpChange;
  int fwdDownChange;
  int totalChange = 0;
  int random;
  int count = 0;
  //PROCESSING
    
  for (int c = 0; c < data[0].length-1; c++) {                                      //Given a row, go through each column
   
    noStroke();
    rect(c,r,1,1);
    fwd = data[r][c+1];                                                             //Set "fwd" into the column ahead
    if (r > 0) {                                                                    //Only if row is bigger than 0, set fwdUp to row -1 and c+1
    fwdUp = data[r-1][c+1];
    } else {                                                                        //Otherwise, set it to the MAX value, so at row 0, it will never go up as fwd or fwdDown will always be lower
    fwdUp = Integer.MAX_VALUE;
    }
    if (r < data.length-1) {                                                        //If row is smaller than the end of data.length, set fwdDown to row+1 and c+1
    fwdDown = data[r+1][c+1];
    } else {                                                                        //Otherwise, set fwdDown to max integer value, because everything will be smaller than it, so it will never go down on the last row.
    fwdDown = Integer.MAX_VALUE;
    }
    fwdChange = Math.abs(data[r][c] - fwd);                                         //Finding absolute value of the change between current "row/col" and the one ahead, diagonally up or diagonally down
    fwdUpChange = Math.abs(data[r][c] - fwdUp);
    fwdDownChange = Math.abs(data[r][c] - fwdDown);
    
    int min = min(fwdChange, fwdUpChange, fwdDownChange);                           //Finding the minimum elevation change
    
    if (min == fwdUpChange && min == fwdDownChange && min != fwdChange) {           //If both FwdUp and fwdDown are the min
     random = (int)(Math.random()*2 + 1);                                           //Give a random number 1 or 2
      if (random == 1) {                                                            //If it's 1, do fwdUp
        r--;
        count = fwdUpChange;
  } else {                                                                          //Otherwise it will be 2, so do fwdDown;
    r++;
    count = fwdDownChange;
    } 
   
   } else if (min == fwdUpChange && min != fwdChange && min != fwdDownChange) {     //Else if fwdUp is the min only, do r-- to move up a row (on the map)
      r--;
      count = fwdUpChange;
    } else if (min == fwdDownChange && min != fwdChange && min != fwdUpChange) {    //Else if fwdDown is the min only, do ++ to move down a row (on the map)
      r++;
      count = fwdDownChange;
    } else {                                                                        //otherwise, the min is only fwd, so do nothing
      count = fwdChange;
    }
    totalChange += count;                                                           //Add up all the total elevation to find total elevation change (absolute value)
    
  } 
  //OUTPUT
  return totalChange; //Return total elevation change
  
}
