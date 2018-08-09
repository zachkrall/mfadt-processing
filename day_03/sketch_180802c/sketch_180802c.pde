color b2 = color(0);
color b1 = color(255);

int Y_AXIS = 1;
int X_AXIS = 2;

void setup () {

   size(400, 400);

}

void draw () {
 
  // create background
  setGradient(0, 0, width/2, height, b1, b2, X_AXIS);
  setGradient(width/2, 0, width/2, height, b2, b1, X_AXIS);
  
  // create character
  
  // character blinks
  
}
