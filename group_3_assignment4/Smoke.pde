class Smoke {
  
  float x, y, dim, ogy, ogdim;  
  float speed = 0.6;
  float a = 255;
  
  Smoke(float xpos, float ypos, float dimension) {
    ogy = ypos;
    ogdim = dimension;
    
    x = xpos;
    y = ypos;
    dim = dimension;
  }
  
  void display() {
    colorMode(HSB);
    fill(0,0,70,a);
    colorMode(RGB);
    noStroke();
    
    if (a < 0){
      y = ogy;
      a = 255;
      dim = ogdim;
    }
    pushMatrix();
    translate(x,y);
    ellipse(0,0, dim, dim);
    popMatrix();
    
    y -= speed;
    a -= 1.7;
  }
  
}
