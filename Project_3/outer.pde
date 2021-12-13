void outer(){

  camOut.rotateZ(pattern[patterntype]);
  camOut.setMaximumDistance(2500);
  camOut.setMinimumDistance(1500);
  
  translate(160,160);

 
 for(int i=0;i<200;i++){
  float x=random(width);
  float y=random(height);
    
   if(stop==true){
     fill(0); 
    }
    
   else{
    if (mouseX<500&&mouseY<400){
      color c=F1.get(int(x),int(y));
      fill(c);
      ellipse(x,y,20,20);
    }
    
    else if (mouseX>500&&mouseY<400){
      color c=F4.get(int(x),int(y));
      fill(c);
      ellipse(x,y,20,20);
    }
    
    else if(mouseX>500&&mouseY>400){
      color c=F2.get(int(x),int(y));
      fill(c);
      ellipse(x,y,20,20);
    }
    
    else{
      color c=F6.get(int(x),int(y));
      fill(c);
      ellipse(x,y,20,20);
        }
        
      }
   }
}
