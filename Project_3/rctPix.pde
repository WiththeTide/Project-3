

float Movex,Movey;
float size=30;
float testingx,testingy;

void screen(){
  
  rectp.rotateX(0); 
 
  
  float dot=70;
  float dotnum=1200/dot; 

 
  //sound
  int data = 200;
  float sound1=0;
  float insidevalue;
  waveform.analyze();
  
    for(int i = 0; i < data; i++){
      map(i, 0, data, 0, width);
      map(waveform.data[i]/10, -1, 1, 0, 1550);
      sound1+=waveform.data[i];
   }
   insidevalue=sound1*10;
    
  
    for(int x=14; x<dot;x++){ //26 unit diff
      for(int y=8; y<dot/1.5; y++){ // 21 down,17.5 up unit diff
   
       if(insidevalue>-50 && insidevalue<50){      
          color c=F1.get(int(x*dotnum), int(y*dotnum));
          float b=map(brightness(c),0,255,0,1);
          fill(c);
       
         push();
          translate(x*dotnum-500,y*dotnum-730);
          rect(0,0,15*b,15*b);
         pop();
         
         rectp.setMaximumDistance(1200);
         rectp.setMinimumDistance(1200);
           }
           
           
         else if(insidevalue>50 && insidevalue<100){      
          color c=F4.get(int(x*dotnum), int(y*dotnum));
          float b=map(brightness(c),0,255,0,1);
          fill(c);
       
         push();
          translate(x*dotnum-500,y*dotnum-730);
          rect(0,0,15*b,15*b);
         pop();
         
          rectp.setMaximumDistance(1300);
          rectp.setMinimumDistance(1300);
           } 
           
           
        else if(insidevalue>100){      
          color c=F3.get(int(x*dotnum), int(y*dotnum));
          float b=map(brightness(c),0,255,0,1);
          fill(c);
       
         push();
          translate(x*dotnum-500,y*dotnum-730);
          rect(0,0,15*b,15*b);
         pop();
         
          rectp.setMaximumDistance(1400);
          rectp.setMinimumDistance(1400);
           }
           
       else if (insidevalue<-50 && insidevalue>-150){
         color c=F2.get(int(x*dotnum), int(y*dotnum));
         float b=map(brightness(c),0,255,0,1);
         fill(c);
       
        push();
         translate(x*dotnum-500,y*dotnum-730);
         rect(0,0,15*b,15*b);
        pop();
        
         rectp.setMaximumDistance(1100);
         rectp.setMinimumDistance(1100);
        }
        
       else if (insidevalue<-150){
         color c=F5.get(int(x*dotnum), int(y*dotnum));
         float b=map(brightness(c),0,255,0,1);
         fill(c);
       
        push();
         translate(x*dotnum-500,y*dotnum-730);
         rect(0,0,15*b,15*b);
        pop();
        
         rectp.setMaximumDistance(1000);
         rectp.setMinimumDistance(1000);
           }
           
      else {
         color c=F6.get(int(x*dotnum), int(y*dotnum));
         float b=map(brightness(c),0,255,0,1);
         fill(c);
       
        push();
         translate(x*dotnum-500,y*dotnum-730);
         rect(0,0,15*b,15*b);
        pop();
        
        
           }

              
  
     
     
      }
    }  
    
    println(insidevalue);
}
