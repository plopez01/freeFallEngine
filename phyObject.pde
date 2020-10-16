class PhyObject{
  float mass, volume, vel, alt;
  String type;
  color c;
  PhyObject(float mass, float volume, float startAltitude, float startVel, color c, String type){
    this.mass = mass;
    this.volume = volume;
    this.c = c;
    this.type = type;
    this.alt = startAltitude;
    this.vel = startVel;
  }
  
  void Prepare(){
    alt = height - alt-volume;
  }
  
  float applyMotion(float gravity){
    println(vel);
    if(alt >= height-volume) return height-volume;
    alt-=vel/60;
    vel+=gravity/60;
    return alt;
  }
}
