
Car redCar;

Wheel frontWheel;
Wheel backWheel;

float x = 500;
float t = 0.9;

void setup() {
    size(500,500);
    background(160,238,240);
    
    
    
    
    redCar = new Car();
    
    frontWheel = new Wheel();
    backWheel = new Wheel();

}


void draw() {
  
      fill(153,182,183);
    rect(0,400,500,100);
    
    fill(255,255,255);
    rect(0,380,100,20);
    rect(100,380,100,20);
    rect(200,380,100,20);
    rect(300,380,100,20);
    rect(400,380,100,20);
    
   
    
    fill(50,160,87);
    rect(0,280,500,100);
    
    fill(220,222,168);
    rect(140,200,200,150);
    rect(150,130,50,70);
    
    fill(137,114,55);
    triangle(240,150,100,200,380,200);
    rect(145,125,60,20);
    
    fill(83,168,175);
    rect(160,230,50,50);
    
    fill(216,94,52);
    rect(250,270,50,80);
    
    fill(227,215,82);
    ellipse(260,320,10,10);
    


  
  float position = lerp(500,0,t);
  
  x = position;
  
  println(x);
  
  translate(x,200);  
  redCar.display();

  translate(100,150);
  frontWheel.spin();
  
  translate(200,0);
  backWheel.spin();
  
  t += .01;
  

}
