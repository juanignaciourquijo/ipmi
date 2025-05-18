PImage img1, img2, img3, img4;
int pantalla = 0;
color colorBoton;
int frameInicio;
PFont fuente;

int tamTexto = 1;
int animY2 = 15;
int animY3 = -200;
int animX4 = 0;

String texto1 = "Shrek es un ogro que vive solo en su pantano.\n" +
"Un día, su hogar se llena de personajes de cuentos de hadas.\n" +
" Y para recuperarlo, debe hablar con el malvado Lord Farquaad.";

String texto2 = "Shrek hace un trato: rescatar a la Princesa Fiona\n" +
"de un castillo con un dragón. Junto a Burro, con el cual viven\n" +
"una aventura inesperada.";

String texto3 = "Aunque al principio se escondían cosas\n" +
"Fiona y Shrek se enamoran.\n" +
"Al final, ella elige ser ogra y vivir con él.\n" +
"El amor verdadero no necesita un cuento perfecto";

String texto4 = "Colorin colorado\n"+
"este cuento se ha terminado :)";

void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  fuente = createFont("Arial", 28);
  textFont(fuente);

  img1 = loadImage("shrek0.jpg");
  img2 = loadImage("shrek1.jpg");
  img3 = loadImage("shrek2.jpg");
  img4 = loadImage("shrek3.jpg");

  colorBoton = color(255, 155, 31);
  frameInicio = frameCount;
}

void draw() {
  background(255);
  int tiempo = frameCount - frameInicio;

  if (tiempo < 60 * 5) {
    pantalla = 0;
  } else if (tiempo < 60 * 10) {
    pantalla = 1;
  } else if (tiempo < 60 * 15) {
    pantalla = 2;
  } else if (tiempo < 60 * 20) {
    pantalla = 3;
  } else {
    pantalla = 4;
  }

  if (pantalla == 0) {
    image(img1, 0, 0, width, height);

  } else if (pantalla == 1) {
    image(img2, 0, 0, width, height);
    if (animY2 < 100) {
      animY2++;
    }
    fill(255);
    textAlign(LEFT, TOP);
    textSize(20);
    text(texto1, 10, animY2 - 50);

  } else if (pantalla == 2) {
    image(img3, 0, 0, width, height);
    if (animY3 < 90) {
      animY3 += 2;
    }
    
    textAlign(LEFT, TOP);
    textSize(23);
    text(texto2, 10, animY3 - 60);

  } else if (pantalla == 3) {
    image(img4, 0, 0, width, height);
    if (animX4 < 50) {
      animX4 += 2;
    }
    fill(255);
    textAlign(LEFT, CENTER);
    textSize(24);
    text(texto3, animX4, 350);
  } else if (pantalla == 4) {
  image(img4, 0, 0, width, height); 

  fill(255); // 
  textAlign(CENTER, BOTTOM);
  textSize(24);
  text(texto4, width/2, height/2 + 80); 

  // Botón
  fill(colorBoton);
  rect(240, 400, 160, 50);
  fill(255);
  textAlign(CENTER, CENTER);
  text("Reiniciar", 320, 425); }
}

void mousePressed() {
  if (pantalla == 4) {
    if (mouseX > 240 && mouseX < 400 && mouseY > 400 && mouseY < 450) {
      frameInicio = frameCount;
      tamTexto = 1;
      animY2 = 10;
      animY3 = -200;
      animX4 = 0;
    }
  }
}
