class Env {
  float groundLevel, gravity;
  float scale = 300;
  color c;
  boolean isVoid, metrics;
  
   Env(color c, float gravity, boolean isVoid, float groundLevel, boolean metrics){
     this.c = c;
     this.isVoid = isVoid;
     this.groundLevel = groundLevel;
     this.metrics = metrics;
     this.gravity = gravity;
   }
   
   void Set(){
     background(c);
     stroke(255);
     if(metrics){
      line(30, 0, 30, height); 
      for(float i = 0; i < height; i+=scale/10){
       text(int(height-i), 2, i+4);
       stroke(100);
       line(36, i, width, i); 
       stroke(255);
       line(24, i, 36, i); 

      }
     }
     
     line(0, height-1, width, height-1);
   }
   
   void Drop(PhyObject phyObj){
     switch(phyObj.type){
      case "cube":
        rect(width/2-phyObj.volume, phyObj.applyMotion(gravity), phyObj.volume, phyObj.volume);
      break;
     }
   }
}
