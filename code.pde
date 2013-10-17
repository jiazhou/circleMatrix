//jiazhou
//Oct 17,2013

int row;
int column;

void setup() {
  size (800, 400);
  background(255);
  smooth();
  row=20;
  column=40;
}

void draw() {
  background(255);
  noStroke();

  //distance bewteen circles on x axis
  int xInterval=width/column;

  //distance between circles on y axis
  int yInterval=height/row;

  for (int i = 0;i<=column; i++) {
    for (int j=0;j<=row;j++) {

      //check the distance between mouse position and circle
      if (dist(mouseX, mouseY, i*xInterval, j*yInterval)<50) {
        //if the distance is less than 50, fill with white
        fill(255);
      }

      else {
        //all other circles are filled with color      
        float blue =map(mouseX, 0, width, 0, 255);
        float green =map(mouseY, 0, height, 0, 255);
        float red = map(i*xInterval, 0, width, 0, 255);
        fill(red, green, blue);
      }

      //finally draw the circle
      ellipse(i*xInterval, j*yInterval, 10, 10);
    }
  }
}
