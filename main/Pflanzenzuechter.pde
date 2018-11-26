public class Pflanzenzuechter
{
  public Pflanzenzuechter()
  {
  }
  
  public Pflanze pflanzen(int choice, int x, int y, int b, int w, String farbe, int age)
  {
    Pflanze neuePflanze;
    
    switch (choice)
    {
      case 1:
        neuePflanze = new Pflanze1(x, y, b, w, farbe, age);
        return neuePflanze;
      case 2:
        neuePflanze = new Pflanze2(x, y, b, w, farbe, age);
        return neuePflanze;
      case 3:
        neuePflanze = new Pflanze3(x, y, b, w, farbe, age);
        return neuePflanze;
      case 4:
        neuePflanze = new Pflanze4(x, y, b, w, farbe, age);
        return neuePflanze;
      default:
        neuePflanze = new Pflanze1(x, y, b, w, farbe, age);
        return neuePflanze;
    }
  }     
}
