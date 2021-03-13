class Bird {
    
  int flap;
  int r = 244;
  int g = 0;
  int b = 4;
  
  Bird(int red, int green, int blue){
    r = red;
    g = green;
    b = blue;
  }
  
  
  void display(){
    
    
    beginShape();
    
      fill(r,g,b);
      vertex(460, 35);
      vertex(467, 50);
      vertex(460, 65);
      vertex(425, 60);
      vertex(415, 50);
      vertex(400, 45);
      vertex(415, 35);
      vertex(425, 45);
      vertex(457, 52);
      vertex(482, 52);
      vertex(460, 67);
      
    endShape();
    
    fill(0);
    ellipse(415, 43, 3, 3);
    fill(255,255,153);
    triangle(400, 45, 410, 47.5, 410, 40);
    
    if(flap % 30 < 5){
      
      fill(r - 100, 0, 0);
      triangle(432, 50, 426, 30, 457, 52);
      
    }else{
      
      fill(r - 100, 0, 0);
      triangle(432, 50, 426, 74, 457, 52);
      
    }
   
    
    flap += 1;
    
  }
  
}
