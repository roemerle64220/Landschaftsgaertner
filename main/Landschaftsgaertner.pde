public class Landschaftsgaertner
{
  public BeetKonfigurator konfigurator;
  //private ArrayList <Beet> beete;
  
  public Landschaftsgaertner()
  {
    konfigurator = new BeetKonfigurator();
  }
  
  public class Beet extends Kompositum
  {
    public Beet(float x , float y, float b, float h, String farbe, ArrayList<Pflanze> pflanzen)    //Sollte eigentlich private sein- jedoch lässt processing keine nested static classes zu!
    {
      super(x,y,b,h,farbe);
      
      for (int i=0; i<pflanzen.size(); i++)
      {
        this.hinzufuegen(pflanzen.get(i));
      }
      
    }
  
  }
  
  public Garten gartenErstellen()
  {
    float gartenxPos = width/8;
    float gartenyPos = height/8;
    float gartenBreite = 3*width/4;
    float gartenHoehe = 3*height/4;
    String gartenFarbe = "HELLGRUEN";
    float beetBreite = 4*gartenBreite/9;
    float beetHoehe = 4*gartenHoehe/9;
    float beetxPos2 = gartenxPos + 5*gartenBreite/9;
    float beetyPos2 = gartenyPos + 5*gartenHoehe/9;
    String beetFarbe = "DUNKELGRUEN";
    
    Garten garten = new Garten(gartenxPos, gartenyPos, gartenBreite, gartenHoehe, gartenFarbe); //hier kannst du jetz nochmal den Konfigurator ausprobieren! - Ich hab den Konstruktor erweitert um die Komponente ArrayList<Pflanze
    /*konfigurator.setCoordinates(width/8, height/8)
    konfigurator.setSize((4/9)*gartenBreite, (4/9)*gartenBreite)
    .setFarbe("DUNKELGRUEN")
    .beetErstellen(this);*/
    Beet beet1 = new Beet(gartenxPos, gartenyPos,  beetBreite, beetHoehe, beetFarbe);
    garten.hinzufuegen(beet1);
    Beet beet2 = new Beet(beetxPos2, beetyPos2, beetBreite, beetHoehe, beetFarbe);
    garten.hinzufuegen(beet2);
    Beet beet3 = new Beet(beetxPos2, gartenyPos, beetBreite, beetHoehe, beetFarbe);
    garten.hinzufuegen(beet3);
    Beet beet4 = new Beet(gartenxPos, beetyPos2, beetBreite, beetHoehe, beetFarbe);
    garten.hinzufuegen(beet4);
    Weg weg1 = new Weg(gartenxPos+4*gartenBreite/9, gartenyPos, gartenBreite/9, gartenHoehe, "BRAUN");
    garten.hinzufuegen(weg1);
    Weg weg2 = new Weg(gartenxPos, gartenyPos + 4*gartenHoehe/9, gartenBreite, gartenHoehe/9, "BRAUN");
    garten.hinzufuegen(weg2);
    return garten;
    
  }
  
}
