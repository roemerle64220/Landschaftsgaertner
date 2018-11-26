public abstract class Kompositum extends Gartenkomponente
{
  private ArrayList <Gartenkomponente> vektor;
  
  public Kompositum(float x , float y, float b, float h, String farbe){
    super(x,y,b,h,farbe);
    vektor = new ArrayList();
  }
  
  public ArrayList <Gartenkomponente> liefereElemente()
  {
    return this.vektor;
  }
  
  public void hinzufuegen(Gartenkomponente komponente)
  {
    this.vektor.add(komponente);
  }
  
  public void entfernen (Gartenkomponente komponente)
  {
    for(int i = 0; i< vektor.size(); i++){
      if(vektor.get(i) == komponente)
        vektor.remove(i);
    }
  }
  
  public void anzeigen()
  {
    anz.zeichnen();
    for(Gartenkomponente k : liefereElemente()){
      k.anzeigen();
    }
  }
  
}
  
  
