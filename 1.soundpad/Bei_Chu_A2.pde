import processing.sound.*;
SinOsc osc;

Cell [][] grid;
int rows = 3;
int cols = 7;

boolean [][] selected;

float [][] notes;
int spacing = 20;

void setup() {
  size(1000, 800);
  background(0);
  selected = new boolean[rows][cols];
  // grid in window
  grid = new Cell [rows][cols];
  for (int i=0; i<rows; i++) {
    for (int j=0; j<cols; j++) {
      grid [i][j] = new Cell (i*50, j*50, 50, 50);
      selected [i][j] = true;
    }
  }
  osc = new SinOsc(this);
}

void draw() {
  if (frameCount%15==1) {
    t=(t+1)%16;
    osc.stop();

    if (selected[i][j]) {
      osc.freq(notes[t][t]);
      osc.play();
      grid[i][j].interaction();
     // grid [i][j]. display();
    }
  }

  for (int i = 0; i<30; i++)
  {
    if (selected[i]) fill(150, 150, 255);
    else fill(255);

    if (i==t) fill(255, 0, 0);

    rect(i*spacing, 20, spacing-10, spacing-10);
  }
}

// celle class to place notes
class Cell {
  float x;
  float y;
  float w;
  float h;

  Cell (float x_, float y_, float w_, float h_)
  {
    x=x_;
    y=y_;
    w=w_;
    h=h_;
  }

  void interaction ()
  {
    if (mousePressed)
    {
      int eye = mouseX/spacing;
      if (eye>-1 && eye<selected.length) selected[eye]=!selected[eye];
    }
  }

  void display() {
    stroke (255);
    fill (bright);
    rect (x,y,w,h);

  // reflect notes to different rects
    //float [][] notes = new float [cols][row];
    float [i][j] notes ={ {130.81, 146.83, 164.81, 147.61, 196.00, 220.00, 246.94},
                        {261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88},
                        {523.25, 587.33, 659.26, 698.46, 783.99, 880.00, 987.77} };
    for (int s =0; s <notes.length; s++) {
      for (int t=0 ; t< notes[s].length ; t++) {
        selected[s] = true;
        notes[s][t] = notes [s][t];
      }
    }
  }
}