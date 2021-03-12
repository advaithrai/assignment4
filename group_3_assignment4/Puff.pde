class Puff extends Smoke {
  
  Puff(float x, float y, float dim) {
    
    super(x, y, dim);
  }
  
  void display(){
    super.speed = 0.75;
    super.display();
    dim += 0.1;
    
  }

}
