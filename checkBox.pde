public class checkBox {
  private int size=10;
  public int x =700;
  public int y;
  private boolean checked = false;
  private color c = color(255,255,255);
  public int value = -1;
  
  public checkBox(int yCoord) {
    
    y = yCoord;
  }
  
  public void draw() {
  fill(c);
  rect(x, y, size, size);
  }
  
  void mousePressed() {
    if (mouseX>=x-size/2 && mouseX<=x+size/2 && mouseY>=Y-size/2 && mouseY<=y+size/2) {
      value*=-1;
      if (value>0) {
        c = color(255,255,255);
      }
      else{
        c = color(0,0,0);
      }
    }
  }
  
}
