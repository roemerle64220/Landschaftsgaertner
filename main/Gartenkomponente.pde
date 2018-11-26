public abstract class Gartenkomponente
{
  
  protected Pos position;
  protected Size groesse;
  protected Anzeige anz;
  private String farbe;
  
  public Gartenkomponente(float x , float y, float b, float h, String farbe)
  {
    this.position = new Pos(x,y);
    this.groesse = new Size(b,h);
    this.farbe = farbe;
    anz = new Anzeige(this);
  }
  
  public Gartenkomponente()
  {
  }
  
  
  public void anzeigen()
  {
    //anz.zeichnen();
  }
  
  public Size getSize(){
    return this.groesse;
  }
  
  public Pos getPos()
  {
    return this.position;
  }
  
  public String getFarbe()
  {
    return this.farbe;
  }
  
  public void setFarbe(String farbe)
  {
    this.farbe = farbe;
  }
  
  public void setSize(float b, float h)
  {
    this.groesse.breite = b;
    this.groesse.hoehe = h;
  }
  
  public void setPos(float x, float y)
  {
    this.position.x = x;
    this.position.y = y;
  }
}
