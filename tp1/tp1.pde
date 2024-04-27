PImage paisaje;

void setup() {
  size(800, 400);
paisaje = loadImage ("paisaje.jpg");
}
    void draw (){ 
     
      background (111, 255, 235); 
                  
      
      
      fill (238, 250, 78) ; 
      circle (576, 388, 370);  
      fill(255);
      circle(790, 290, 100);
      circle(400, 290, 70);
      fill (13, 219, 220);
      rect( 0, 270, 800, 285);
                        image(paisaje, 0, 0);

      paisaje.resize(400,400);
 fill(4, 93, 3);
    triangle(505, 162, 524, 127, 518, 107);  
    triangle(485, 85, 523, 111, 534, 95);
      triangle(474, 121, 526, 123, 515, 102);
      triangle(530, 25, 535, 95, 511, 89);
      triangle(514, 173, 530, 146, 524, 127);
      triangle(556, 66, 534, 90, 544, 116);
      triangle(578, 104, 541, 119, 548, 141);
      triangle(575, 61, 537, 101, 542, 122);
      triangle(536, 132, 537, 92, 522, 111);
      triangle(681, 49, 657, 108, 637, 90);
      triangle(592, 72, 631, 111, 639, 89);
      triangle(604, 27, 637, 90, 663, 68);
      triangle(593, 43, 634, 98, 646, 78);
      triangle(694, 147, 658, 108, 646, 130);
      triangle(700, 81, 648, 98, 664, 113);
      triangle(597, 100, 626, 127, 631, 111);
      fill(90, 48, 3);
      quad(536, 90, 521, 114, 550, 213, 566, 204);
      
      quad(638, 89, 658, 108, 614, 216, 603, 205);
      fill(4, 93, 3);
     triangle(550, 152, 537, 92, 522, 114);
     triangle(629, 141, 657, 108, 638, 89);
     
    }
void mousePressed(){
  println(mouseX , mouseY);
}
