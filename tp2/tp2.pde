int esquinaX1 = 450;
int esquinaY1 = 400;
int ancho = 150;
int alto = 60;
int centroX = 300;
int centroY = 400;
int diametro = 100;
float distanciaMouseBoton;
int alpha;
color relleno;
int tamano;
float x, y, tm2, y2;
String estado;
PImage screen0;
PImage screen1;
PImage screen2;


void setup() {
  size( 640, 480 );
  textSize( tamano );
  textAlign( CENTER, CENTER );
  screen0 = loadImage("screen0.jpg");
  screen1 = loadImage("screen1.jpg");
  screen2 = loadImage("screen2.jpg");
  y2 = 480;
  alpha = 255;
  tm2 = 640;
  tamano = 0;
  x=320;
  y=200;
  relleno = color(0, 200, 0, alpha);
  estado = "screen'0.jpg";
}

void draw() {


  println( frameCount/60);
    if ( frameCount/60 >= 0) {
    estado = "screen0.jpg";
    }
  if ( estado =="screen0.jpg") {
 screen0.resize(640, 480);
    image(screen0, 0, 0);
    textSize( tamano );
    fill(255);
    text( "Your Rainbow Panorama", width/2, height/2 );
  }
  if ( tamano < 55 ) {
    tamano = tamano + 1;
  }
  if ( frameCount/60 >= 5) {
    estado = "screen1.jpg";
  }
  if ( estado == "screen1.jpg") {
    screen1.resize(640, 480);
    tamano = 0;
    image(screen1, 0, 0);
    fill(#000000);
    textSize(20);
    text( "La obra Your Rainbow Panorama consiste en un pasillo\n circular de vidrio con todos los colores del espectro.\n La obra tiene un diámetro de 52 metros y está montada a 3.5 metros", tm2, y);
    tm2 = tm2 - 1;
    y = 200;
  }
  if ( frameCount/60 >= 12) {
    estado = "screen2.jpg";
  }
  if ( estado == "screen2.jpg") {
    screen2.resize(640, 480);
    tm2 = 640;
    image(screen2, 0, 0);
    fill(#3E0415);
    textSize(25);
    text( "La construcción costó 60 millones de coronas danesas\n y fue financiado por la fundación Realdania. ", width/2, y2);
    fill(255);
    y2 = y2 -1;
  }
  if ( frameCount/60 >= 15) {
    rect (esquinaX1, esquinaY1, ancho, alto);
    fill(0);
    text("Reiniciar", 526, 432);

    distanciaMouseBoton = dist(mouseX, mouseY, centroX, centroY);
  }
}

void mousePressed() {
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
    frameCount = 0;
    estado ="screen0.jpg";
  }
}
