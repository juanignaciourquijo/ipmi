void dibujarCubo(float x, float y, float t) {
  float x0 = x;
  float y0 = y;
  float x1 = x + t;
  float y1 = y - t;
  float x2 = x + 2 * t;
  float y2 = y;
  float x3 = x + t;
  float y3 = y + t;
  float x4 = x;
  float y4 = y + t;
  float x5 = x + t;
  float y5 = y + 2 * t;
  float x6 = x + 2 * t;
  float y6 = y + t;

  // Cara de arriba
  fill(colorArriba);
  quad(x0, y0, x1, y1, x2, y2, x3, y3);

  // Cara izquierda
  fill(150);
  quad(x0, y0, x3, y3, x5, y5, x4, y4);

  // Cara derecha
  fill(0);
  quad(x3, y3, x2, y2, x6, y6, x5, y5);
}

float calcularBrillo(color c) {
  float r = red(c);
  float g = green(c);
  float b = blue(c);
  return (r + g + b) / 3.0;
}

void mousePressed() {
  colorArriba = color(random(255), random(255), random(255));
}


  void mouseMoved() {
  float d = dist(mouseX, mouseY, width/2, height/2);

  float brillo = map(d, 0, dist(0, 0, width/2, height/2), 255, 0);
  
  colorArriba = color(brillo);
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    colorArriba = color(255);
  }
}
