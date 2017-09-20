

void setup (){
  size(500,500);
}


void mousePressed(){
  redraw();
 
}

void draw(){
  background(50,150,150);
  int numDots = 0;
  noLoop();
  for(int y = 15; y < 450; y = y +95){
    for(int x = 15; x <450; x = x +95){
    Die dieOne = new Die(0+x,0+y);
    dieOne.show();
    dieOne.toss();
    numDots = numDots + dieOne.roll;
    }
  }
  noStroke();
  fill(255);
  text(numDots,450,490);
}

  
class Die {
  int myX, myY, roll;
  
  Die(int x, int y){
    myX = x;
    myY = y;
    toss();
  }
  
  void toss(){
    
  
    fill(0,0,0);
    roll = (int)(Math.random() * 6) + 1;
  
    
      
  }
  
  void show(){
    noStroke();
    fill(255,255,255);
    rect(myX, myY,80,80);
    
    fill(0);
    
     if (roll == 1){
      ellipse(40+myX,40+myY,15,15);
 
      
    }
    else if(roll==2){
      ellipse(25+myX,25+myY,15,15);
      ellipse(55+myX,55+myY,15,15);
    
    }
    else if(roll == 3){
      ellipse(20+myX,20+myY,15,15);
      ellipse(40+myX,40+myY,15,15);
      ellipse(60+myX,60+myY,15,15);
     
    }
    else if(roll == 4){
      ellipse(20+myX,20+myY,15,15);
      ellipse(60+myX,20+myY,15,15);
      ellipse(20+myX,60+myY,15,15);
      ellipse(60+myX,60+myY,15,15);
      
    }
     else if(roll == 5){
      ellipse(20+myX,20+myY,15,15);
      ellipse(60+myX,20+myY,15,15);
      ellipse(20+myX,60+myY,15,15);
      ellipse(60+myX,60+myY,15,15);
      ellipse(40+myX,40+myY,15,15);
     
    }
    
    else{
      ellipse(20+myX,20+myY,15,15);
      ellipse(60+myX,20+myY,15,15);
      ellipse(20+myX,40+myY,15,15);
      ellipse(60+myX,40+myY,15,15);
      ellipse(20+myX,60+myY,15,15);
      ellipse(60+myX,60+myY,15,15);
      
    

  }
  }
}

  
  
