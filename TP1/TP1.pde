PImage autorretrato; 
void setup () {
size(800, 400); 
autorretrato=  loadImage("autorretrato.jpg");
background(167);


rect(450,250,300,200);
fill(#000000);
rect(518,324,150,30);
fill(#FFDAC1);
ellipse(500,190,20,50);
ellipse(700,190,20,50);
ellipse(600,182,200,220);
fill(#000000);
rect(530,140,60,10);
rect(610,140,60,10);
fill(#FFFDFC);
ellipse(555,160,50,10);
ellipse(635,160,50,10);
fill(#A56600);
ellipse(555,160,10,10);
ellipse(635,160,10,10);
fill(#030303);
ellipse(550,100,180,70);
ellipse(650,100,180,70);
noFill();
stroke(0);
ellipse (597,203,1,5);
line(590,162,582,200);
arc(592,198, 20, 15, 0, PI);
fill(#FFFFFF);
rect (560,200,80,115);
fill(#FFDAC1);
stroke(#FFD595);
strokeWeight(15);
line(566,248,559,245);
line(574,239,555,224);
line(581,236,564,200);
line(599,229,584,201);
line(632,249,639,238);
stroke(#000000);
strokeWeight(1);
ellipse(600,270,80,80);
quad(639,268,770,399,703,399,599,302);




}

void draw()  {
  println("x:");
println(mouseX);
println("Y:");
println(mouseY);
  autorretrato.resize(400,400);
  image(autorretrato,0,0);
 
  
  
}
