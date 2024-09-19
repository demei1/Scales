int hue = 0;
void setup() {
  size(700,700);//feel free to change the size  
  background(219,248,208);
  noLoop(); //stops the draw() function from repeating
}
void draw(){

 //your code here
 for (int column = 90; column<700; column+=170){
   for (int row = 90; row <700; row += 170){

     hue = (int)(Math.random()*10);
   
    if (hue ==0){
    fill(230,90,90);
    
    }
    else if (hue == 1){
    fill(128, 234, 231);
   
    }
    else if (hue == 2){
    fill(236, 210, 118);
    
    }
    else if (hue == 3){
    fill (206, 134, 86);
    
    }
    else if (hue == 4){
    fill(220,182,207);
   
    }
    else if (hue == 5){
    fill(223,146,178);
    
    }
    else if (hue == 6){
    fill (89,153,194);
    
    }
    else if (hue == 7){
    fill(147,183,59);
   
    }
    else if (hue == 8){
    fill(179,85,136);
    
    }
    else {
    fill (170,147,218);
    
    }
    scale(row,column);
   }
    
   
 }
}
void scale(int x, int y) {
  //your code here
    //center
  translate(x,y);
  
    //petals rotate 45 degrees
  for (int rotationOne = 45; rotationOne <= 315; rotationOne = rotationOne + 45){
    if (rotationOne==45)
    rotate(radians(45));
     else{
     rotate(radians(90));
     }
     
  
    
    //petal shape
    //left side of petal
   beginShape();
   
    //bottom
  curveVertex(0,-10);
  curveVertex(0,-10);
    //bottom left
  curveVertex(-20,-20);
    //middle left
  curveVertex(-25,-40);
    //top
  curveVertex(0,-80);
  curveVertex(0,-80);
 endShape();
 
     //right side of petal
 beginShape();
 
    //bottom
  curveVertex(0,-10);
  curveVertex(0,-10);
    //bottom right
  curveVertex(20,-20);
    //middle right
  curveVertex(25,-40);
    //top
  curveVertex(0,-80);
  curveVertex(0,-80);
 endShape();
 }
 
 
 for (int rotationTwo = 0; rotationTwo <= 360; rotationTwo = rotationTwo + 90){
    if (rotationTwo==0)
    rotate(radians(135));
     else{
     rotate(radians(90));
     }
     
    //color
  //fill(230,90,90);
    
    //petal shape
    //left side of petal
   beginShape();
   
    //bottom
  curveVertex(0,-10);
  curveVertex(0,-10);
    //bottom left
  curveVertex(-20,-20);
    //middle left
  curveVertex(-25,-40);
    //top
  curveVertex(0,-80);
  curveVertex(0,-80);
 endShape();
 
     //right side of petal
 beginShape();
 
    //bottom
  curveVertex(0,-10);
  curveVertex(0,-10);
    //bottom right
  curveVertex(20,-20);
    //middle right
  curveVertex(25,-40);
    //top
  curveVertex(0,-80);
  curveVertex(0,-80);
 endShape();
 }
 resetMatrix();
 fill(250,250,0);
 ellipse(x,y,50,50);
}

