void inside(){
  int insize=76;
  camIn.rotateZ(insize); 
  camIn.setActive(false);
  translate(-180,-180);

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
   
    for(int i=0;i<200;i++){
      float x=random(width);
      float y=random(height);
 
    
   if(insidevalue>-50 && insidevalue<50&&insidevalue!=0){   
       color col=F2.get(int(x),int(y));
       fill(col);
       ellipse(x,y,20,20);
        camIn.setMaximumDistance(4500);
        camIn.setMinimumDistance(4500);
      }
     
    else if(insidevalue>50 && insidevalue<100){  
       color col=F1.get(int(x),int(y));
       fill(col);
       ellipse(x,y,20,20);
       camIn.setMaximumDistance(3750);
        camIn.setMinimumDistance(3750);
        }
      
     else if(insidevalue>100){  
       color col=F6.get(int(x),int(y));
       fill(col);
       ellipse(x,y,20,20);
       camIn.setMaximumDistance(3000);
       camIn.setMinimumDistance(3000);
        } 
     
     else if(insidevalue<0&&insidevalue>-70){
       color col=F3.get(int(x),int(y));
       fill(col);
       ellipse(x,y,20,20);
       camIn.setMaximumDistance(5000);
       camIn.setMinimumDistance(5000);
        }
        
     else if(insidevalue<-70) {
       color col=F4.get(int(x),int(y));
       fill(col);
       ellipse(x,y  ,20,20);
       camIn.setMaximumDistance(6000);
       camIn.setMinimumDistance(6000);
      }
     else{
       camIn.setMaximumDistance(3500);
       camIn.setMinimumDistance(3500);
       fill(0);
       stop=true;
    
      }
  }
   
}
