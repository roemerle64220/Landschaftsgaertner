public static class BeetKonfigurator
 {
  private ArrayList <Pflanze> pflanzen;
  public Pflanzenzuechter zuechter;
  private String farbe;
  private float x_pos = 0;
  private float y_pos = 0;
  private float breite = 5;
  private float hoehe = 5;
  
  public BeetKonfigurator()
  {
    pflanzen = new ArrayList<Pflanze>();
    zuechter = new Pflanzenzuechter(); //keine Ahnung was Processing hier wieder für ein Problem hat 
  }
  
  public BeetKonfigurator addPflanze( Pflanze pflanze)
  {
    pflanzen.add(pflanze);
    return this;
  }
  
  public BeetKonfigurator setCoordinates(float x_pos, float y_pos)
  {
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    return this;
  }
  
  public BeetKonfigurator setSize(float breite, float hoehe)
  {
    this.hoehe = hoehe;
    this.breite = breite;
    return this;
  }
  
  public BeetKonfigurator setFarbe(String farbe)
  {
    this.farbe = farbe;
    return this;
  }
  
  public Landschaftsgaertner.Beet beetErstellen(Landschaftsgaertner gaertner) //bei dieser Funktion klappt die Zufallszahlenerzeugung irgendwie nicht, vielleicht findest du ja noch die Lösung - 
  //deswegen funktioniert die Funktion pflanzen auch noch nicht obwohl alle Parameter richtig übergeben werden.
  {     
       int rand_gattung;
       
       int(random(3.1)+1.0); //generate a random number to select a kind of plant
       
       int rand_age;
       
       int(random(3.1)+2.0); //generate a random number to set the age of the plants
     
        do{
          
          pflanzen = new ArrayList<Pflanze>();
          
          switch(rand_gattung)
          {
            case(1):                      
            for (int i= int (x_pos); i<int(this.x_pos+this.breite); i = int (i + Pflanze1.breite))
              {
                for (int j = int(y_pos); j< int(this.y_pos + this.hoehe); j = int(j + Pflanze1.hoehe))
                {
                  addPflanze(zuechter.pflanzen(rand_gattung,i,j,Pflanze1.breite, Pflanze1.hoehe, "SCHWARZ", rand_age));
                }
              }
            case(2):
              for (int i=int(x_pos); i<int(this.x_pos+this.breite); i=int(i+Pflanze2.breite))
              {
                for (int j=int(y_pos); j<int(this.y_pos + this.hoehe); j=int(j+Pflanze2.hoehe))
                {
                addPflanze(zuechter.pflanzen(rand_gattung,i,j,Pflanze2.breite, Pflanze2.hoehe, "SCHWARZ", rand_age));
                }
              }
            case(3):
              for (int i=int(x_pos); i<int(this.x_pos+this.breite); i=int(i+Pflanze3.breite))
              {
                for (int j=int(y_pos); j<int(this.y_pos + this.hoehe); j=int(j+Pflanze3.hoehe))
                {
                  addPflanze(zuechter.pflanzen(rand_gattung,i,j,Pflanze3.breite, Pflanze3.hoehe, "SCHWARZ", rand_age));
                }
              }
            case(4):
              for (int i=int(x_pos); i<int(this.x_pos+this.breite); i=int(i+Pflanze4.breite))
              {
                for (int j=int(y_pos); j<int(this.y_pos + this.hoehe); j=int(j+Pflanze4.hoehe))
                {
                  addPflanze(zuechter.pflanzen(rand_gattung,i,j,Pflanze4.breite, Pflanze4.hoehe, "SCHWARZ", rand_age));
                }
              }
          } 
        }while (!konfigurationPruefen());
  
        return gaertner.new Beet(x_pos, y_pos, breite, hoehe, farbe, pflanzen);  //processing erforedert, dass die zurückgegebene Klasse innerhalb einer Instanz von Main liegt:
                                                              //No enclosing instance is accessible. Must qualify the allocation with an enclosing instance of type (e.g. x.new A() where x is an instance of )
  }
  
  private boolean konfigurationPruefen()
  {
      boolean intersection = false;
    
    for(int i=0; i<(pflanzen.size()-1); i++)
    {
      BoundingBox test1 = pflanzen.get(i).getBoundingBox();
      for(int j=i+1; j<pflanzen.size(); j++)
      {
        BoundingBox test2 = pflanzen.get(j).getBoundingBox();
        if  ((test1.getEast() < test2.getWest()) &&
            (test1.getWest() > test2.getEast()) &&
            (test1.getNorth() < test2.getSouth()) &&
            (test1.getSouth() > test2.getNorth()))
            {
              intersection = true;
              break;
            }
      }
      if (intersection==true)
        break;
    }
    
    return intersection;
  }
  
}
