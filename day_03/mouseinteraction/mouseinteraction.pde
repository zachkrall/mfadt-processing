
int sneakyX, sneakyY;

void setup () {

 size(500,500);  
 
 sneakyX = width/2;
 sneakyY = height/2;
 
 noFill();
  
}

void draw () {
  
  background(255);

  ellipse(sneakyX, sneakyY, 50, 50);
  
  pushStyle();
    noFill();
    noStroke();
    ellipse(mouseX, mouseY, 200, 200);
  popStyle();
  
  if(
    ( sneakyX-125 < mouseX && mouseX < sneakyX+125 ) &&
    ( sneakyY-125 < mouseY && mouseY < sneakyY+125 )
  ){
    fill(0);
    
    sneakyX += random(-30,30);
    sneakyY += random(-30,30);
    
    text("Don\'t touch me", sneakyX, sneakyY-50);

    
  } else {
    noFill();
  }
  
  if( sneakyX < 0 || sneakyX > width ){
    sneakyX = width/2;
  }
  if( sneakyY < 0 || sneakyY > height ){
    sneakyY = height/2;
  }
 
  
}
