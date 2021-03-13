Smoke smoke1;
Puff puff1;

Smoke smoke2;
Puff puff2;

Smoke smoke3;
Puff puff3;

Car redCar;


float x = 500;
float t = 0.0;

void setup() {
    size(500,500);
    
    
    smoke1 = new Smoke(195,135,20);
    puff1 = new Puff(195,135,20);
    
    smoke2 = new Smoke(175,135,20);
    puff2 = new Puff(175,135,20);
    
    smoke3 = new Smoke(155,135,20);
    puff3 = new Puff(155,135,20);
    
    
    redCar = new Car();
    

}


void draw() {
  background(160,238,240);
  smoke1.display();
  puff1.display();
  
  if (t > 1.5){
    smoke2.display();
    puff2.display();
  }
  
  if (t > 2){
    smoke3.display();
    puff3.display();
  }
  
  
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
    
    fill(0,0,0);
    ellipse(260,320,10,10);
    


  
  float position = lerp(500,0,t);
  
  x = position;
  
  
  translate(x,200);  
  redCar.display();


  
  if (t <= 2.0) {
  t += .01;}
  

}
