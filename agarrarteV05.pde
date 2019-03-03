import de.voidplus.leapmotion.*;
LeapMotion leap;

//Imagenes

PImage coti01;
PImage coti02;
PImage coti03;
PImage coti04;
PImage coti05;
PImage coti06;
PImage coti07;
PImage coti08;
PImage coti09;
PImage coti10;
PImage coti11;

PImage cuer01;
PImage cuer02;
PImage cuer03;
PImage cuer04;
PImage cuer05;

PImage indu01;
PImage indu02;
PImage indu03;
PImage indu04;
PImage indu05;
PImage indu06;
PImage indu07;

PImage memo01;
PImage memo02;
PImage memo03;
PImage memo04;
PImage memo05;
PImage memo06;
PImage memo07;

PImage onir01;
PImage onir02;
PImage onir03;
PImage onir04;
PImage onir05;
PImage onir06;
PImage onir07;

PImage teol01;
PImage teol02;
PImage teol03;
PImage teol04;
PImage teol05;
PImage teol06;
PImage teol07;
PImage teol08;
PImage teol09;
PImage teol10;
PImage teol11;
PImage teol12;
PImage teol13;
PImage teol14;
PImage teol15;
PImage teol16;
PImage teol17;
PImage teol18;

PImage imagen;
String titulo;

float[] indice;
float[] movimiento;
float tituloy;
PVector handPosition;

boolean handIsLeft;
boolean handIsRight;
float   handGrab;

float[][] aPuntos = new float[3000][6]; //Posicion X, posicionY, offset, X titulo, Y titulo, x der titulo
PImage[] aImagen = new PImage[3000];
PImage[] aImagenDer = new PImage[3000];
String[] aTitulo = new String[3000];
String[] aTituloDer = new String[3000];

int year;

float t, tt;

