void middle(){
  camMid.rotateZ(patternR[patterntypeR]); 
  camMid.setMaximumDistance(2500);
  camMid.setMinimumDistance(1500);
  
  int data = 200;
  waveform.analyze();
  float factor=0;
  
  for(int i = 0; i < data; i++){

     map(i, 0, data, 0, width);
     map(waveform.data[i]/10, -1, 1, 0, 1550);
     factor+=waveform.data[i];
   
   }
      
 for(int i=0;i<200;i++){
  
    float x=random(width);
    float y=random(height);
    
    if(stop==true){
      camMid.rotateZ(747); 
      fill(0); 
    }
    
    else{
            
      if (factor>0 && factor<100){
       color c=F6.get(int(x),int(y));
       fill(c);
       ellipse(x,y,20,20);
     
      }
    
      else if (factor>100){
       color c=F4.get(int(x),int(y));
       fill(c);
       ellipse(x,y,20,20);
 
    }
    
      else if(factor<0&& factor>-100){
       color c=F2.get(int(x),int(y));
       fill(c);
       ellipse(x,y,20,20);
   
    }
      
      else{
       color c=F1.get(int(x),int(y));
       fill(c);
       ellipse(x,y,20,20);
     
        }
    }
 }
}
