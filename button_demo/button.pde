class Button {
  
  float x;
  float y;
  int fillColor = 0;

  Button ( float _x, float _y) {
  
    x = _x;
    y = _y;
    
  }
  
  void display () {
    
    stroke( 140 );
    fill( fillColor );
    rect( x, y, 100, 100 );
    
  }
  
  void press (int pressX, int pressY) {
  
    if(
    
      ( pressX >= x ) &&
      ( pressX <= x + 100 ) &&
      ( pressY >= y ) &&
      ( pressY <= y + 100 )
    
    ){
      
      if ( fillColor == 255 ){
        fillColor = 0;
      } else {
        fillColor = 255;
      }
    
    }
    
  }
  
}
