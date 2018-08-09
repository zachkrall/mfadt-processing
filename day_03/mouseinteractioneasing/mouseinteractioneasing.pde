
float sneakyX, sneakyY;
float easing = 0.5;
float speed = 40;

void setup () {

 size(500,500);  
 
 sneakyX = width/2;
 sneakyY = height/2;
 
 noFill();
  
}

void draw () {
  
  background(254, 248, 165);
  
  pushStyle();
    //noFill();
    fill(254, 248, 207);
    noStroke();
    ellipse(mouseX, mouseY, (millis() * 0.001)+200, (millis() * 0.001)+200 );
  popStyle();
  
  pushStyle();
  stroke(236, 93, 42);
  ellipse(sneakyX, sneakyY, 50, 50);
  popStyle();
  
  if(
    ( sneakyX-125 < mouseX && mouseX < sneakyX+125 ) &&
    ( sneakyY-125 < mouseY && mouseY < sneakyY+125 )
  ){
    fill(236, 93, 42);
    
    if( mouseX > width/2){
      sneakyX += random(speed*-1,0) * easing;
    } else {
      sneakyX += random(0,speed) * easing;
    }
    
    if( mouseY > height/2){
      sneakyY += random(speed*-1,0) * easing;
    } else {
      sneakyY += random(0,speed) * easing;
    }
    
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
