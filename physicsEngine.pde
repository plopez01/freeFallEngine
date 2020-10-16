Env perfectVoid = new Env(color(0), -9.81, true, 0, true); //color c, boolean isVoid, float groundLevel, boolean metrics

PhyObject box = new PhyObject(50, 30, 300, 0, color(255), "cube");

void setup(){
  size(640, 480);
  frameRate(60);
  box.Prepare();
}

void draw(){
  perfectVoid.Set();
  perfectVoid.Drop(box);
}