void setup() {

  size(1800, 1020);
  smooth();
  noStroke();
  background(250);

  leap = new LeapMotion(this);

  //Imagenes
  coti01= loadImage ("coti01.jpg");
  coti02= loadImage ("coti02.jpg");
  coti03= loadImage ("coti03.jpg");
  coti04= loadImage ("coti04.jpg");
  coti05= loadImage ("coti05.jpg");
  coti06= loadImage ("coti06.jpg");
  coti07= loadImage ("coti07.jpg");
  coti08= loadImage ("coti08.jpg");
  coti09= loadImage ("coti09.jpg");
  coti10= loadImage ("coti10.jpg");
  coti11= loadImage ("coti11.jpg");


  cuer01= loadImage ("cuer01.jpg");
  cuer02= loadImage ("cuer02.jpg");
  cuer03= loadImage ("cuer03.jpg");
  cuer04= loadImage ("cuer04.jpg");
  cuer05= loadImage ("cuer05.jpg");

  indu01= loadImage ("ind01.jpg");
  indu02= loadImage ("ind02.jpeg");
  indu03= loadImage ("ind03.jpg");
  indu04= loadImage ("ind04.jpg");
  indu05= loadImage ("ind05.jpg");
  indu06= loadImage ("ind06.png");
  indu07= loadImage ("ind07.jpg");

  memo01= loadImage ("memo01.jpg");
  memo02= loadImage ("memo02.jpg");
  memo03= loadImage ("memo03.jpg");
  memo04= loadImage ("memo04.jpg");
  memo05= loadImage ("memo05.jpg");
  memo06= loadImage ("memo06.jpg");
  memo07= loadImage ("memo07.png");


  onir01= loadImage ("onir01.jpeg");
  onir02= loadImage ("onir02.JPG");
  onir03= loadImage ("onir03.jpg");
  onir04= loadImage ("onir04.jpg");
  onir05= loadImage ("onir05.jpg");
  onir06= loadImage ("onir06.jpg");
  onir07= loadImage ("onir07.jpg");

  teol01= loadImage ("teol01.jpg");
  teol02= loadImage ("teol02.jpg");
  teol03= loadImage ("teol03.jpg");
  teol04= loadImage ("teol04.jpg");
  teol05= loadImage ("teol05.jpg");
  teol06= loadImage ("teol06.jpg");
  teol07= loadImage ("teol07.jpg");
  teol08= loadImage ("teol08.jpg");
  teol09= loadImage ("teol09.jpg");
  teol10= loadImage ("teol10.jpg");
  teol11= loadImage ("teol11.jpg");
  teol12= loadImage ("teol12.jpg");
  teol13= loadImage ("teol13.jpg");
  teol14= loadImage ("teol14.jpg");
  teol15= loadImage ("teol15.jpg");
  teol16= loadImage ("teol16.jpg");
  teol17= loadImage ("teol17.jpg");


  translate(0, 0);
  float tt1;
  for (int a = 0; a <= 2020; a+=10) {
    tt1 = radians(a+1);
    aPuntos[a][0]= tt1*9*cos(tt1)+900;
    aPuntos[a][1]= tt1*9*sin(tt1)+570;
    aPuntos[a][2]= 0;
  }
  //COTIDIANIDAD
  //01 Vieja friendo huevos. Diego Velázquez
  aPuntos[1610][2]=28;
  aPuntos[1610][3]=45;
  aPuntos[1610][4]=420;
  aImagen[1610]=coti01;
  aTitulo[1610]="Vieja friendo huevos. Diego Velázquez";

  //02 The Store. Claes Oldenburg
  aPuntos[1960][2]=25;
  aPuntos[1960][3]=45;
  aPuntos[1960][5]=415;
  aImagenDer[1960]=coti02;
  aTituloDer[1960]="The Store. Claes Oldenburg";

  //03 Nighthawks. Edward Hopper
  aPuntos[1940][2]=28;
  aPuntos[1940][3]=45;
  aPuntos[1940][4]=350;
  aImagen[1940]=coti03;
  aTitulo[1940]="Nighthawks. Edward Hopper";

  //04 Woman wearing gloves. Berthe Morisot
  aPuntos[1890][2]=25;
  aPuntos[1890][3]=45;
  aPuntos[1890][4]=420;
  aImagen[1890]=coti04;
  aTitulo[1890]="Woman wearing gloves. Berthe Morisot";

  //05  View from the Artist's Window. Martinus Rørbye
  aPuntos[1820][2]=25;
  aPuntos[1820][3]=45;
  aPuntos[1820][4]=420;
  aImagen[1820]=coti05;
  aTitulo[1820]="View from the Artist's Window. Martinus Rørbye";

  //06  Ascensión de un globo Montgolfier en Aranjuez. Antonio Carnicero
  aPuntos[1770][2]=20;
  aPuntos[1770][3]=45;
  aPuntos[1770][4]=380;
  aImagen[1770]=coti06;
  aTitulo[1770]="Ascensión de un globo Montgolfier en Aranjuez. Antonio Carnicero";

  //07 The Swing. Jean-Honoré Fragonard
  aPuntos[1760][2]=20;
  aPuntos[1760][3]=45;
  aPuntos[1760][4]=420;
  aImagen[1760]=coti07;
  aTitulo[1760]="The Swing. Jean-Honoré Fragonard";

  //08 Celebration of a Birth. Richard Brakenburgh
  aPuntos[1680][2]=20;
  aPuntos[1680][3]=45;
  aPuntos[1680][4]=420;
  aImagen[1680]=coti08;
  aTitulo[1680]="Celebration of a Birth. Richard Brakenburgh";

  //09 Girl with a Pearl Earring. Johannes Vermeer
  aPuntos[1660][2]=20;
  aPuntos[1660][3]=45;
  aPuntos[1660][4]=420;
  aImagen[1660]=coti09;
  aTitulo[1660]="Girl with a Pearl Earring. Johannes Vermeer";

  //10 Under the Horse Chestnut Tree. Mary Cassatt.
  aPuntos[1900][2]=20;
  aPuntos[1900][3]=45;
  aPuntos[1900][4]=420;
  aImagen[1900]=coti10;
  aTitulo[1900]="Under the Horse Chestnut Tree. Mary Cassatt.";

  //11 Man on horseback. Gerard ter Borch
  aPuntos[1630][2]=20;
  aPuntos[1630][3]=45;
  aPuntos[1630][4]=420;
  aImagen[1630]=coti11;
  aTitulo[1630]="Man on horseback. Gerard ter Borch";


  //CUERPO
  //01  Omniprésence Smile of pleasure. Orlan
  aPuntos[1990][2]=24;
  aPuntos[1990][3]=45;
  aPuntos[1990][4]=400;
  aImagen[1990]=cuer01;
  aTitulo[1990]="Omniprésence Smile of Pleasure. Orlan";

  //02 David. Miguel Ángel
  aPuntos[1500][2]=15;
  aPuntos[1500][3]=45;
  aPuntos[1500][4]=420;
  aImagen[1500]=cuer02;
  aTitulo[1500]="David. Miguel Ángel";

  //03 Señoritas de Aviñon. Pablo Picasso
  aPuntos[1910][2]=25;
  aPuntos[1910][3]=45;
  aPuntos[1910][4]=420;
  aImagen[1910]=cuer03;
  aTitulo[1910]="Señoritas de Aviñon. Pablo Picasso";

  //04 Adolescencia. Debora Arango
  aPuntos[1950][2]=25;
  aPuntos[1950][3]=45;
  aPuntos[1950][4]=400;
  aImagen[1950]=cuer04;
  aTitulo[1950]="Adolescencia. Debora Arango";

  //05 portrait of a man holding a statuette. Angelo Bronzino
  aPuntos[1540][2]=25;
  aPuntos[1540][3]=45;
  aPuntos[1540][4]=440;
  aImagen[1540]=cuer05;
  aTitulo[1540]="Portrait of a man holding a statuette. Angelo Bronzino";

  //INDUSTRIA
  //01 Pitheads. Bernd Becher and Hilla Becher 
  aPuntos[1970][2]=25;
  aPuntos[1970][3]=45;
  aPuntos[1970][4]=476;
  aImagen[1970]=indu01;
  aTitulo[1970]="Pitheads. Bernd Becher and Hilla Becher";

  //02 Obreros. Tarsila do Amaral
  aPuntos[1930][2]=25;
  aPuntos[1930][3]=45;
  aPuntos[1930][4]=420;
  aImagen[1930]=indu02;
  aTitulo[1930]="Obreros. Tarsila do Amaral";

  //03 Le Grand Verre. Marcel Duchamp
  aPuntos[1920][2]=25;
  aPuntos[1920][3]=45;
  aPuntos[1920][4]=420;
  aImagen[1920]=indu03;
  aTitulo[1920]="Le Grand Verre. Marcel Duchamp";

  //04 Vapour fisherman cleaning and selling fish. William Turner
  aPuntos[1800][2]=25;
  aPuntos[1800][3]=45;
  aPuntos[1800][4]=420;
  aImagen[1800]=indu04;
  aTitulo[1800]="Vapour fisherman cleaning and selling fish. William Turner";

  //05 The Angelus. Jean-François Millet
  aPuntos[1850][2]=25;
  aPuntos[1850][3]=45;
  aPuntos[1850][4]=460;
  aImagen[1850]=indu05;
  aTitulo[1850]="The Angelus. Jean-François Millet";

  //06 The Fellow 'Prentices at their Looms William Hogarth
  aPuntos[1740][2]=25;
  aPuntos[1740][3]=45;
  aPuntos[1740][4]=460;
  aImagen[1740]=indu06;
  aTitulo[1740]="The Fellow 'Prentices at their Looms William Hogarth";

  //07 Dutchman embarking onto a Yacht. Ludolf Backhuysen
  aPuntos[1670][2]=25;
  aPuntos[1670][3]=45;
  aPuntos[1670][4]=390;
  aImagen[1670]=indu07;
  aTitulo[1670]="Dutchman embarking onto a Yacht. Ludolf Backhuysen";


  //Memoria
  //01 Noviembre 6 y 7. Doris Salcedo 
  aPuntos[2000][2]=30;
  aPuntos[2000][3]=45;
  aPuntos[2000][4]=420;
  aImagen[2000]=memo01;
  aTitulo[2000]="Noviembre 6 y 7. Doris Salcedo";

  //
  year=1840;
  aPuntos[year][2]=25;
  aPuntos[year][3]=45;
  aPuntos[year][4]=420;
  aImagen[year]=memo02;
  aTitulo[year]="Thoughts of the Past. John Roddam Spencer Stanhope";

  //The Execution of emperor Maximilian. Edouard Manet.
  aPuntos[1860][2]=25;
  aPuntos[1860][3]=45;
  aPuntos[1860][4]=420;
  aImagen[1860]=memo03;
  aTitulo[1860]="The Execution of emperor Maximilian. Edouard Manet.";

  //04 La liberté guidant le peuple. Eugène Delacroix
  aPuntos[1830][2]=20;
  aPuntos[1830][3]=45;
  aPuntos[1830][4]=440;
  aImagen[1830]=memo04;
  aTitulo[1830]="La liberté guidant le peuple. Eugène Delacroix.";

  //05 Marat assassinated. Jean-Paul Marat 
  aPuntos[1790][2]=30;
  aPuntos[1790][3]=45;
  aPuntos[1790][4]=420;
  aImagen[1790]=memo05;
  aTitulo[1790]="Marat assassinated. Jean-Paul Marat.";

  //06 The nightwatch. Rembrandt
  aPuntos[1640][2]=30;
  aPuntos[1640][3]=45;
  aPuntos[1640][4]=460;
  aImagen[1640]=memo06;
  aTitulo[1640]="The nightwatch. Rembrandt";

  //07 Rhinoceros. Albrecht Durer
  aPuntos[1510][2]=30;
  aPuntos[1510][3]=45;
  aPuntos[1510][4]=460;
  aImagen[1510]=memo07;
  aTitulo[1510]="Rhinoceros. Albrecht Durer";


  //Onirico
  //01 El Jardín de las Delicias. El Bosco
  aPuntos[1500][2]=15;
  aPuntos[1500][3]=45;
  aPuntos[1500][5]=350;
  aImagenDer[1500]=onir01;
  aTituloDer[1500]="El Jardín de las Delicias. El Bosco";

  //02 La pesadilla. Henry Fuselli
  aPuntos[1780][2]=20;
  aPuntos[1780][3]=45;
  aPuntos[1780][4]=450;
  aImagen[1780]=onir02;
  aTitulo[1780]="La pesadilla. Henry Fuselli";

  //03 La llamada. Remedios Varo
  aPuntos[1960][2]=20;
  aPuntos[1960][3]=45;
  aPuntos[1960][4]=420;
  aImagen[1960]=onir03;
  aTitulo[1960]="La llamada. Remedios Varo";

  //04 l’Araignée qui pleure. Odilon Redon
  aPuntos[1880][2]=20;
  aPuntos[1880][3]=45;
  aPuntos[1880][4]=420;
  aImagen[1880]=onir04;
  aTitulo[1880]="l’Araignée qui pleure. Odilon Redon";

  //05 Wanderer above the sea of fog. Caspar David Friedrich
  aPuntos[1810][2]=20;
  aPuntos[1810][3]=45;
  aPuntos[1810][4]=420;
  aImagen[1810]=onir05;
  aTitulo[1810]="Wanderer above the sea of fog. Caspar David Friedrich";

  //06 The Fall of the Titans. Cornelis van Haarlem
  aPuntos[1590][2]=20;
  aPuntos[1590][3]=45;
  aPuntos[1590][4]=440;
  aImagen[1590]=onir06;
  aTitulo[1590]="The Fall of the Titans. Cornelis van Haarlem";

  //07 Nemesis Albrecht Durer
  aPuntos[1490][2]=20;
  aPuntos[1490][3]=45;
  aPuntos[1490][4]=420;
  aImagen[1490]=onir07;
  aTitulo[1490]="Nemesis. Albrecht Durer";


  //TEOLOGIA
  //01 La Virgen y el Niño. Arte Bizantino
  aPuntos[1290][2]=15;
  aPuntos[1290][3]=45;
  aPuntos[1290][4]=420;
  aImagen[1290]=teol01;
  aTitulo[1290]="La Virgen y el Niño. Arte Bizantino";

  //02 Judit decapitando a Holofernes. Artemisia Gentileschi
  aPuntos[1620][2]=15;
  aPuntos[1620][3]=45;
  aPuntos[1620][4]=426;
  aImagen[1620]=teol02;
  aTitulo[1620]="Judit decapitando a Holofernes. Artemisia Gentileschi";

  //03 Piss Christ. Andres Serrano
  aPuntos[1980][2]=20;
  aPuntos[1980][3]=45;
  aPuntos[1980][4]=420;
  aImagen[1980]=teol03;
  aTitulo[1980]="Piss Christ. Andres Serrano";

  //04 Lady Lillith. Dante Gabriel Rossetti
  aPuntos[1870][2]=20;
  aPuntos[1870][3]=45;
  aPuntos[1870][4]=420;
  aImagen[1870]=teol04;
  aTitulo[1870]="Lady Lillith. Dante Gabriel Rossetti";

  //05 Saint Teresa of Ávila. Filippo della Valle
  aPuntos[1750][2]=20;
  aPuntos[1750][3]=45;
  aPuntos[1750][4]=420;
  aImagen[1750]=teol05;
  aTitulo[1750]="Saint Teresa of Ávila. Filippo della Valle";

  //06 Madonna in trono e santi. Pompeo Batoni
  aPuntos[1730][2]=15;
  aPuntos[1730][3]=45;
  aPuntos[1730][4]=420;
  aImagen[1730]=teol06;
  aTitulo[1730]="Madonna in trono e santi. Pompeo Batoni";

  //07 Glory of St Dominic. Santi Giovanni e Paolo
  aPuntos[1720][2]=15;
  aPuntos[1720][3]=45;
  aPuntos[1720][4]=420;
  aImagen[1720]=teol07;
  aTitulo[1720]="Glory of St Dominic. Santi Giovanni e Paolo";

  //08 Confirmation. Giuseppe Maria Crespi.
  aPuntos[1710][2]=20;
  aPuntos[1710][3]=45;
  aPuntos[1710][4]=420;
  aImagen[1710]=teol08;
  aTitulo[1710]="Confirmation. Giuseppe Maria Crespi.";

  //09 Venus And Cupid. Sebastiano Ricci.
  aPuntos[1700][2]=20;
  aPuntos[1700][3]=45;
  aPuntos[1700][4]=420;
  aImagen[1700]=teol09;
  aTitulo[1700]="Venus And Cupid. Sebastiano Ricci.";

  //10 Crist jacent. Jean Del Cour.
  aPuntos[1690][2]=20;
  aPuntos[1690][3]=45;
  aPuntos[1690][4]=300;
  aImagen[1690]=teol10;
  aTitulo[1690]="Crist jacent. Jean Del Cour.";

  //11 The vision of St Paul. Nicolas Poussin.
  aPuntos[1650][2]=20;
  aPuntos[1650][3]=45;
  aPuntos[1650][4]=420;
  aImagen[1650]=teol11;
  aTitulo[1650]="The vision of St Paul. Nicolas Poussin.";

  //12 St John the Baptist in the Wilderness. Caravaggio.
  aPuntos[1600][2]=20;
  aPuntos[1600][3]=45;
  aPuntos[1600][4]=420;
  aImagen[1600]=teol12;
  aTitulo[1600]="St John the Baptist in the Wilderness. Caravaggio";

  //13 Paradaise (detail). Jacopo Tintoretto
  aPuntos[1580][2]=20;
  aPuntos[1580][3]=45;
  aPuntos[1580][4]=440;
  aImagen[1580]=teol13;
  aTitulo[1580]="Paradaise (detail). Jacopo Tintoretto";

  //14 The trial by fire of St Francis. Fra Angelico
  aPuntos[1420][2]=20;
  aPuntos[1420][3]=45;
  aPuntos[1420][4]=470;
  aImagen[1420]=teol14;
  aTitulo[1420]="The trial by fire of St Francis. Fra Angelico";

  //15 Madonna del Mare. Sandro Botticelli
  aPuntos[1470][2]=20;
  aPuntos[1470][3]=45;
  aPuntos[1470][4]=420;
  aImagen[1470]=teol15;
  aTitulo[1470]="Madonna del Mare. Sandro Botticelli";

  //16 The Lords of Montfoort. Anonymous.
  aPuntos[1390][2]=20;
  aPuntos[1390][3]=45;
  aPuntos[1390][4]=320;
  aImagen[1390]=teol16;
  aTitulo[1390]="The Lords of Montfoort. Anonymous";

  //17 The Madonna and Child with Saints. Duccio di Buoninsegna
  aPuntos[1310][2]=20;
  aPuntos[1310][3]=45;
  aPuntos[1310][4]=360;
  aImagen[1310]=teol17;
  aTitulo[1310]="The Madonna and Child with Saints. Duccio di Buoninsegna";
}

