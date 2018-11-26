public class Anzeige
{
  private Size groesse;
  private Pos position;
  private String farbe;
  
  public Anzeige(Gartenkomponente k)
  {
    this.groesse = k.getSize();
    this.position = k.getPos();
    this.farbe = k.getFarbe();
  }
  
  
  public void zeichnen()
  {
    faerben();
    rect(position.x, position.y, groesse.breite, groesse.hoehe);
  }
  
  private void faerben()
  {
    switch(farbe)
    {
      case "ROT": fill(238,0,0);break;
      case "BLAU": fill(0,191,255);break;
      case "BRAUN": fill(165,42,42);break;
      case "GRAU": fill(179,179,179);break;
      case "WEISS": fill(255,255,255);break;
      case "SCHWARZ": fill(0,0,0);break;
      case "HELLGRUEN": fill(127,255,0);break;
      case "DUNKELGRUEN": fill(0,139,0);break;
      case "RANDOM": fill((int)random(255), (int)random(255), (int)random(255));break;
      default: fill((int)random(255), (int)random(255), (int)random(255));break;
    }
  }
}
