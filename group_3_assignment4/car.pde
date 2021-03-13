class Car {
  
  PShape car;
  
  PShape wheel;
  PShape wheel_2;
  
  float angle = 0.0;
  
  void display(){
    
    PShape tire = createShape(ELLIPSE, 150,200,50,50);

    PShape rim = createShape();
    rim.beginShape();
    rim.fill(255,255,255);
    rim.vertex(140,190);
    rim.vertex(160,190);
    rim.vertex(160,210);
    rim.vertex(140,210);
    rim.endShape();
    
    wheel = createShape(GROUP);
    wheel.addChild(tire);
    wheel.addChild(rim);
    
    translate(100,0);
    wheel_2 = createShape(GROUP);
    wheel_2.addChild(tire);
    wheel_2.addChild(rim);
    
    car = createShape(GROUP);
    

    
    PShape hood = createShape();
    hood.beginShape();
    hood.fill(185,47,47);
    noStroke();
    hood.vertex(150,90);
    hood.vertex(350,90);
    hood.vertex(380, 150);
    hood.vertex(120,150);
    hood.endShape();
    
    PShape body = createShape();
    body.beginShape();
    body.fill(185,47,47);
    noStroke();
    body.vertex(100,150);
    body.vertex(400,150);
    body.vertex(420,200);
    body.vertex(80,200);
    body.endShape();
    
    PShape window_1 = createShape();
    window_1.beginShape();
    window_1.fill(36,234,229);
    window_1.vertex(160,100);
    window_1.vertex(250,100);
    window_1.vertex(250,140);
    window_1.vertex(140, 140);
    window_1.endShape();
    
    PShape window_2 = createShape();
    window_2.beginShape();
    window_2.fill(36,234,229);
    window_2.vertex(270,100);
    window_2.vertex(340,100);
    window_2.vertex(360,140);
    window_2.vertex(270, 140);
    window_2.endShape();
   
    PShape f_light = createShape();
    f_light.beginShape();
    f_light.fill(216,229,42);
    f_light.vertex(96,160);
    f_light.vertex(120,160);
    f_light.vertex(120,180);
    f_light.vertex(85,180);
    f_light.endShape();
    
    PShape b_light = createShape();
    b_light.beginShape();
    b_light.fill(252,100,48);
    b_light.vertex(380,160);
    b_light.vertex(405,160);
    b_light.vertex(415,180);
    b_light.vertex(380,180);
    b_light.endShape();
   
    car.addChild(hood);
    car.addChild(body);
    car.addChild(window_1);
    car.addChild(window_2);
    car.addChild(f_light);
    car.addChild(b_light);
    
       
    pushMatrix();
    rotate(-angle);
    popMatrix();
    
    angle += 0.03;
    
    car.addChild(wheel);
    car.addChild(wheel_2);
    
    shape(car);

 
  
  }

}
