//Juan Ignacio Urquijo

//https://youtu.be/7LKjNDY-AAg
PImage img32;
int cant1 = 7;
int cant2 = 8;
color colorArriba = color(255); 


void setup() {
  size(800, 400);
  background(220);
  img32 = loadImage ("32.jpg");
}

void draw() {
  
  for (int i = 0; i < cant1; i++) {
    for (int j = 0; j < cant2; j++) {
      float x = 400 + i * 60;
      float y = 10 + j * 120;
      stroke(0);
      dibujarCubo(x, y, 30);
    }
  }
  
   for (int i = 0; i < cant2; i++) {
    for (int j = 0; j < cant2; j++) {
      float x = 370 + i * 60;
      float y = 71 + j * 120;
      stroke(0);
      dibujarCubo(x, y, 30);
    }
  }
  image (img32,0,0,400,400);
  
  float brillo = calcularBrillo(colorArriba);

  if (brillo > 127) {
    println("Color claro");
  } else {
    println("Color oscuro");
  }
  
  }
