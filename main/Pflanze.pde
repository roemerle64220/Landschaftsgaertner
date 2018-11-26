public class Pflanze extends Blatt
{
  private BoundingBox box;
  protected ArrayList<float[]> pts;
  protected Grammar grammar;
  protected int age;
  protected String axiom;
  protected TurtleStack ts;  
  
  public Pflanze(float x , float y, float b, float h, String farbe)
  {
    super(x,y,b,h,farbe);
  }
  
  public BoundingBox getBoundingBox()
  {
    return box;
  }
  
  public void setBoundingBox(float n, float e, float s, float w)
  {
    box = new BoundingBox(n,e,s,w);
  }
  
  public void anzeigen()
  {
    anz.zeichnen();
  }  
}
