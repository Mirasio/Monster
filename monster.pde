

float x, y,d,f,q,w,e,r;
float angle1 = 0.0;
float angle2 = 0.0;
float segLength = 75;


void setup() {
  size(1000, 700);
  
  
  
  x = width * 0.3;
  y = height * 0.21;
  
  d = width * 0.48;
  f = height * 0.21;
  
  q = width * 0.48;
  w = height * 0.41;
  
  e = width * 0.3;
  r = height * 0.41;
}

void draw() {
  background(0,255,0);
  
  
  
  
  // Commands below to the draw the body of my monster
  stroke(0);
  strokeWeight(5);
  fill(13,154,160);
  rect(280,130,225,200);
  stroke(29,34,85);
  fill(13,38,160);
  rect(277,328,230,30);////
  stroke(13,38,160);
  line(277,358,507,358);
  stroke(29,34,85);
  line(277,358,260,520);//sides of pants
  line(507,358,524,520);//sides of pants
  
  stroke(0);
  strokeWeight(50);
  line(310,530,100,650);
  line(315,530,315,650);//left leg
  line(100,650,315,650);
  
  line(480,530,695,650);
  line(475,530,485,650);//right leg
  line(485,650,695,650);
  
  strokeWeight(5);
  stroke(29,34,85);
  line(524,520,260,520);
  stroke(0,255,0);
  line(348,520,440,520);
  line(265,515,343,515);
  line(270,510,348,510);
  line(275,505,353,505);
  
  
  line(445,515,519,515);
  line(440,510,515,510);
  line(435,505,510,505);

  
  stroke(29,34,85);
  line(392,430,348,520);
  line(392,430,440,520);
  
  
  
  stroke(0);
  fill(214,240,114);              //head
  ellipse(392,90,180,120);
  fill(77,95,7);
  ellipse(350,80,20,40);
  ellipse(392,80,20,40);
  ellipse(434,80,20,40);
  line(350,120,434,130);
  // Commands above to the draw the body of my monster
  
  
  
  
  
  angle1 = (mouseX/float(width) - 0.5) * PI;
  angle2 = (mouseY/float(height) - 0.5) * -PI;
  stroke(120,3, 144);
  strokeWeight(35);
  pushMatrix();
  segment(x, y, angle1); 
  segment(segLength, 0, angle2);
  popMatrix();
  
  pushMatrix();
  segment1(d,f, angle1); 
  segment1(segLength, 0, angle2);
  popMatrix();
  
  pushMatrix();
  segment2(q,w, angle1); 
  segment2(segLength, 0, angle2);
  popMatrix();
  
  pushMatrix();
  segment3(e,r, angle1); 
  segment3(segLength, 0, angle2);
  popMatrix();
}

void segment(float x, float y, float a) {
  translate(x, y);
  rotate(-a);
  line(0, 0, segLength, 0);
}

void segment1(float d, float f, float a) {
  translate(d, f);
  rotate(a);
  line(0, 0, segLength, 0);
}

void segment2(float q, float w, float a) {
  translate(q,w);
  rotate(a);
  line(0, 0, segLength, 0);
}

void segment3(float e, float r, float a) {
  translate(e, r);
  rotate(-a);
  line(0, 0, segLength, 0);
}