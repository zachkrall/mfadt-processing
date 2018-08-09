Button myButton;
Button myButton2;

void setup(){

  size(300,300);
  myButton = new Button(40,100); 
  myButton2 = new Button(160,100);
  
}

void draw(){

    myButton.display();
    myButton2.display();
    
}

void mousePressed () {

    myButton.press(mouseX, mouseY);
    myButton2.press(mouseX, mouseY);
    
}
