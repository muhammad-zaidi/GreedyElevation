/**
 * This method reads a 2D data set from the specified file. The Graphics'
 * industry standard is width by height (width x height), while programmers
 * use rows x cols / (height x width).
 *
 * @param fileName the name of the file
 * @return a 2D array (rows x cols) of the data from the file read
 */
import java.util.StringTokenizer;
import java.util.Scanner;
import java.io.File;
public static int[][] readData( String fileName ) {
  //VARIABLES
  String line;
  int[][] data;
  int row = 0;
  int col = 0;
  StringTokenizer st;
  
  //PROCESSING
  
  try {
   
   Scanner fileInput = new Scanner( new File(fileName)); //Set scannner to the file
   
   while (fileInput.hasNextLine()) {                     //While file has more lines
     row++;                                              //go to the next "row" or next line of file (however many lines there are, thats how many rows used)
    
   line = fileInput.nextLine();                          //set variable line to the each line
   st = new StringTokenizer(line);                       //Tokenize each seperate line; separated by spaces
   col = st.countTokens();                               //Number of columns is the amount of words in a single "row" or line
   }
   fileInput.close();                                    //Close file input, so we can reset the scanner
   data = new int[row][col];                             //Set the data array to the new row and col found
   fileInput = new Scanner( new File(fileName));         //Reset scanner to go back to the top
   
   while (fileInput.hasNextLine()) {                     //When scanner is reset,
     
     for (int r = 0; r < row; r++) {                     //Go through each row, and set a string line to each line, then tokenize that.
       line = fileInput.nextLine();
     st = new StringTokenizer(line);
       for (int c = 0; c < col; c++) {
         data[r][c] = Integer.parseInt(st.nextToken());  //Copy the elevation into a specific column and row
       }
       println();
     }
   }
  fileInput.close(); //Close output
    
    
    
  } 
  catch (Exception e ) {
    println( "STEP 01 - Exception" );
    e.printStackTrace();
    data = null;
  }
  
   
//OUTPUT
  return data;
}
