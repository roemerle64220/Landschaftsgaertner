import com.reades.mapthing.*;
import net.divbyzero.gpx.*;
import net.divbyzero.gpx.parser.*;

import java.text.CharacterIterator;
import lsystem.*;
import lsystem.collection.*;
import lsystem.collection.csrule.*;
import lsystem.collection.wrule.*;
import lsystem.turtle.*;
import lsystem.util.*;

void setup(){
  fullScreen();
  Landschaftsgaertner gaertner = new Landschaftsgaertner();
  Lord grantham = new Lord(gaertner);
  grantham.gartenAnlegenLassen();
  grantham.betrachten();
  
}

void draw(){
}


void update(){
}
