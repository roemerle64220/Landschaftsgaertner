public abstract class Blatt extends Gartenkomponente
{
  
  public Blatt(float x , float y, float b, float h, String farbe)
  {
    super(x,y,b,h,farbe);
  }
  public Blatt()
  {
  }
  
  public void anzeigen()
  {
    anz.zeichnen();
  }
}
