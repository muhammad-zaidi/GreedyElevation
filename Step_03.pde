import java.awt.Graphics;
/**
 * Given a 2D array of elevation data create a image of size rows x cols,
 * drawing a 1x1 rectangle (or point) for each value in the array whose color is set to
 * a scaled gray value (0-255). Note: to scale the values in the array to
 * 0-255 you must find the min and max values in the original data first.
 *
 * @param g a Graphics context to use
 * @param grid a 2D array of the data
 */
 public void drawMap( int[][] data) {
  //VARIABLE
   int max = findMax(data);
   int min = findMin(data);
   int factor = (max-min)/255;                             //Finding greyscale factor
 //PROCESSING & OUTPUT
   for (int row = 0; row < data.length; row++) {           //Go through each row
     for (int col = 0; col < data[row].length; col++) {    //Go through each column
        int cc = ((data[row][col]-min)/factor);            //Set an int cc into the "factor" AKA greyscale value
        fill(cc);                                          //Fill greyscale value into that specifc column and row
        noStroke();
        rect(col,row,1,1);                                 //Make 1x1 rectangle
       
     }
   }

 }
