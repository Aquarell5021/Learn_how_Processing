import processing.sound.*;
SinOsc osc; 

boolean play = true; //wheather music is playing or not

int rows = 5;
int cols = 7;

boolean selected[][];                            
float [] notes = {130.81, 196.83, 210.81, 307.61, 396.00}; // five notes available
int spacing = 20;

void setup() {
  //size((cols*60)+20, (rows*60)+120);
  background(0);
  // grid in window
  selected = new boolean[rows][cols];

  for (int i=0; i<rows; i++) {
    for (int j=0; j<cols; j++) {
      selected [i][j] = false;
    }
  }
  osc = new SinOsc(this);
}

void draw() 
{
  create_table();
    
}

void create_table()
{
}

void mousePressed()
{
  
}

/*  void interaction () //<>//
  {
    if (mousePressed)
    {
      int eye = mouseX/spacing;
      if (eye>-1 && eye<selected.length) selected[eye]=!selected[eye];
    }
  }

  void display() 
  {
    stroke (255);
    fill (bright);
    rect (x, y, w, h);

    // reflect notes to different rects
    //float [][] notes = new float [cols][row];
    
    for (int s =0; s <notes.length; s++) 
    {
      for (int t=0; t< notes[s].length; t++) 
      {
        selected[s] = true;
        notes[s][t] = notes [s][t];
      }
    }
  }
*/