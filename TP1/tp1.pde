PImage img,img2;
void setup() {
  size(800,400);
  img = loadImage("zombie.jpg");
  img2 = loadImage("grilla.png");
  background(255);
} 
void draw() {
  image (img,0, 0, 400, 400);
  image(img2,0,0,0,0);
  println(mouseX,mouseY);
  
//Cabeza y color
stroke(0);
fill(112,128,40);
square(548,19,98);
//Cara
fill(24,25,27);//color ojos
rect(560,68,25,13);//ojo izquierdo
rect(609,68,25,13);//ojo derecho
fill(67,66,12);// color boca
noStroke();////Detalles para la cara
fill(67,66,12);// color boca
rect(585,81,24,13);//boca
fill(92,99,47);
rect(548,20,35,23);
rect(548,40,12,15);
rect(583,20,63,13);
rect(623,27,23,16);

//brazos de ambos lados y color;
stroke(0);
fill(109,124,37);
rect(502,140,48,120);//brazo izquierdo
fill(88,106,21);
rect(645,140,48,120);//brazo derecho

//HOMBROS
stroke(0);
fill(0,176,223); //color hombros
rect(645,118,48,48); //Hombro derecho
rect(502,118,48,48);//hombro izquierdo
//Piernas
fill(3,57,154);
rect(551,242,94,122);
fill(96,96,95);
rect(551,364,47,20);
rect(600,364,45,20);

//Torso y color
noStroke();
fill(0,176,223);
stroke(0);
rect(550,118,95,126);
fill(33,51,4);
rect(177+400,117,45,13);
fill(69,96,7);
rect(188+400,130,23,11);
fill(0, 0, 0, 100); // sombra
quad(
    151+400, 118,  
    260+400, 117,  
    260+400, 137,  
    160+400, 133  
  );
noStroke();
fill(0,176,223,255);
rect(622,244,23,10);
rect(635,254,10,10);
}
