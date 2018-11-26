public class Lord
{
  private Landschaftsgaertner gaertner;
  private Garten garten;
  
  public Lord(Landschaftsgaertner gaertner)
  {
    this.gaertner = gaertner;
  }
  
  public void betrachten()
  {
    garten.anzeigen();
  //for(Gartenkomponente k : garten.liefereElemente()){
     // k.anzeigen();
    //}
  }
  
  public void gartenAnlegenLassen()
  {
    this.garten = gaertner.gartenErstellen();
  }
  
  public void neuBepflanzenLassen()
  {
  }
}