// ======================================================
// 1. Callbacks

void leapOnInit() {
  println("Leap Motion Init");
}
void leapOnConnect() {
  println("Leap Motion Connect");
}
void leapOnFrame() {
  //println("Leap Motion Frame");
}
void leapOnDisconnect() {
  println("Leap Motion Disconnect");
}
void leapOnExit() {
  //println("Leap Motion Exit");
}

void draw() {
  background(255);
  //titulo
  fill(0);
  textSize(54);
  text("AgarrArte", 790, 105);
  fill(250, 0, 0);
  textSize(14);
  text("Con tu indice sigue el espiral pasando sobre las decadas, prueba con tu mano derecha y con tu izquierda. Agarra los conceptos, cerrando tu mano en forma de puño", 430, 950);

  //menu conceptos
  fill(0);
  textSize(18);
  text("Cotidianidad", 350, 550);
  text("Cuerpo", 1350, 550);
  text("Industria", 350, 650);
  text("Memoria", 1350, 650);
  text("Onírico", 350, 750);
  text("Teológico", 1350, 750);

  for (Hand hand : leap.getHands ()) {
    // ==================================================
    // 2. Hand
    int     handId             = hand.getId();
    PVector handPosition       = hand.getPosition();
    PVector handStabilized     = hand.getStabilizedPosition();
    PVector handDirection      = hand.getDirection();
    PVector handDynamics       = hand.getDynamics();
    float   handRoll           = hand.getRoll();
    float   handPitch          = hand.getPitch();
    float   handYaw            = hand.getYaw();
    boolean handIsRight        = hand.isRight();

    float   handPinch          = hand.getPinchStrength();
    float   handTime           = hand.getTimeVisible();
    PVector spherePosition     = hand.getSpherePosition();
    float   sphereRadius       = hand.getSphereRadius();

    handGrab           = hand.getGrabStrength();
    handPosition       = hand.getPosition();
    //movimiento = handPosition.array();

    handIsLeft = hand.isLeft();

    // --------------------------------------------------
    // Drawing
    //hand.draw();
    // ==================================================
    // 3. Arm
    if (hand.hasArm()) {
      Arm     arm              = hand.getArm();
      float   armWidth         = arm.getWidth();
      PVector armWristPos      = arm.getWristPosition();
      PVector armElbowPos      = arm.getElbowPosition();
    }
    // ==================================================
    // 4. Finger
    Finger  fingerThumb        = hand.getThumb();
    // or                        hand.getFinger("thumb");
    // or                        hand.getFinger(0);
    Finger  fingerIndex        = hand.getIndexFinger();
    // or                        hand.getFinger("index");
    // or                        hand.getFinger(1);
    Finger  fingerMiddle       = hand.getMiddleFinger();
    // or                        hand.getFinger("middle");
    // or                        hand.getFinger(2);
    Finger  fingerRing         = hand.getRingFinger();
    // or                        hand.getFinger("ring");
    // or                        hand.getFinger(3);
    Finger  fingerPink         = hand.getPinkyFinger();
    // or                        hand.getFinger("pinky");
    // or                        hand.getFinger(4);

    for (Finger finger : hand.getFingers()) {
      // or              hand.getOutstretchedFingers();
      // or              hand.getOutstretchedFingersByAngle();
      int     fingerId         = finger.getId();
      PVector fingerPosition   = finger.getPosition();
      PVector fingerIndexPos   = fingerIndex.getPosition();
      PVector fingerStabilized = finger.getStabilizedPosition();
      PVector fingerVelocity   = finger.getVelocity();
      PVector fingerDirection  = finger.getDirection();
      float   fingerTime       = finger.getTimeVisible();
      // ------------------------------------------------
      // Drawing
      // Drawing:

      finger.draw(2);  // Executes drawBones() and drawJoints()
      //finger.drawBones();
      //finger.drawJoints(2);
      indice = fingerIndexPos.array();
    }

    float x = indice[0];
    float y = indice[1];
    for (int a = 0; a <= 2020; a+=10) {
      if (aPuntos[a][2]!=0) {
        if (x > aPuntos[a][0]-aPuntos[a][2] && x < aPuntos[a][0]+aPuntos[a][2] && y > aPuntos[a][1]-aPuntos[a][2] && y < aPuntos[a][1]+aPuntos[a][2]) {
          if (handIsRight && (a==1960 || a==1500)) {
            imagen = aImagenDer[a];
            titulo = aTituloDer[a];
            tituloy = aPuntos[a][5];
          } else {
            imagen = aImagen[a];
            titulo = aTitulo[a];
            tituloy = aPuntos[a][4];
          }
          image(imagen, 40, 100);
          fill(200, 0, 0);
          textSize(16);
          text(titulo, aPuntos[a][3], tituloy);
          //stroke(250,0,0);
          //line(a, tt*9*cos(tt), tt*9*sin(tt),a, tt*9*cos(tt)+10, tt*9*sin(tt)+10);
        }
      }
    }
    if (handGrab>0.5) {
      if (x>350 && x<550 && y>550 && y<610) {
        fill(0);
        rect(345, 531, 120, 28);

        fill(255);
        textSize(18);
        text("Cotidianidad", 350, 550);
        image(coti01, 180, 100);
        image(coti02, 1250, 100);
      } else if (x>350 && x<550 && y>640 && y<730) {

        fill(0);
        rect(345, 632, 120, 28);

        fill(255);
        textSize(18);
        text("Industria", 350, 650);
        image(indu01, 140, 100);
        image(indu02, 1250, 100);
      } else if (x>350 && x<550 && y>750 && y<830) {
        fill(0);
        rect(345, 732, 120, 28);


        fill(255);
        textSize(18);
        text("Onírico", 350, 750);
        image(onir01, 100, 100);
        image(onir02, 1250, 100);
      } else if (x>1200 && x<1350 && y>500 && y<610) {

        fill(0);
        rect(1345, 532, 120, 28);

        fill(255);
        textSize(18);
        text("Cuerpo", 1350, 550);
        image(cuer01, 100, 100);
        image(cuer02, 1350, 100);
      } else if (x>1200 && x<1350 && y>630 && y<680) {
        fill(0);
        rect(1345, 632, 120, 28);

        fill(255);
        textSize(18);
        text("Memoria", 1350, 650);
        image(memo01, 100, 100);
        image(memo02, 1250, 100);
      } else if (x>1200 && x<1350 && y>700 && y<780) {
        fill(0);
        rect(1345, 732, 120, 28);

        fill(255);
        textSize(18);
        text("Teológico", 1350, 750);
        image(teol01, 270, 100);
        image(teol02, 1350, 100);
      }
    }
  }

  //Espiral//
  translate(900, 570);
  
  for (int a = 0; a <= 2020; a+=10) {

    t = radians(a); //para el punto inicial de la linea
    tt = radians(a+1);
    //stroke(50, 200, 50);
    //line(t*15*cos(t), t*15*sin(t), tt*15*cos(tt), tt*15*sin(tt));
    strokeWeight(4);
    stroke(250, 0, 0);
    point( tt*9*cos(tt), tt*9*sin(tt));

    noStroke();
    fill(0);
    textSize(10);
    text(a, tt*9*cos(tt), tt*9*sin(tt));
  }
}
