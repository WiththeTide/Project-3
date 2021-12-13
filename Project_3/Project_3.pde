//Ref and guide:
// https://www.youtube.com/watch?v=NbX3RnlAyGU&t=681s
// https://mp3.gisher.org/songs/1705/
// waveform example from processing 


//explanation:
//This project is based on the loudness of sound. 
//There are 4 different cameras for differernt location.
//The song will start right away when the program loads. Then everything will stop when the music stop, I am a LP fan, I hope you 
//will enjoy it... and go easy on me:P

  boolean stop=false;
  
  int patterntype=0;
  int patterntypeR=0;
  int[]pattern= {289,644,733,611,98};
  int[]patternR= {465,110,731,366,945};
  
  int data=200;
  import peasy.*;
  

  PeasyCam camIn;
  PeasyCam camMid;
  PeasyCam camOut;
  PeasyCam rectp;
  
  import processing.sound.*;
  SoundFile file;
 
  //amp
  Waveform waveform;
  
  //inside
  PImage F1,F2,F3,F4,F5,F6;
  //outer
 
 
 
void setup(){
  
  size(1000,800,P3D); 
  background(0);
  
  int camsize=2000;
  float t;
  
  camIn=new PeasyCam(this,camsize);
  camMid=new PeasyCam(this,camsize);
  camOut=new PeasyCam(this,camsize);
  t=1600;
  rectp=new PeasyCam(this,t);
  
 
    file= new SoundFile(this, "W.mp3");
    file.play();
    
    waveform= new Waveform(this,data);
    waveform.input(file);
  
  //inside
  F1 =loadImage("F1.png");
  F2=loadImage("F2.png");
  F3=loadImage("F3.png");
  F4=loadImage("F4.png");
  F5=loadImage("F5.png");
  F6=loadImage("F6.png");
  
  F1.resize(1000,800);
  F2.resize(1000,800);
  F3.resize(1000,800);
  F4.resize(1000,800);
  F5.resize(1000,800);
  F6.resize(1000,800);
  
 
  
}

void mouseClicked (){
 
 int[]pattern= {289,399,733,344,191};
 int[]patternR= {465,110,731,366,945};
 
 patterntype=patterntype+1;
 patterntypeR=patterntypeR+1;
   
   if (patterntype>4){
    patterntype=0; 
   }
   
   if (patterntypeR>4){
    patterntypeR=0; 
   }
 }


void draw(){

 inside();
 //middle();
 outer();
 screen();

}
