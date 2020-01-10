import processing.video.*; 
import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

class graphics {
  float x, y, b, h, sx;
  PImage image;

  graphics (float x, float y, float b, float h, PImage i) {
    this.x = x;
    this.y = y;
    this.b = b;
    this.h = h;
    this.image = i;
    this.sx = 2;
  }

  void render() {
    this.x -= this.sx;
    imageMode(CORNER);
    image(this.image, this.x, this.y, this.b, this.h);
  }
}

class sortnum {
  String name, songfile, code;
  int num;

  sortnum(String a, int b, String c, String d) {
    this.name = a;
    this.num = b;
    this.songfile = c;
    this.code = d;
  }
}

class button {
  float x, y, b, h;
  int red, green, blue, textsize, tred, tgreen, tblue, stroke;
  String text;

  button(float x, float y, float b, float h, int red, int green, int blue, int textsize, int tred, int tgreen, int tblue, int s, String text) {
    this.x = x;
    this.y = y;
    this.b = b;
    this.h = h;
    this.red = red;
    this.green = green;
    this.blue = blue;
    this.textsize = textsize;
    this.text = text;
    this.tred = tred;
    this.tblue = tblue;
    this.tgreen = tgreen;
    this.stroke = s;
  }

  void render() {
    fill(red, green, blue);
    rectMode(CENTER);
    stroke(stroke);
    strokeWeight(1);
    rect(this.x, this.y, this.b, this.h);
    fill(tred, tgreen, tblue);
    textSize(this.textsize);
    textAlign(CENTER);
    text(this.text, this.x, this.y + this.h/5);
    textSize(10);
  }
}

class imgbutton {
  float x, y, b, h;
  PImage img;
  int s;

  imgbutton(PImage i, float x, float y, float b, float h) {
    this.x = x;
    this.y = y;
    this.b = b;
    this.h = h;
    this.img = i;
    this.s = 1;
  }

  void render() {
    rectMode(CENTER);
    stroke(255);
    strokeWeight(s);
    image(this.img, this.x, this.y, this.b, this.h);
  }
}

class mover {
  float x, y, w, h, r, g, b;
  float sx, sy, ax, ay;

  mover(float a, float b) {
    this.x = a;
    this.y = b;

    this.w = 10;
    this.h = 10;
    this.sx = 0;
    this.sy = 0;
    this.ax = 0;
    this.ay = 0;
    this.r = 255;
    this.g = 255;
    this.b = 255;
  }

  void render() {
    fill(r, g, b);
    rect(this.x, this.y, this.w, this.h);
  }

  void move() {
    this.sx += this.ax;
    this.sy += this.ay;
    this.x += this.sx;
    this.y += this.sy;
  }
}

class player extends mover {
  int health;
  PImage model;

  player(float a, float b, float c, float d, PImage e) {
    super(a, b);
    this.b = c;
    this.h = d;
    this.health = 5;
    this.model = e;
  }

  void render() {
    imageMode(CORNER);
    image(this.model, this.x, this.y, this.b, this.h);
  }

  void smoothmoves() {
    this.y += this.sy;
    this.sy += this.ay;
    this.ay += 0.2;
    if (this.y >= height / 1.22727) {
      this.y = height / 1.22727;
      this.ay = 0;
    }
    /*if (down == true) {
     this.sy = 2;
     this.y += this.sy;
     }
     if (right == true && left != true) {
     this.sx = 2;
     this.x += this.sx;
     }
     if (left == true && right != true) {
     this.sx = 2;
     this.x -= this.sx;
     }*/
  }
}

class enemy {
  float x, y, sx;

  enemy(float a, float b, float c) {
    this.x = a;
    this.y = b;
    this.sx = c;
  }

  void render() {
    rectMode(CORNER);
    fill(255);
    image(cactus, this.x, this.y, width / 19.2, height / 7.2);
    this.x -= this.sx;
  }
}

class particle extends mover {

  particle() {
    super(floor(random(0, 1920)), floor(random(0, 1080)));

    this.sx = random(-1, -0.2);
    this.w = this.sx * 5;
    this.h = this.sx * 5;
  }
}

//////////////////  COUNTER VARIABLES FOR ASTROWORLD
int stargazingnum;
int carouselnum;
int sickomodenum;
int ripscrewnum;
int sttbgnum;
int nobystandersnum;
int skeletonsnum;
int wakeupnum;
int fivetintnum;
int nc17num;
int astrothundernum;
int yosemitenum;
int cantsaynum;
int whowhatnum;
int butterflyeffectnum;
int houstonfornicationnum;
int coffeebeannum;
///////////////////////////// COUNTER VARIABLES FOR BIRDS IN THE TRAP
int theendsnum;
int waybacknum;
int coordinatenum;
int ttlnnum;
int beibsnum;
int sdpinterludenum;
int sweetsweetnum;
int outsidenum;
int goosebumpsnum;
int firsttakenum;
int pickupthephonenum;
int losenum;
int guidancenum;
int wonderfulnum;
///////////////////////////// COUNTER VARIABLES FOR RODEO
int ographynum;
int ohmydissidenum;
int thirtyfivehundrednum;
int wastednum;
int nineotwooneonum;
int prayforlovenum;
int nightcrawlernum;
int pissonyourgravenum;
int antidotenum;
int impossiblenum;
int mariaimdrunknum;
int flyinghighnum;
int icantellnum;
int applepienum;
int okalrightnum;
int nevercatchmenum;
//////////////////////////// COUNTER VARS FOR DBR
int theprayernum;
int mamacitanum;
int quintana2num;
int drugsyoushouldtryitnum;
int dontplaynum;
int skyfallnum;
int zombiesnum;
int sloppytoppynum;
int basementfreestylenum;
int backyardnum;
int greynum;
int baccnum;
//////////////////////////// COUNTER VARS FOR OWL PHARAOH
int meadowcreeknum;
int badmoodshitonyounum;
int upperechelonnum;
int chazinterludenum;
int uptownnum;
int hellofanightnum;
int blockalaflamenum;
int nakednum;
int danceonthemoonnum;
int mianum;
int drivenum;
int quintananum;
int bandznum;
//////////////////////////// COUNTER VARS FOR HUNCHO JACK
int modernslaverynum;
int blackandchinesenum;
int eyetoeyenum;
int motorcyclepatchesnum;
int hunchojacknum;
int saintnum;
int gonum;
int dubaishitnum;
int saintlaurentmasknum;
int moonrocknum;
int howufeelnum;
int whereufromnum;
int bestmannum;
/////////////////////////// COUNTER VARS FOR UNRELEASED
int thirtyfivehundredognum;
int nineotwooneoognum;
int antidotemdnum;
int greydemonum;
int highestintheroomdemonum;
int mariaimdrunkognum;
int nevercatchmeognum;
int nightcrawlerognum;
int nobystandersognum;
int ohmydissideognum;
int pickupthephonemdnum;
int ographyognum;
int skeletonsmdnum;
int theendsognum;
int ttlnognum;
int upperechelonmdnum;
int waybackmdnum;
int sweetsweetmdnum;
int wonderfulognum;
int antidotebonusnum;
int pullupnum;
//////////////////////// COUNTER VARS FOR SINGLES + FEATURES
int ateamnum;
int darkknightdummonum;
int highestintheroomnum;
int hotremixnum;
int watchnum;
int portlandnum;
int antisocialnum;
int wholelottalovinnum;
int legacynum;
int championsnum;
int skywalkernum;
int zezenum;
int dangerousworldnum;
int companynum;
int ghostfacekillersnum;
int outforthenightpt2num;
/////////////////////// COUNTER VARS FOR JACKBOYS
int highestintheroomremixnum;
int intronum;
int ganggangnum;
int hadenoughnum;
int outwestnum;
int whattodonum;
int gattinum;

int highscorenum;

sortnum lastplayed;
ArrayList<sortnum> song_count = new ArrayList<sortnum>();
ArrayList<String> most_played = new ArrayList<String>();
ArrayList<String> high_score = new ArrayList<String>();

int screen = 1;
PFont astrofont;
particle[] particlesdarkmode = new particle[300];
particle[] particleslightmode = new particle[300];
PImage astroworld;
PImage astroworld_lightmode;
PImage Faizaan;
PImage desc;
PImage desc_lightmode;
PImage astro_album;
PImage birds_album;
PImage rodeo_album;
PImage days_album;
PImage owl_album;
PImage huncho_album;
PImage unreleased;
PImage singles;
PImage live;
PImage jackboys;
PImage pause_play;
PImage player_model;
PImage fullscreenenter;
PImage fullscreenexit;
PImage next;
PImage previous;
PImage next_lightmode;
PImage previous_lightmode;
PImage cactus;
PImage Faizaan_Light;
PImage gameover;
PImage gameover_light;
PImage minigame;
PImage player_model2;
PImage cloud;
PImage github;
PImage github_light;
PImage instagram;
PImage exit;
Movie rodeo;
button musicbutton;
button settingsbutton;
button minigamebutton;
button backbutton;
button nowplaying;
button lightmodebutton;
button lowpowermodebutton;
button resetbutton;
button no;
button yes;
imgbutton astroworld_album;
imgbutton birdsinthetrap_album;
imgbutton rodeotrav_album;
imgbutton daysbeforerodeo_album;
imgbutton owlpharoah_album;
imgbutton hunchojack_album;
imgbutton unreleased_album;
imgbutton singles_album;
imgbutton live_album;
imgbutton pause_play_button;
imgbutton rodeo_live;
imgbutton jackboys_album;
imgbutton nextbutton;
imgbutton previousbutton;
imgbutton travischain;
imgbutton travisrose;
imgbutton githublink;
imgbutton instagramlink;
imgbutton terminate;
player travis;
boolean fullscreen = false;
boolean playing = false;
boolean reset = false;
int buttony;
Minim minim;
AudioPlayer player;

button a1;
button a2;
button a3;
button a4;
button a5;
button a6;
button a7;
button a8;
button a9;
button a10;
button a11;
button a12;
button a13;
button a14;
button a15;
button a16;
button a17;

button b1;
button b2;
button b3;
button b4;
button b5;
button b6;
button b7;
button b8;
button b9;
button b10;
button b11;
button b12;
button b13;
button b14;

button r1;
button r2;
button r3;
button r4;
button r5;
button r6;
button r7;
button r8;
button r9;
button r10; 
button r11;
button r12;
button r13;
button r14;
button r15;
button r16;

button d1;
button d2;
button d3;
button d4;
button d5;
button d6;
button d7;
button d8;
button d9;
button d10;
button d11;
button d12;

button o1;
button o2;
button o3;
button o4;
button o5;
button o6;
button o7;
button o8;
button o9;
button o10;
button o11;
button o12;
button o13;

button h1;
button h2;
button h3;
button h4;
button h5;
button h6;
button h7;
button h8;
button h9;
button h10;
button h11;
button h12;
button h13;

button u1;
button u2;
button u3;
button u4;
button u5;
button u6;
button u7;
button u8;
button u9;
button u10;
button u11;
button u12;
button u13;
button u14;
button u15;
button u16;
button u17;
button u18;
button u19;
button u20;
button u21;

button s1;
button s2;
button s3;
button s4;
button s5;
button s6;
button s7;
button s8;
button s9;
button s10;
button s11;
button s12;
button s13;
button s14;
button s15;
button s16;

button l1;

button m1;
button m2;
button m3;
button m4;
button m5;
button m6;
button m7;
button m8;
button m9;
button m10;
button m11;
button m12;
button m13;
button m14;
button m15;

button j1;
button j2;
button j3;
button j4;
button j5;
button j6;
button j7;
button menu;
button menu2;

button restart;
button start;
button charselect;

boolean up;
boolean down;
boolean left;
boolean right;
boolean pause = false;
boolean loop = false;
boolean lightmode = false;
boolean lowpowermode = false;
int pagenum = 1;
int jumpcounter = 0;
int enemycounter = 0;
int difficulty = 0;
int miniscreen = 0;
int gamescore = 0;
int gameload = 1;
boolean character2 = false;

AudioMetaData meta;
int TimeStamp = 45;
ArrayList<enemy> obstacles = new ArrayList<enemy>();
ArrayList<enemy> obstaclegraphics = new ArrayList<enemy>();
graphics [] clouds = new graphics [5];

void setup() {
  fullScreen();
  frameRate(60);

  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));
  obstaclegraphics.add(new enemy(width + random(width / 19.2, width / 2.4), height / 1.24, width / 320));

  a1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1- STARGAZING");
  a2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - CAROUSEL");
  a3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - SICKO MODE");
  a4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - R.I.P SCREW");
  a5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - STOP TRYING TO BE GOD");
  a6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - NO BYSTANDERS");
  a7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - SKELETONS");
  a8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - WAKE UP");
  a9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - 5% TINT");
  a10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - NC-17"); 
  a11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - ASTROTHUNDER");
  a12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - YOSEMITE");
  a13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - CAN'T SAY");
  a14 = new button(width / 3.84, height / 1.61, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "14 - WHO? WHAT!");
  a15 = new button(width / 3.84, height / 1.54, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "15 - BUTTERFLY EFFECT");
  a16 = new button(width / 3.84, height / 1.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "16 - HOUSTONFORNICATION");
  a17 = new button(width / 3.84, height / 1.42, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "17 - COFFEE BEAN");

  b1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - the ends");
  b2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - way back");
  b3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - coordinate");
  b4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - through the late night");
  b5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - beibs in the trap");
  b6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - sdp interlude");
  b7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - sweet sweet");
  b8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - outside");
  b9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - goosebumps");
  b10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - first take"); 
  b11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - pick up the phone");
  b12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - lose");
  b13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - guidance");
  b14 = new button(width / 3.84, height / 1.61, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "14 - wonderful");

  r1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - ****ography");
  r2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - Oh My Dis Side");
  r3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - 3500");
  r4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - Wasted");
  r5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - 90210");
  r6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - Pray 4 Love");
  r7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - Nightcrawler");
  r8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - Piss on Your Grave");
  r9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - Antidote");
  r10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - Impossible"); 
  r11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - Maria I'm Drunk");
  r12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - Flying High");
  r13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - I Can Tell");
  r14 = new button(width / 3.84, height / 1.61, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "14 - Apple Pie");
  r15 = new button(width / 3.84, height / 1.54, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "15 - Ok Alright");
  r16 = new button(width / 3.84, height / 1.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "16 - Never Catch Me");

  d1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - The Prayer");
  d2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - Mamacita");
  d3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - Quintana Pt 2");
  d4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - Drugs You Should Try It");
  d5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - Don't Play");
  d6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - Skyfall");
  d7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - Zombies");
  d8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - Sloppy Toppy");
  d9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - Basement Freestyle");
  d10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - Backyard"); 
  d11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - Grey");
  d12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - Bacc (Bonus)");

  o1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - Meadow Creek");
  o2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - Bad Mood S*** On You");
  o3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - Upper Echelon");
  o4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - Chaz Interlude");
  o5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - Uptown");
  o6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - Hell of a Night");
  o7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - Blocka La Flame");
  o8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - Naked");
  o9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - Dance On The Moon");
  o10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - MIA"); 
  o11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - Drive");
  o12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - Quintana");
  o13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - Bandz");

  h1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - Mordern Slavery");
  h2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - Black & Chinese");
  h3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - Eye 2 Eye");
  h4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - Motorcycle Patch");
  h5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - Huncho Jack");
  h6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - Saint");
  h7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - Go");
  h8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - Dubai S***");
  h9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - Saint Laurent Mask");
  h10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - Moon Rock"); 
  h11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - How U Feel");
  h12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - Where U From");
  h13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - Best Man");

  u1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - 3500 (OG)");
  u2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - 90210 (OG)");
  u3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - Antidote (Mike Dean)");
  u4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - Grey (Demo)");
  u5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - Highest In The Room (Demo)");
  u6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - Maria I'm Drunk (OG)");
  u7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - Never Catch Me (OG)");
  u8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - Nightcrawler (OG)");
  u9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - No Bystanders (OG)");
  u10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - Oh My Dis Side (OG)"); 
  u11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - Pick Up The Phone (OG)");
  u12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - ****ography (OG)");
  u13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - Skeletons (Mike Dean)");
  u14 = new button(width / 3.84, height / 1.61, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "14 - The Ends (OG)");
  u15 = new button(width / 3.84, height / 1.54, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "15- Through The Late Night");
  u16 = new button(width / 3.84, height / 1.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "16 - Upper Echelon (Mike Dean)");
  u17 = new button(width / 3.84, height / 1.42, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "17 - Way Back (Mike Dean)");
  u18 = new button(width / 3.84, height / 1.37, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "18 - Sweet Sweet (Mike Dean)");
  u19 = new button(width / 3.84, height / 1.32, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "19 - Wonderful (OG)");
  u20 = new button(width / 3.84, height / 1.27, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "20 - Antidote (Bonus Version)");
  u21 = new button(width / 3.84, height / 1.2272, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "21 - Pull Up");

  s1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - Highest In The Room");
  s2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - A-Team");
  s3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - Dark Knight Dummo");
  s4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - Hot (Remix)");
  s5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - Watch");
  s6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - Portland");
  s7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - Antisocial");
  s8 = new button(width / 3.84, height / 2.2, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "8 - Whole Lotta Lovin");
  s9 = new button(width / 3.84, height / 2.08, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "9 - Legacy");
  s10 = new button(width / 3.84, height / 1.96, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "10 - Champions");
  s11 = new button(width / 3.84, height / 1.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "11 - Skywalker");
  s12 = new button(width / 3.84, height / 1.77, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "12 - Zeze");
  s13 = new button(width / 3.84, height / 1.69, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "13 - Dangerous World");
  s14 = new button(width / 3.84, height / 1.61, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "14 - Company");
  s15 = new button(width / 3.84, height / 1.54, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "15 - Ghostface Killers");
  s16 = new button(width / 3.84, height / 1.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "16 - Out For The Night Pt.2");

  l1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - Rodeo Live");

  j1 = new button(width / 3.84, height / 3.86, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "1 - HIGHEST IN THE ROOM (REMIX)");
  j2 = new button(width / 3.84, height / 3.48, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "2 - INTRO");
  j3 = new button(width / 3.84, height / 3.18, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "3 - GANG GANG");
  j4 = new button(width / 3.84, height / 2.92, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "4 - HAD ENOUGH");
  j5 = new button(width / 3.84, height / 2.7, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "5 - OUT WEST");
  j6 = new button(width / 3.84, height / 2.51, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "6 - WHAT TO DO");
  j7 = new button(width / 3.84, height / 2.35, width / 6.4, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, "7 - GATTI");

  musicbutton = new button(width / 2.612, height / 1.91, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Music Player");
  minigamebutton = new button(width / 1.62, height / 1.91, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Minigame");
  settingsbutton = new button(width / 2, height / 1.91, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Settings");
  backbutton = new button(width / 38.4, height / 54, width / 19.2, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Back");
  nowplaying = new button(width / 1.186, height / 54, width / 3.2, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Not Playing");
  lightmodebutton = new button(width / 2, height / 2.32, width / 3.2, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Light Mode: Off");
  lowpowermodebutton = new button(width / 2, height / 2.1, width / 3.2, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Low Power Mode: Off");
  resetbutton = new button(width / 2, height / 1.91, width / 3.2, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "RESET TO DEFAULTS");
  restart = new button(width / 2, height / 1.5, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Restart");
  no = new button(width / 1.8, height / 1.8, 100, 25, 0, 0, 0, 15, 255, 255, 255, 255, "NO");
  yes = new button(width / 2.25, height / 1.8, 100, 25, 0, 0, 0, 15, 255, 255, 255, 255, "YES");
  start = new button(width / 2, height / 1.91, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Start");
  charselect = new button(width / 2, height / 1.71, width / 5, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Character Select");
  menu = new button(width / 2, height / 1.25, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Menu");
  menu2 = new button(width / 2, height / 1.65, width / 10.38, height / 27, 0, 0, 0, width / 96, 255, 255, 255, 255, "Menu");

  astrofont = createFont("Astro.ttf", 32);
  astroworld = loadImage("Astroworld.png");
  astroworld_lightmode = loadImage("Astroworld - Light Mode.png");
  Faizaan = loadImage("Faizaan Qureshi.png");
  desc = loadImage("Desc.png");
  desc_lightmode = loadImage("Desc - Light Mode.png");
  player_model = loadImage("Player_Model.png");
  player_model2 = loadImage("Player_Model2.png");
  astro_album = loadImage("/Astroworld/Astroworld Album.jpg");
  birds_album = loadImage("/Birds In The Trap Sing McKnight/Birds In The Trap Sing McKnight.jpg");
  rodeo_album = loadImage("/Rodeo (Expanded Edition)/Rodeo.jpg");
  days_album = loadImage("/Days Before Rodeo/Days Before Rodeo.jpg");
  owl_album = loadImage("/Owl Pharaoh/Owl Pharoah.jpg");
  huncho_album = loadImage("/Huncho Jack, Jack Huncho/Huncho Jack.jpg");
  unreleased = loadImage("/Unreleased/Unreleased.jpg");
  singles = loadImage("/Singles and Features/Singles.jpg");
  live = loadImage("/Live Performances/Live.png");
  jackboys = loadImage("/Jackboys/Jackboys Art.png");
  next = loadImage("next.png");
  previous = loadImage("previous.png");
  next_lightmode = loadImage("next_lightmode.png");
  previous_lightmode = loadImage("previous_lightmode.png");
  Faizaan_Light = loadImage("Faizaan Qureshi Light.png");
  gameover = loadImage("gameover.png");
  gameover_light = loadImage("gameoverlight.png");
  cactus = loadImage("cactus.png");
  minigame = loadImage("minigame.png");
  cloud = loadImage("cloud.png");
  github = loadImage("github.png");
  github_light = loadImage("github_light.png");
  instagram = loadImage("instagram.png");
  exit = loadImage("exit.png");
  rodeo = new Movie(this, "rodeo.mov");

  for (int i = 0; i < clouds.length; i++) {
    clouds[i] = new graphics(random(0, width / 0.8), height / 5.4, width / 9.6, height / 10.8, cloud);
  }

  travis = new player(width / 32, height / 1.65517241, width / 16, height / 8, player_model);
  rodeo_live = new imgbutton(rodeo, width / 2 + width / 6, height / 2, width / 1.92, height / 1.8);
  jackboys_album = new imgbutton(jackboys, width / 2.4, height / 5.4, width / 9.6, height / 5.4);
  astroworld_album = new imgbutton(astro_album, width / 1.75, height / 5.4, width / 9.6, height / 5.4);
  birdsinthetrap_album = new imgbutton(birds_album, width / 1.37, height / 5.4, width / 9.6, height / 5.4);
  rodeotrav_album = new imgbutton(rodeo_album, width / 2.4, height / 2.16, width / 9.6, height / 5.4);
  daysbeforerodeo_album = new imgbutton(days_album, width / 1.75, height / 2.16, width / 9.6, height / 5.4); 
  owlpharoah_album = new imgbutton(owl_album, width / 1.37, height / 2.16, width / 9.6, height / 5.4);
  hunchojack_album = new imgbutton(huncho_album, width / 2.4, height / 1.35, width / 9.6, height / 5.4);
  unreleased_album = new imgbutton(unreleased, width / 1.75, height / 1.35, width / 9.6, height / 5.4);
  singles_album = new imgbutton(singles, width / 1.37, height / 1.35, width / 9.6, height / 5.4);
  live_album = new imgbutton(live, width / 2.4, height / 5.4, width / 9.6, height / 5.4);
  travischain = new imgbutton(player_model, width / 1.52380952, height / 2, width / 5.4857, height / 2.16);
  travisrose = new imgbutton(player_model2, width / 2.90909091, height / 2, width / 6.4, height / 2.16);
  githublink = new imgbutton(github, width / 2.46153846, height / 1.025, width / 76.8, height / 43.2);
  instagramlink = new imgbutton(instagram, width / 1.68421053, height / 1.025, width / 76.8, height / 43.2);
  terminate = new imgbutton(exit, width / 192, height / 1.00934579, width / 96, height / 54);

  String[] textdoc = loadStrings("most_played.txt");
  String[] highscoredoc = loadStrings("high_score.txt");
  for (int i = 0; i < loadStrings("most_played.txt").length; i++) {
    most_played.add(textdoc[i]);
  }
  for (int i = 0; i < loadStrings("high_score.txt").length; i++) {
    high_score.add(highscoredoc[i]);
  }

  for (int i = 0; i < 300; i++) {
    particlesdarkmode[i] = new particle();
    particleslightmode[i] = new particle();
    particleslightmode[i].r = 0;
    particleslightmode[i].g = 0;
    particleslightmode[i].b = 0;
  }

  minim = new Minim(this);
  player = minim.loadFile("selectsong.mp3");
  player.pause();
}

void draw() {
  if (lightmode == false) {
    nextbutton = new imgbutton(next, width / 1.1497006, height / 2, width / 38.4, height / 21.6);
    previousbutton = new imgbutton(previous, width / 1.1497006, height / 2, width / 38.4, height / 21.6);
    background(0);
  } else if (lightmode == true) {
    nextbutton = new imgbutton(next_lightmode, width / 1.1497006, height / 2, width / 38.4, height / 21.6);
    previousbutton = new imgbutton(previous_lightmode, width / 1.1497006, height / 2, width / 38.4, height / 21.6);
    background(255);
  }
  strokeWeight(0);
  song_count.clear();

  /////////////////////////////////////////////////////////////////////////////// START OF ASTROWORLD VARIABLES INIT
  stargazingnum = fileRead("stargazing", "Astroworld: 1 - STARGAZING", stargazingnum, "/Astroworld/1- STARGAZING.mp3");
  carouselnum = fileRead("carousel", "Astroworld: 2 - CAROUSEL", carouselnum, "/Astroworld/2- CAROUSEL.mp3");
  sickomodenum = fileRead("sickomode", "Astroworld: 3 - SICKO MODE", sickomodenum, "/Astroworld/3- SICKO MODE.mp3");
  ripscrewnum = fileRead("ripscrew", "Astroworld: 4 - R.I.P SCREW", ripscrewnum, "/Astroworld/4- R.I.P. SCREW.mp3");
  sttbgnum = fileRead("sttbg", "Astroworld: 5 - STOP TRYING TO BE GOD", sttbgnum, "/Astroworld/5- STOP TRYING TO BE GOD.mp3");
  nobystandersnum = fileRead("nobystanders", "Astroworld: 6 - NO BYSTANDERS", nobystandersnum, "/Astroworld/6- NO BYSTANDERS.mp3");
  skeletonsnum = fileRead("skeletons", "Astroworld: 7 - SKELETONS", skeletonsnum, "/Astroworld/7- SKELETONS.mp3");
  wakeupnum = fileRead("wakeup", "Astroworld: 8 - WAKE UP", wakeupnum, "/Astroworld/8- WAKE UP.mp3");
  fivetintnum = fileRead("5tint", "Astroworld: 9 - 5% TINT", fivetintnum, "/Astroworld/9- 5% TINT.mp3");
  nc17num = fileRead("nc17", "Astroworld: 10 - NC-17", nc17num, "/Astroworld/10- NC-17.mp3");
  astrothundernum = fileRead("astrothunder", "Astroworld: 11 - ASTROTHUNDER", astrothundernum, "/Astroworld/11- ASTROTHUNDER.mp3");
  yosemitenum = fileRead("yosemite", "Astroworld: 12 - YOSEMITE", yosemitenum, "/Astroworld/12- YOSEMITE.mp3");
  cantsaynum = fileRead("cantsay", "Astroworld: 13 - CAN'T SAY", cantsaynum, "/Astroworld/13- CAN'T SAY.mp3");
  whowhatnum = fileRead("whowhat", "Astroworld: 14 - WHO? WHAT!", whowhatnum, "/Astroworld/14- WHO WHAT!.mp3");
  butterflyeffectnum = fileRead("butterflyeffect", "Astroworld: 15 - BUTTERFLY EFFECT", butterflyeffectnum, "/Astroworld/15- BUTTERFLY EFFECT.mp3");
  houstonfornicationnum = fileRead("houstonfornication", "Astroworld: 16 - HOUSTONFORNICATION", houstonfornicationnum, "/Astroworld/16- HOUSTONFORNICATION.mp3");
  coffeebeannum = fileRead("coffeebean", "Astroworld: 17 - COFFEE BEAN", coffeebeannum, "/Astroworld/17- COFFEE BEAN.mp3");
  //////////////////////////////////////////////////////////////////////////////// START OF BIRDS VARIABLES INIT
  theendsnum = fileRead("theends", "Birds In The Trap: 1 - the ends", theendsnum, "/Birds In The Trap/01 The Ends.mp3");
  waybacknum = fileRead("wayback", "Birds In The Trap: 2 - way back", waybacknum, "/Birds In The Trap/02 Way Back.mp3");
  coordinatenum = fileRead("coordinate", "Birds In The Trap: 3 - coordinate", coordinatenum, "/Birds In The Trap/03 Coordinate.mp3");
  ttlnnum = fileRead("ttln", "Birds In The Trap: 4 - through the late night", ttlnnum, "/Birds In The Trap/04 Through The Late Night.mp3");
  beibsnum = fileRead("beibsinthetrap", "Birds In The Trap: 5 - beibs in the trap", beibsnum, "/Birds In The Trap/05 Beibs In The Trap.mp3");
  sdpinterludenum = fileRead("sdpinterlude", "Birds In The Trap: 6 - sdp interlude", sdpinterludenum, "/Birds In The Trap/06 Sdp Interlude.mp3");
  sweetsweetnum = fileRead("sweetsweet", "Birds In The Trap: 7 - sweet sweet", sweetsweetnum, "/Birds In The Trap/07 Sweet Sweet.mp3");
  outsidenum = fileRead("outside", "Birds In The Trap: 8 - outside", outsidenum, "/Birds In The Trap/08 Outside.mp3");
  goosebumpsnum = fileRead("goosebumps", "Birds In The Trap: 9 - goosebumps", goosebumpsnum, "/Birds In The Trap/09 Goosebumps.mp3");
  firsttakenum = fileRead("firsttake", "Birds In The Trap: 10 - first take", firsttakenum, "/Birds In The Trap/10 First Take.mp3");
  pickupthephonenum = fileRead("pickupthephone", "Birds In The Trap: 11 - pick up the phone", pickupthephonenum, "/Birds In The Trap/11 Pick Up The Phone.mp3");
  losenum = fileRead("lose", "Birds In The Trap: 12 - lose", losenum, "/Birds In The Trap/12 Lose.mp3");
  guidancenum = fileRead("guidance", "Birds In The Trap: 13 - guidance", guidancenum, "/Birds In The Trap/13 Guidance.mp3");
  wonderfulnum = fileRead("wonderful", "Birds In The Trap: 14 - wonderful", wonderfulnum, "/Birds In The Trap/14 Wonderful.mp3");
  ////////////////////////////////////////////////////////////////// START OF RODEO VARIABLES INIT
  ographynum = fileRead("****ography", "Rodeo: 1 - ****ography", ographynum, "/Rodeo (Expanded Edition)/01 Pornography.mp3");
  ohmydissidenum = fileRead("ohmydisside", "Rodeo: 2 - Oh My Dis Side", ohmydissidenum, "/Rodeo (Expanded Edition)/02 Oh My Dis Side (feat. Quavo).mp3");
  thirtyfivehundrednum = fileRead("3500", "Rodeo: 3 - 3500", thirtyfivehundrednum, "/Rodeo (Expanded Edition)/03 3500 (feat. Future & 2 Chainz).mp3");
  wastednum = fileRead("wasted", "Rodeo: 4 - Wasted", wastednum, "/Rodeo (Expanded Edition)/04 Wasted (feat. Juicy J).mp3");
  nineotwooneonum = fileRead("90210", "Rodeo: 5 - 90210", nineotwooneonum, "/Rodeo (Expanded Edition)/05 90210.mp3");
  prayforlovenum = fileRead("pray4love", "Rodeo: 6 - Pray 4 Love", prayforlovenum, "/Rodeo (Expanded Edition)/06 Pray 4 Love (feat. The Weeknd).mp3");
  nightcrawlernum = fileRead("nightcrawler", "Rodeo: 7 - Nightcrawler", nightcrawlernum, "/Rodeo (Expanded Edition)/07 Nightcrawler.mp3");
  pissonyourgravenum = fileRead("pissonyourgrave", "Rodeo: 8 - Piss On Your Grave", pissonyourgravenum, "/Rodeo (Expanded Edition)/08 Piss On Your Grave.mp3");
  antidotenum = fileRead("antidote", "Rodeo: 9 - Antidote", antidotenum, "/Rodeo (Expanded Edition)/09 Antidote.mp3");
  impossiblenum = fileRead("impossible", "Rodeo: 10 - Impossible", impossiblenum, "/Rodeo (Expanded Edition)/10 Impossible.mp3");
  mariaimdrunknum = fileRead("mariaimdrunk", "Rodeo: 11 - Maria I'm Drunk", mariaimdrunknum, "/Rodeo (Expanded Edition)/11 Maria I'm Drunk.mp3");
  flyinghighnum = fileRead("flyinghigh", "Rodeo: 12 - Flying High", flyinghighnum, "/Rodeo (Expanded Edition)/12 Flying High (feat. Toro y Moi).mp3");
  icantellnum = fileRead("icantell", "Rodeo: 13 - I Can Tell", icantellnum, "/Rodeo (Expanded Edition)/13 I Can Tell.mp3");
  applepienum = fileRead("applepie", "Rodeo: 14 - Apple Pie", applepienum, "/Rodeo (Expanded Edition)/14 Apple Pie.mp3");
  okalrightnum = fileRead("okalright", "Rodeo: 15 - Ok Alright", okalrightnum, "/Rodeo (Expanded Edition)/15 Ok Alright (feat. ScHoolboy Q).mp3");
  nevercatchmenum = fileRead("nevercatchme", "Rodeo: 16 - Never Catch Me", nevercatchmenum, "/Rodeo (Expanded Edition)/16 Never Catch Me.mp3");
  /////////////////////////////////////START OF DAYS BEFORE RODEO VARS INIT
  theprayernum = fileRead("theprayer", "Days Before Rodeo: 1 - The Prayer", theprayernum, "/Days Before Rodeo/01 - The Prayer.mp3");
  mamacitanum = fileRead("mamacita", "Days Before Rodeo: 2 - Mamacita", mamacitanum, "/Days Before Rodeo/02 - Mamacita.mp3");
  quintana2num = fileRead("quintan2", "Days Before Rodeo: 3 - Quintana Pt. 2", quintana2num, "/Days Before Rodeo/03 - Quintana Pt 2.mp3");
  drugsyoushouldtryitnum = fileRead("drugyoushouldtryit", "Days Before Rodeo: 4 - Drugs You Should Try It", drugsyoushouldtryitnum, "/Days Before Rodeo/04 - Drugs You Should Try.mp3");
  dontplaynum = fileRead("dontplay", "Days Before Rodeo: 5 - Don't Play", dontplaynum, "/Days Before Rodeo/05 - Dont Play.mp3");
  skyfallnum = fileRead("skyfall", "Days Before Rodeo: 6 - Skyfall", skyfallnum, "/Days Before Rodeo/06 - Skyfall.mp3");
  zombiesnum = fileRead("zombies", "Days Before Rodeo: 7 - Zombies", zombiesnum, "/Days Before Rodeo/07 - Zombies.mp3");
  sloppytoppynum = fileRead("sloppytoppy", "Days Before Rodeo: 8 - Sloppy Toppy", sloppytoppynum, "/Days Before Rodeo/08 - Sloppy Toppy.mp3");
  basementfreestylenum = fileRead("basementfreestyle", "Days Before Rodeo: 9 - Basement Freestyle", basementfreestylenum, "/Days Before Rodeo/09 - Basement Freestyle.mp3");
  backyardnum = fileRead("backyard", "Days Before Rodeo: 10 - Backyard", backyardnum, "/Days Before Rodeo/10 - Backyard.mp3");
  greynum = fileRead("grey", "Days Before Rodeo: 11 - Grey", greynum, "/Days Before Rodeo/11 - Grey.mp3");
  baccnum = fileRead("bacc", "Days Before Rodeo: 12 - Bacc (Bonus)", baccnum, "/Days Before Rodeo/12 - Bacc (Bonus).mp3");
  ////////////////////////////////////START OF OWL PHARAOH VARS INIT
  meadowcreeknum = fileRead("meadowcreek", "Owl Pharaoh: 1 - Meadow Creek", meadowcreeknum, "/Owl Pharaoh/01 - Meadow Creek.mp3");
  badmoodshitonyounum = fileRead("badmoodshitonyou", "Owl Pharaoh: 2 - Bad Mood S*** On You", badmoodshitonyounum, "/Owl Pharaoh/02 - Bad Mood Shit On You.mp3");
  upperechelonnum = fileRead("upperechelon", "Owl Pharaoh: 3 - Upper Echelon", upperechelonnum, "/Owl Pharaoh/03 - Upper Echelon.mp3");
  chazinterludenum = fileRead("chazinterlude", "Owl Pharaoh: 4 - Chaz Interlude", chazinterludenum, "/Owl Pharaoh/04 - Chaz Interlude.mp3");
  uptownnum = fileRead("uptown", "Owl Pharaoh: 5 - Uptown", uptownnum, "/Owl Pharaoh/05 - Uptown.mp3");
  hellofanightnum = fileRead("hellofanight", "Owl Pharaoh: 6 - Hell of a Night", hellofanightnum, "/Owl Pharaoh/06 - Hell of a Night.mp3");
  blockalaflamenum = fileRead("blockalaflame", "Owl Pharaoh: 7 - Blocka La Flame", blockalaflamenum, "/Owl Pharaoh/07 - Blocka La Flame.mp3");
  nakednum = fileRead("naked", "Owl Pharaoh: 8 - Naked", nakednum, "/Owl Pharaoh/08 - Naked.mp3");
  danceonthemoonnum = fileRead("danceonthemoon", "Owl Pharaoh: 9 - Dance On The Moon", danceonthemoonnum, "/Owl Pharaoh/09 - Dance On The Moon.mp3");
  mianum = fileRead("mia", "Owl Pharaoh: 10 - MIA", mianum, "/Owl Pharaoh/10 - MIA.mp3");
  drivenum = fileRead("drive", "Owl Pharaoh: 11 - Drive", drivenum, "/Owl Pharaoh/11 - Drive.mp3");
  quintananum = fileRead("quintana", "Owl Pharaoh: 12 - Quintana", quintananum, "/Owl Pharaoh/12 - Quintana.mp3");
  bandznum = fileRead("bandz", "Owl Pharaoh: 13 - Bandz", bandznum, "/Owl Pharaoh/13 Bandz.mp3");
  /////////////////////////////////////////////////////////////////////START OF HUNCHO JACK VARS INIT
  modernslaverynum = fileRead("modernslavery", "Huncho Jack: 1 - Modern Slavery", modernslaverynum, "/Huncho Jack, Jack Huncho/01 Modern Slavery.mp3");
  blackandchinesenum = fileRead("blackandchinese", "Huncho Jack: 2 - Black & Chinese", blackandchinesenum, "/Huncho Jack, Jack Huncho/02 Black & Chinese.mp3");
  eyetoeyenum = fileRead("eyetoeye", "Huncho Jack: 3 - Eye 2 Eye", eyetoeyenum, "/Huncho Jack, Jack Huncho/03 Eye 2 Eye.mp3");
  motorcyclepatchesnum = fileRead("motorcyclepatches", "Huncho Jack: 4 - Motorcycle Patches", motorcyclepatchesnum, "/Huncho Jack, Jack Huncho/04 Motorcycle Patches.mp3");
  hunchojacknum = fileRead("hunchojack", "Huncho Jack: 5 - Huncho Jack", hunchojacknum, "/Huncho Jack, Jack Huncho/05 Huncho Jack.mp3");
  saintnum = fileRead("saint", "Huncho Jack: 6 - Saint", saintnum, "/Huncho Jack, Jack Huncho/06 Saint.mp3");
  gonum = fileRead("go", "Huncho Jack: 7 - Go", gonum, "/Huncho Jack, Jack Huncho/07 Go.mp3");
  dubaishitnum = fileRead("dubaishit", "Huncho Jack: 8 - Dubai S***", dubaishitnum, "/Huncho Jack, Jack Huncho/08 Dubai Shit.mp3");
  saintlaurentmasknum = fileRead("saintlaurentmask", "Huncho Jack: 9 - Saint Laurent Mask", saintlaurentmasknum, "/Huncho Jack, Jack Huncho/09 Saint Laurent Mask.mp3");
  moonrocknum = fileRead("moonrock", "Huncho Jack: 10 - Moon Rock", moonrocknum, "/Huncho Jack, Jack Huncho/10 Moon Rock.mp3");
  howufeelnum = fileRead("howufeel", "Huncho Jack: 11 - How U Feel", howufeelnum, "/Huncho Jack, Jack Huncho/11 - How U Feel.mp3");
  whereufromnum = fileRead("whereufrom", "Huncho Jack: 12 - Where U From", whereufromnum, "/Huncho Jack, Jack Huncho/12 - Where U From.mp3");
  bestmannum = fileRead("bestman", "Huncho Jack: 13 - Best Man", bestmannum, "/Huncho Jack, Jack Huncho/13 - Best Man.mp3");
  ///////////////////////////////////////////////////////////////////START OF UNRELEASED VARS INIT
  thirtyfivehundredognum = fileRead("350og", "Unreleased: 3500 (OG)", thirtyfivehundredognum, "/Unreleased/3500 OG.mp3");
  nineotwooneoognum = fileRead("9021og", "Unreleased: 90210 (OG)", nineotwooneoognum, "/Unreleased/90210 OG.mp3");
  antidotemdnum = fileRead("antidotmikedean", "Unreleased: Antidote (Mike Dean)", antidotemdnum, "/Unreleased/Antidote Mike Dean.mp3");
  greydemonum = fileRead("gredemo", "Unreleased: Grey (Demo)", greydemonum, "/Unreleased/Grey Demo.mp3");
  highestintheroomdemonum = fileRead("highestintheroodemo", "Highest In The Room (Demo)", highestintheroomdemonum, "/Unreleased/Highest In The Room Demo.mp3");
  mariaimdrunkognum = fileRead("mariaimdrunog", "Unreleased: Maria I'm Drunk (OG)", mariaimdrunkognum, "/Unreleased/Maria I'm Drunk OG.mp3");
  nevercatchmeognum = fileRead("nevercatchmog", "Unreleased: Never Catch Me (OG)", nevercatchmeognum, "/Unreleased/Never Catch Me OG.mp3");
  nightcrawlerognum = fileRead("nightcrawleog", "Unreleased: Nightcrawler (OG)", nightcrawlerognum, "/Unreleased/Nightcrawler OG.mp3");
  nobystandersognum = fileRead("nobystanderog", "Unreleased: No Bystanders (OG)", nobystandersognum, "/Unreleased/No Bystanders OG.mp3");
  ohmydissideognum = fileRead("ohmydissidog", "Unreleased: Oh My Dis Side (OG)", ohmydissideognum, "/Unreleased/Oh My Dis Side OG.mp3");
  pickupthephonemdnum = fileRead("pickupthephonmikedean", "Unreleased: Pick Up The Phone (Mike Dean)", pickupthephonemdnum, "/Unreleased/Pick Up The Phone Mike Dean.mp3");
  ographyognum = fileRead("****ographog", "Unreleased: ****ography (OG)", ographyognum, "/Unreleased/Pornography OG.mp3");
  skeletonsmdnum = fileRead("skeletonmikedean", "Unreleased: Skeletons (Mike Dean)", skeletonsmdnum, "/Unreleased/Skeletons Mike Dean.mp3");
  sweetsweetmdnum = fileRead("sweetsweemikedean", "Unreleased: Sweet Sweet (Mike Dean)", sweetsweetmdnum, "/Unreleased/Sweet Sweet Mike Dean.mp3");
  theendsognum = fileRead("theendog", "Unreleased: The Ends (OG)", theendsognum, "/Unreleased/The Ends OG.mp3");
  ttlnognum = fileRead("ttlog", "Unreleased: Through The Late Night (OG)", ttlnognum, "/Unreleased/Through The Late Night OG.mp3");
  upperechelonmdnum = fileRead("upperechelomikedean", "Unreleased: Upper Echelon (Mike Dean)", upperechelonmdnum, "/Unreleased/Upper Echelon Mike Dean.mp3");
  waybackmdnum = fileRead("waybacmikedean", "Unreleased: Way Back (Mike Dean)", waybackmdnum, "/Unreleased/Way Back Mike Dean.mp3");
  wonderfulognum = fileRead("wonderfuog", "Unreleased: Wonderful (OG)", wonderfulognum, "/Unreleased/Wonderful OG.mp3");
  antidotebonusnum = fileRead("antidotbonus", "Unreleased: Antidote (Bonus)", antidotebonusnum, "/Unreleased/Antidote (Bonus).mp3");
  pullupnum = fileRead("pullup", "Unreleased: Pull Up", pullupnum, "/Unreleased/Pull Up.mp3");
  ///////////////////////////////////////////////////////////////////START OF SINGLES & FEATURES VARS INIT
  ateamnum = fileRead("ateam", "Singles & Features: A-Team", ateamnum, "/Singles and Features/A-Team.mp3");
  darkknightdummonum = fileRead("darkknightdummo", "Singles & Features: Dark Knight Dummo", darkknightdummonum, "/Singles and Features/Dark Knight Dummo.mp3");
  highestintheroomnum = fileRead("highestintheroom", "Singles: Highest In The Room", highestintheroomnum, "/Singles and Features/Highest In The Room.mp3");
  hotremixnum = fileRead("hotremix", "Singles & Features: Hot (Remix)", hotremixnum, "/Singles and Features/Hot (Remix).mp3");
  watchnum = fileRead("watch", "Singles & Features: Watch", watchnum, "/Singles and Features/Watch.mp3");
  portlandnum = fileRead("portland", "Singles & Features: Portland", portlandnum, "/Singles and Features/Portland.mp3");
  antisocialnum = fileRead("antisocial", "Singles & Features: Antisocial", antisocialnum, "/Singles and Features/Antisocial.mp3");
  wholelottalovinnum = fileRead("wholelottalovin", "Singles & Features: Whole Lotta Lovin", wholelottalovinnum, "/Singles and Features/Whole Lotta Lovin.mp3");
  legacynum = fileRead("legacy", "Singles & Features: Legacy", legacynum, "/Singles and Features/Legacy.mp3");
  championsnum = fileRead("champio", "Singles & Features: Champions", championsnum, "/Singles and Features/Champions.mp3");
  skywalkernum = fileRead("skywalker", "Singles & Features: Skywalker", skywalkernum, "/Singles and Features/Skywalker.mp3");
  zezenum = fileRead("zeze", "Singles & Features: ZEZE", zezenum, "/Singles and Features/Zeze.mp3");
  dangerousworldnum = fileRead("dangerousworld", "Singles & Features: Dangerous World", dangerousworldnum, "/Singles and Features/Dangerous World.mp3");
  companynum = fileRead("company", "Singles & Features: Company", companynum, "/Singles and Features/Company.mp3");
  ghostfacekillersnum = fileRead("ghostfacekillers", "Singles & Features: Ghostface Killers", ghostfacekillersnum, "/Singles and Features/Ghostface Killers.mp3");
  outforthenightpt2num = fileRead("outforthenightpt2", "Singles & Features: Out For The Night", outforthenightpt2num, "/Singles and Features/Out For The Night Pt.2.mp3");
  //////////////////////////////////////////////////////////////////START OF JACKBOYS VARS INIT
  highestintheroomremixnum = fileRead("highestremix", "JACKBOYS: HIGHEST IN THE ROOM (REMIX)", highestintheroomremixnum, "/Jackboys/01 HIGHEST IN THE ROOM (REMIX).mp3");
  intronum = fileRead("intro", "JACKBOYS: INTRO", intronum, "/Jackboys/02 INTRO.mp3");
  ganggangnum = fileRead("ganggang", "JACKBOYS: GANG GANG", ganggangnum, "/Jackboys/03 GANG GANG.mp3");
  hadenoughnum = fileRead("hadenough", "JACKBOYS: HAD ENOUGH", hadenoughnum, "/Jackboys/04 HAD ENOUGH.mp3");
  outwestnum = fileRead("outwest", "JACKBOYS: OUT WEST", outwestnum, "/Jackboys/05 OUT WEST.mp3");
  whattodonum = fileRead("whattodo", "JACKBOYS: WHAT TO DO", whattodonum, "/Jackboys/06 WHAT TO DO.mp3");
  gattinum = fileRead("gatti", "JACKBOYS: GATTI", gattinum, "/Jackboys/07 GATTI.mp3");

  int num = highscorenum;
  for (int i = 0; i < high_score.size(); i++) {
    String codeword = "highscore";
    String tobesearched = high_score.get(i);
    int index1 = tobesearched.indexOf(codeword);
    //println(index1);
    if (index1 >= 0) {
      for (int j = 0; j < high_score.get(i).length(); j++) {
        String temp3 = high_score.get(i);
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 2) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 3) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 4) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 5) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3) + temp3.charAt(j + 4));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 6) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3) + temp3.charAt(j + 4) + temp3.charAt(j + 5));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 7) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3) + temp3.charAt(j + 4) + temp3.charAt(j + 5) + temp3.charAt(j + 6));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 8) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3) + temp3.charAt(j + 4) + temp3.charAt(j + 5) + temp3.charAt(j + 6) + temp3.charAt(j + 7));
        }
      }
    }
  }
  highscorenum = num;

  int seconds = (player.position() / 1000) % 60;
  int minutes = (player.position() / (1000*60)) % 60;
  int seconds2 = (player.length() / 1000) % 60;
  int minutes2 = (player.length() / (1000*60)) % 60;

  for (int j = 0; j < song_count.size(); j++) { ////////////////ALGORITHM FOR SORTING HIGHEST SONG PLAYED VALUES
    int bestindex = j;
    sortnum bestvalue = song_count.get(bestindex);
    sortnum temp = song_count.get(j);
    for (int i = j; i < song_count.size(); i++) {
      if (song_count.get(i).num > song_count.get(bestindex).num) {
        bestindex = i;
        bestvalue = song_count.get(bestindex);
      }
    }
    song_count.set(j, bestvalue);
    song_count.set(bestindex, temp);
  }

  // for (int i = 0; i < song_count.size(); i++) {
  //println(i + " " + song_count.get(i).name + " " + song_count.get(i).num);
  //}

  m1 = new button(width / 4.8, height / 6.75, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(0).name + " " + song_count.get(0).num);
  m2 = new button(width / 4.8, height / 5.684, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(1).name + " " + song_count.get(1).num);
  m3 = new button(width / 4.8, height / 4.91, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(2).name + " " + song_count.get(2).num);
  m4 = new button(width / 4.8, height / 4.32, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(3).name + " " + song_count.get(3).num);
  m5 = new button(width / 4.8, height / 3.857, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(4).name + " " + song_count.get(4).num);
  m6 = new button(width / 4.8, height / 3.484, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(5).name + " " + song_count.get(5).num);
  m7 = new button(width / 4.8, height / 3.176, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(6).name + " " + song_count.get(6).num);
  m8 = new button(width / 4.8, height / 2.92, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(7).name + " " + song_count.get(7).num);
  m9 = new button(width / 4.8, height / 2.7, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(8).name + " " + song_count.get(8).num);
  m10 = new button(width / 4.8, height / 2.52, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(9).name + " " + song_count.get(9).num);
  m11 = new button(width / 4.8, height / 2.348, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(10).name + " " + song_count.get(10).num);
  m12 = new button(width / 4.8, height / 2.2, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(11).name + " " + song_count.get(11).num);
  m13 = new button(width / 4.8, height / 2.08, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(12).name + " " + song_count.get(12).num);
  m14 = new button(width / 4.8, height / 1.964, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(13).name + " " + song_count.get(13).num);
  m15 = new button(width / 4.8, height / 1.86, width / 4.8, height / 54, 0, 0, 0, width / 128, 255, 255, 255, 255, song_count.get(14).name + " " + song_count.get(14).num);

  if (fullscreen == false && lowpowermode == false) {
    if (lightmode == false) {
      for (int i = 0; i < particlesdarkmode.length; i++) {
        particlesdarkmode[i].render();
        particlesdarkmode[i].move();

        if (particlesdarkmode[i].x < 0) {
          particlesdarkmode[i].x = width + 10;
          particlesdarkmode[i].y = random(0, height);
        }
      }
    } else if (lightmode == true) {
      for (int i = 0; i < particleslightmode.length; i++) {
        particleslightmode[i].render();
        particleslightmode[i].move();

        if (particleslightmode[i].x < 0) {
          particleslightmode[i].x = width + 10;
          particleslightmode[i].y = random(0, height);
        }
      }
    }
  }

  meta = player.getMetaData();
  
  terminate.render();
  
  if (screen == 1) { //MENU
    imageMode(CENTER);
    if (lightmode == false) {
      image(desc, width / 2, height / 2.2, width / 6.98, height / 54);
      image(astroworld, width / 2, height / 2.45, width / 4.27, height / 10.8);
      image(Faizaan, width / 2, height / 1.02, width / 6.4, height / 36);
      noFill();
      strokeWeight(1);
      rectMode(CENTER);
      rect(githublink.x, githublink.y, githublink.b + width / 192, githublink.h + height / 108);
      rect(instagramlink.x, instagramlink.y, instagramlink.b + width / 192, instagramlink.h + height / 108);
      githublink.render();
      instagramlink.render();
    }
    if (lightmode == true) {
      image(desc_lightmode, width / 2, height / 2.2, width / 6.98, height / 54);
      image(astroworld_lightmode, width / 2, height / 2.45, width / 4.27, height / 10.8);
      image(Faizaan_Light, width / 2, height / 1.02, width / 6.4, height / 36);
      githublink.img = github_light;
      noFill();
      stroke(0);
      strokeWeight(1);
      rectMode(CENTER);
      rect(githublink.x, githublink.y, githublink.b + width / 192, githublink.h + height / 108);
      rect(instagramlink.x, instagramlink.y, instagramlink.b + width / 192, instagramlink.h + height / 108);
      githublink.render();
      instagramlink.render();
    }
    textFont(astrofont);
    textSize(width / 96);
    musicbutton.render();
    minigamebutton.render();
    nowplaying.render();
    settingsbutton.render();
  }

  if (screen == 2) { //MUSIC PLAYER MAIN PAGE
    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 9.1429, height / 1.5428, width / 3.28205, height / 1.5428);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 9.1429, width / 3.28205));
    line(width / 9.1429, height / 1.5428, TimeStamp, height / 1.5428);
    strokeWeight(1);

    textFont(astrofont);
    textSize(width / 64);
    text("Top 15 Most Played", width / 4.8, height / 8.64);
    textSize(width / 96);
    text("1.", width / 11.29, height / 6.545);
    text("2.", width / 11.29, height / 5.538);
    text("3.", width / 11.29, height / 4.8);
    text("4.", width / 11.29, height / 4.235);
    text("5.", width / 11.29, height / 3.789);
    text("6.", width / 11.29, height / 3.429);
    text("7.", width / 11.29, height / 3.13);
    text("8.", width / 11.29, height / 2.88);
    text("9.", width / 11.29, height / 2.66);
    text("10.", width / 11.29, height / 2.483);
    text("11.", width / 11.29, height / 2.323);
    text("12.", width / 11.29, height / 2.182);
    text("13.", width / 11.29, height / 2.057);
    text("14.", width / 11.29, height / 1.946);
    text("15.", width / 11.29, height / 1.846);
    textSize(15);
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 13, height / 1.53);

    if (pagenum == 1) {
      jackboys_album.render();
      textSize(width / 96);
      text("JACKBOYS", width / 2.4, height / 3.32);

      astroworld_album.render();
      textSize(width / 128);
      text("ASTROWORLD", width / 1.75, height / 3.32);

      birdsinthetrap_album.render();
      textSize(width / 128);
      text("Birds In The Trap \n Sing McKnight", width / 1.37, height / 3.32);

      rodeotrav_album.render();
      textSize(width / 128);
      text("Rodeo (Expanded Edition)", width / 2.4, height / 1.73);

      daysbeforerodeo_album.render();
      textSize(width / 128);
      text("Days Before Rodeo", width / 1.75, height / 1.73);

      owlpharoah_album.render();
      textSize(width / 128);
      text("Owl Pharaoh", width / 1.37, height / 1.73);

      hunchojack_album.render();
      textSize(width / 128);
      text("Huncho Jack, Jack Huncho", width / 2.4, height / 1.17);

      unreleased_album.render();
      textSize(width / 128);
      text("Unreleased Songs", width / 1.75, height / 1.17);

      singles_album.render();
      textSize(width / 128);
      text("Singles and Features", width / 1.37, height / 1.17);
      nextbutton.render();
    } else if (pagenum == 2) {
      live_album.render();
      textSize(width / 128);
      text("Live Performances", width / 2.4, height / 3.32);
      previousbutton.render();
    }

    backbutton.render();
    nowplaying.render();

    m1.render();
    m2.render();
    m3.render();
    m4.render();
    m5.render();
    m6.render();
    m7.render();
    m8.render();
    m9.render();
    m10.render();
    m11.render();
    m12.render();
    m13.render();
    m14.render();
    m15.render();
  }

  if (screen == 3) { //ASTROWORLD ALBUM
    a1.render();
    a2.render();
    a3.render();
    a4.render();
    a5.render();
    a6.render();
    a7.render();
    a8.render();
    a9.render();
    a10.render();
    a11.render();
    a12.render();
    a13.render();
    a14.render();
    a15.render();
    a16.render();
    a17.render();
    backbutton.render();
    nowplaying.render();
    image(astro_album, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 4) { //BIRDS ALBUM
    b1.render();
    b2.render();
    b3.render();
    b4.render();
    b5.render();
    b6.render();
    b7.render();
    b8.render();
    b9.render();
    b10.render();
    b11.render();
    b12.render();
    b13.render();
    b14.render();
    backbutton.render();
    nowplaying.render();
    image(birds_album, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 5) { //RODEO ALBUM
    r1.render();
    r2.render();
    r3.render();
    r4.render();
    r5.render();
    r6.render();
    r7.render();
    r8.render();
    r9.render();
    r10.render();
    r11.render();
    r12.render();
    r13.render();
    r14.render();
    r15.render();
    r16.render();
    backbutton.render();
    nowplaying.render();
    image(rodeo_album, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 6) { //DBR ALBUM
    d1.render();
    d2.render();
    d3.render();
    d4.render();
    d5.render();
    d6.render();
    d7.render();
    d8.render();
    d9.render();
    d10.render();
    d11.render();
    d12.render();
    backbutton.render();
    nowplaying.render();
    image(days_album, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 7) { //OWL PHAROAH ALBUM
    o1.render();
    o2.render();
    o3.render();
    o4.render();
    o5.render();
    o6.render();
    o7.render();
    o8.render();
    o9.render();
    o10.render();
    o11.render();
    o12.render();
    o13.render();
    backbutton.render();
    nowplaying.render();
    image(owl_album, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 8) { //HUNCHO JACK ALBUM
    h1.render();
    h2.render();
    h3.render();
    h4.render();
    h5.render();
    h6.render();
    h7.render();
    h8.render();
    h9.render();
    h10.render();
    h11.render();
    h12.render();
    h13.render();
    backbutton.render();
    nowplaying.render();
    image(huncho_album, a1.x, height / 6.96, width / 12.8, height / 7.2);
    textSize(width / 140);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 9) { //UNRELEASED ALBUM
    u1.render();
    u2.render();
    u3.render();
    u4.render();
    u5.render();
    u6.render();
    u7.render();
    u8.render();
    u9.render();
    u10.render();
    u11.render();
    u12.render();
    u13.render();
    u14.render();
    u15.render();
    u16.render();
    u17.render();
    u18.render();
    u19.render();
    u20.render();
    u21.render();
    backbutton.render();
    nowplaying.render();
    image(unreleased, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 10) { //SINGLES ALBUM
    s1.render();
    s2.render();
    s3.render();
    s4.render();
    s5.render();
    s6.render();
    s7.render();
    s8.render();
    s9.render();
    s10.render();
    s11.render();
    s12.render();
    s13.render();
    s14.render();
    s15.render();
    s16.render();
    backbutton.render();
    nowplaying.render();
    image(singles, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(width / 128);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (screen == 11) { //LIVE PERFORMANCES
    l1.render();
    backbutton.render();
    nowplaying.render();
    image(live, a1.x, height / 6.96, width / 12.8, height / 7.2);
    rodeo_live.render();
  }

  if (screen == 12) { //MINIGAME
    backbutton.render();
    nowplaying.render();
    rectMode(CORNER);
    if (miniscreen == 0) {
      imageMode(CENTER);
      image(minigame, width / 2, height / 2.45, width / 4.27, height / 10.8);
      fill(255, 255, 0);
      rect(0, height / 1.0719603, width, height / 14.89655);
      fill(255, 255, 255);
      textSize(width / 76.8);
      text("Highscore - " + highscorenum, width / 2, height / 9.5);
      imageMode(CORNER);
      for (int i = 0; i < obstaclegraphics.size(); i++) {
        if (obstaclegraphics.get(i).x < -width / 19.2) {
          obstaclegraphics.get(i).x = width + random(width / 19.2, width / 2.4);
        }
        obstaclegraphics.get(i).render();
      }
      start.render();
      charselect.render();
      for (int i = 0; i < clouds.length; i++) {
        clouds[i].render();
        if (clouds[i].x < -width / 5.4857) clouds[i].x = width + random(width / 19.2, width / 2.4);
      }
    }
    if (miniscreen == 1) {
      if (gameload == 1) {
        obstacles.clear();
        obstacles.add(new enemy(width / 0.95049, height / 1.24855491, width / 137.142857));
        gamescore = 0;
        difficulty = 0;
        gameload = 2;
      }
      fill(255, 255, 0);
      rect(0, height / 1.0719603, width, height / 14.8965517);
      textSize(width / 76.8);
      fill(255, 255, 255);
      text("Highscore - " + highscorenum, width / 2.25, height / 21.6);
      text("Current Score - " + gamescore, width / 2.25, height / 14);
      if (character2 == false) {
        travis.model = player_model;
      } else if (character2 == true) {
        travis.model = player_model2;
      }
      travis.render();
      travis.smoothmoves();
      for (int i = 0; i < clouds.length; i++) {
        clouds[i].render();
        if (clouds[i].x < -350) clouds[i].x = width + random(width / 19.2, width / 2.4);
      }
      gamescore++;
      for (int i = 0; i < obstacles.size(); i++) {
        if (dist(travis.x, travis.y, obstacles.get(i).x, obstacles.get(i).y) < width / 22) miniscreen = 2;
        if (obstacles.get(i).x > -width / 19.2) {
          obstacles.get(i).render();
        }
        if (obstacles.get(i).x < width / 2) {
          if (enemycounter == 0) {
            difficulty += 0.75;
            obstacles.add(new enemy(width + random(width / 9.6, width / 0.9), height / 1.24855491, width / 137.142857 + difficulty));
            obstacles.add(new enemy(width + random(width / 9.6, width / 0.9), height / 1.24855491, width / 137.142857 + difficulty));
            enemycounter = 100;
          }
        }
        for (int f = 0; f < obstacles.size(); f++) {
          if (abs(obstacles.get(i).x - obstacles.get(f).x) < 250 && obstacles.get(i).x > width && obstacles.get(i) != obstacles.get(f)) {
            obstacles.get(i).x += width / 38.4;
          }
        }
      }
    }
    if (miniscreen == 2) {
      if (gamescore > highscorenum) {
        String codeword = "highscore";
        String [] temp3 = loadStrings("high_score.txt");
        for (int i = 0; i < temp3.length; i++) {
          String tobesearched = temp3[i];
          int index1 = tobesearched.indexOf(codeword);
          if (index1 >= 0) {
            high_score.remove(i);
          }
        }
        String temp1 = "highscore" + " " + gamescore;
        high_score.add(temp1);
        String[] temp2 = new String[high_score.size()];
        for (int i = 0; i < high_score.size(); i++) {
          temp2[i] = high_score.get(i);
        }
        saveStrings("high_score.txt", temp2);
      }
      imageMode(CENTER);
      if (lightmode == false) {
        image(gameover, width / 2, height / 2.5, width / 6.4, height / 21.6);
        fill(255);
        textSize(width / 64);
        text("Your Score: " + gamescore, width / 2, height / 2);
        text("High Score: " + highscorenum, width / 2, height / 1.85);
        restart.render();
        menu2.render();
      }
      if (lightmode == true) {
        image(gameover_light, width / 2, height / 2.5, width / 6.4, height / 21.6);
        fill(0);
        textSize(width / 64);
        text("Your Score: " + gamescore, width / 2, height / 2);
        text("High Score: " + highscorenum, width / 2, height / 1.85);
        restart.render();
        menu2.render();
      }
    }
    if (miniscreen == 3) {
      imageMode(CENTER);
      rectMode(CENTER);
      if (character2 == false) {
        if (lightmode == true) stroke(0);
        if (lightmode == false) stroke(255);
        noFill();
        rect(travischain.x, travischain.y, travischain.b + width / 192, travischain.h + height / 108);
      } else if (character2 == true) {
        if (lightmode == true) stroke(0);
        if (lightmode == false) stroke(255);
        noFill();
        rect(travisrose.x, travisrose.y, travisrose.b + width / 192, travisrose.h + height / 108);
      }
      travisrose.render();
      travischain.render();
      menu.render();
    }
  }

  if (screen == 13) { //SETTINGS MENU
    backbutton.render();
    nowplaying.render();
    lightmodebutton.render();
    lowpowermodebutton.render();
    resetbutton.render();

    if (lightmode == true) {
      lightmodebutton.text = "Light Mode: On";
    } else if (lightmode == false) {
      lightmodebutton.text = "Light Mode: Off";
    }

    if (lowpowermode == true) {
      lowpowermodebutton.text = "Low Power Mode: On";
    } else if (lowpowermode == false) {
      lowpowermodebutton.text = "Low Power Mode: Off";
    }

    if (reset == true) {
      fill(0);
      rect(width / 2, height / 2, width / 3.84, height / 4.32);
      fill(255);
      textSize(width / 109.714286);
      text("Are you sure you want to reset all \n application settings including most \n played songs and high scores? \n *THIS CANNOT BE UNDONE*", width / 2, height / 2.35);
      no.render();
      yes.render();
    }
  }

  if (screen == 14) { //JACKBOYS ALBUM
    j1.render();
    j2.render();
    j3.render();
    j4.render();
    j5.render();
    j6.render();
    j7.render();
    backbutton.render();
    nowplaying.render();
    image(jackboys, a1.x, height / 6.96, width / 12.8, height / 7.2);

    if (lightmode == false) {
      fill(255);
      stroke(255);
    } else if (lightmode == true) {
      fill(0);
      stroke(0);
    }

    if (lowpowermode == false) {
      for (int i = 0; i < player.bufferSize() - 1; i++) {
        float x1 = map(i, 0, player.bufferSize(), width / 2.7, width / 1.055);
        float x2 = map(i + 1, 0, player.bufferSize(), width / 2.7, width / 1.055);
        line(x1, height / 2.4 + player.left.get(i) * 50, x2, height / 2.4 + player.left.get(i + 1) * 50);
        line(x1, height / 1.96 + player.right.get(i) * 50, x2, height / 1.96 + player.right.get(i + 1) * 50);
      }
    }

    strokeWeight(15);
    if (lightmode == false) { 
      stroke(255);
    } else if (lightmode == true) {
      stroke(0);
    }
    line(width / 2.666666, height / 1.5428, width / 1.06963788, height / 1.54285714);
    stroke(255, 0, 0);
    TimeStamp = int(map(player.position(), 0, player.length(), width / 2.66666, width / 1.06963788));
    line(width / 2.666666, height / 1.54285714, TimeStamp, height / 1.54285714);
    strokeWeight(1);
    textSize(width / 140);

    if (player.isPlaying()) {
      text("Press space key to pause playback.", width / 2.2, height / 3.09);
    } else {
      text("Press space key to start playback.", width / 2.2, height / 3.09);
    }

    if (loop == false) {
      text("Press L key to turn looping on.", width / 2.2, height / 3.27);
    } else {
      text("Press L key to turn looping off.", width / 2.2, height / 3.27);
    }
    text(minutes + ":" + seconds + " / " + minutes2 + ":" + seconds2, width / 2.56, height / 1.44);
  }

  if (pause == false && player.isPlaying() == false && loop == true) {
    player.rewind();
    player.play();
    if (player.position() == 0) {
      lastplayed.num++;
      fileWrite(lastplayed.code, lastplayed.songfile, lastplayed.name, lastplayed.num);
    }
    player.play();
  }
  if (jumpcounter > 0) jumpcounter--;
  if (enemycounter > 0) enemycounter--;
}

boolean isClicked(button a) {
  return ((mouseX >= a.x - (a.x / 2) && mouseX <= a.x + a.b / 2) && (mouseY >= a.y - (a.h / 2) && mouseY <= a.y + a.h / 2));
}

void buttonisClicked(button a, int s) {
  if ((mouseX >= a.x - (a.b / 2) && mouseX <= a.x + a.b / 2) && (mouseY >= a.y - (a.h / 2) && mouseY <= a.y + a.h / 2)) {
    screen = s;
  }
}

void imgisClicked(imgbutton a, int s) {
  if ((mouseX >= a.x - (a.b / 2) && mouseX <= a.x + a.b / 2) && (mouseY >= a.y - (a.h / 2) && mouseY <= a.y + a.h / 2)) {
    screen = s;
  }
}

boolean imageisClicked(imgbutton a) {
  return ((mouseX >= a.x - (a.b / 2) && mouseX <= a.x + a.b / 2) && (mouseY >= a.y - (a.h / 2) && mouseY <= a.y + a.h / 2));
}

void movieEvent(Movie rodeo) {
  rodeo.read();
}

int fileRead(String code, String name, int varnum, String directory) {
  int num = varnum;
  for (int i = 0; i < most_played.size(); i++) {
    String codeword = code;
    String tobesearched = most_played.get(i);
    int index1 = tobesearched.indexOf(codeword);
    //println(index1);
    if (index1 >= 0) {
      for (int j = 0; j < most_played.get(i).length(); j++) {
        String temp3 = most_played.get(i);
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 2) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)));
          song_count.add(new sortnum(name, num, directory, codeword));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 3) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2));
          song_count.add(new sortnum(name, num, directory, codeword));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 4) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3));
          song_count.add(new sortnum(name, num, directory, codeword));
        }
        if (str(temp3.charAt(j)).equals(" ") && temp3.length() == j + 5) {
          num = Integer.valueOf(str(temp3.charAt(j + 1)) + temp3.charAt(j + 2) + temp3.charAt(j + 3) + temp3.charAt(j + 4));
          song_count.add(new sortnum(name, num, directory, codeword));
        }
      }
    }
  }
  return num;
}

void fileWrite(String code, String directory, String text, int num) {
  if (player.isPlaying()) {
    player.pause();
  }
  rodeo.pause();
  player = minim.loadFile(directory);
  player.play();
  nowplaying.text = text;
  String codeword = code;
  String [] temp3 = loadStrings("most_played.txt");
  for (int i = 0; i < temp3.length; i++) {
    String tobesearched = temp3[i];
    int index1 = tobesearched.indexOf(codeword);
    if (index1 >= 0) {
      most_played.remove(i);
    }
  }

  String temp1 = code + " " + num;
  most_played.add(temp1);
  String[] temp2 = new String[most_played.size()];
  for (int i = 0; i < most_played.size(); i++) {
    temp2[i] = most_played.get(i);
  }

  saveStrings("most_played.txt", temp2);
}

void fileWipe(String code, int num) {
  String codeword = code;
  String [] temp3 = loadStrings("most_played.txt");
  for (int i = 0; i < temp3.length; i++) {
    String tobesearched = temp3[i];
    int index1 = tobesearched.indexOf(codeword);
    if (index1 >= 0) {
      most_played.remove(i);
    }
  }

  String temp1 = code + " " + num;
  most_played.add(temp1);
  String[] temp2 = new String[most_played.size()];
  for (int i = 0; i < most_played.size(); i++) {
    temp2[i] = most_played.get(i);
  }

  saveStrings("most_played.txt", temp2);
}

void keyReleased() {
  if (keyCode == 83) down = false;
  if (keyCode == 65) left = false;
  if (keyCode == 68) right = false;
}

void keyPressed() {
  /*if (key == 'f' && screen != 11) { //LEGACY CONTROLS
   player.skip(1000);
   }
   if (key == 'r' && screen != 11) {
   player.skip(-10000);
   }*/
  if (key == 'f' && screen == 11) {
    rodeo.jump(rodeo.time() + 10);
  }
  if (key == 'r' && screen == 11) {
    rodeo.jump(rodeo.time() - 10);
  }

  if (pause == false && keyCode == 32 && player.isPlaying() == true && screen != 11) {
    player.pause();
    pause = true;
  } else if (pause == false && keyCode == 32 && player.isPlaying() == false && loop == false && screen != 11) {
    player.rewind();
    player.play();
    if (player.length() > 2090) {
      lastplayed.num++;
      fileWrite(lastplayed.code, lastplayed.songfile, lastplayed.name, lastplayed.num);
    }
  } else if (pause == true && keyCode == 32 && player.isPlaying() == false && screen != 11) {
    player.play();
    pause = false;
  }

  if (keyCode == 76 && loop == false) {
    loop = true;
  } else if (keyCode == 76 && loop == true) {
    loop = false;
  }

  if (screen == 11) {
    if (playing && keyCode == 32) {
      rodeo.pause();
      playing = false;
    } else if (playing == false && keyCode == 32) {
      rodeo.play();
      playing = true;
    }
    if (pause == false) pause = true;
  }

  if (keyCode == 72) {
    screen = 1;
  }

  if (keyCode == 87 && jumpcounter == 0) {
    travis.sy = -height / 45;
    jumpcounter = 30;
  }
  if (keyCode == 83) down = true;
  if (keyCode == 65) left = true;
  if (keyCode == 68) right = true;
}

int position;
void mousePressed() {
  if (imageisClicked(terminate)) exit();
  if (mouseButton == RIGHT && screen == 11) {
    if (imageisClicked(rodeo_live) && fullscreen == false) {
      rodeo_live.x = width / 2;
      rodeo_live.y = height / 2;
      rodeo_live.b = width;
      rodeo_live.h = height;
      fullscreen = true;
    } else if (imageisClicked(rodeo_live) && fullscreen == true) {
      rodeo_live.x = width / 2 + width / 6;
      rodeo_live.y = height / 2;
      rodeo_live.b = width / 1.92;
      rodeo_live.h = height / 1.8;
      fullscreen = false;
    }
  }

  if (mouseButton == LEFT && fullscreen == false) {
    if (screen == 1) {
      buttonisClicked(musicbutton, 2);
      buttonisClicked(minigamebutton, 12);
      buttonisClicked(settingsbutton, 13);
      if (imageisClicked(githublink)) {
        link("https://github.com/qfaizaan");
      }
      if (imageisClicked(instagramlink)) {
        link("https://www.instagram.com/faizaanqureshi_/");
      }
    } else if (screen == 2) {
      line(width / 9.1429, height / 1.5428, width / 3.28205, height / 1.5428);
      stroke(255, 0, 0);
      TimeStamp = int(map(player.position(), 0, player.length(), width / 9.1429, width / 3.28205));
      line(width / 9.1429, height / 1.5428, TimeStamp, height / 1.5428);
      if (mouseX > width / 9.1429 && mouseX < width / 3.28205 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 9.1429, width / 3.28205, 0, player.length()));
        player.cue(position);
      }
      if (imageisClicked(nextbutton) && pagenum == 1) {
        pagenum = 2;
      } else if (imageisClicked(previousbutton) && pagenum == 2) {
        pagenum = 1;
      }
      if (pagenum == 1) {
        imgisClicked(jackboys_album, 14);
      } 
      if (pagenum == 2) {
        imgisClicked(live_album, 11);
      }
      imgisClicked(singles_album, 10);
      imgisClicked(unreleased_album, 9);
      imgisClicked(hunchojack_album, 8);
      imgisClicked(owlpharoah_album, 7);
      imgisClicked(daysbeforerodeo_album, 6);
      imgisClicked(rodeotrav_album, 5);
      imgisClicked(birdsinthetrap_album, 4);
      imgisClicked(astroworld_album, 3);
      buttonisClicked(backbutton, 1);

      if (isClicked(m1)) {
        song_count.get(0).num++;
        fileWrite(song_count.get(0).code, song_count.get(0).songfile, song_count.get(0).name, song_count.get(0).num);
        lastplayed = new sortnum(song_count.get(0).name, song_count.get(0).num, song_count.get(0).songfile, song_count.get(0).code);
        pause = false;
      }

      if (isClicked(m2)) {
        song_count.get(1).num++;
        fileWrite(song_count.get(1).code, song_count.get(1).songfile, song_count.get(1).name, song_count.get(1).num);
        lastplayed = new sortnum(song_count.get(1).name, song_count.get(1).num, song_count.get(1).songfile, song_count.get(1).code);
        pause = false;
      }

      if (isClicked(m3)) {
        song_count.get(2).num++;
        fileWrite(song_count.get(2).code, song_count.get(2).songfile, song_count.get(2).name, song_count.get(2).num);
        lastplayed = new sortnum(song_count.get(2).name, song_count.get(2).num, song_count.get(2).songfile, song_count.get(2).code);
        pause = false;
      }

      if (isClicked(m4)) {
        song_count.get(3).num++;
        fileWrite(song_count.get(3).code, song_count.get(3).songfile, song_count.get(3).name, song_count.get(3).num);
        lastplayed = new sortnum(song_count.get(3).name, song_count.get(3).num, song_count.get(3).songfile, song_count.get(3).code);
        pause = false;
      }

      if (isClicked(m5)) {
        song_count.get(4).num++;
        fileWrite(song_count.get(4).code, song_count.get(4).songfile, song_count.get(4).name, song_count.get(4).num);
        lastplayed = new sortnum(song_count.get(4).name, song_count.get(4).num, song_count.get(4).songfile, song_count.get(4).code);
        pause = false;
      }

      if (isClicked(m6)) {
        song_count.get(5).num++;
        fileWrite(song_count.get(5).code, song_count.get(5).songfile, song_count.get(5).name, song_count.get(5).num);
        lastplayed = new sortnum(song_count.get(5).name, song_count.get(5).num, song_count.get(5).songfile, song_count.get(5).code);
        pause = false;
      }

      if (isClicked(m7)) {
        song_count.get(6).num++;
        fileWrite(song_count.get(6).code, song_count.get(6).songfile, song_count.get(6).name, song_count.get(6).num);
        lastplayed = new sortnum(song_count.get(6).name, song_count.get(6).num, song_count.get(6).songfile, song_count.get(6).code);
        pause = false;
      }

      if (isClicked(m8)) {
        song_count.get(7).num++;
        fileWrite(song_count.get(7).code, song_count.get(7).songfile, song_count.get(7).name, song_count.get(7).num);
        lastplayed = new sortnum(song_count.get(7).name, song_count.get(7).num, song_count.get(7).songfile, song_count.get(7).code);
        pause = false;
      }

      if (isClicked(m9)) {
        song_count.get(8).num++;
        fileWrite(song_count.get(8).code, song_count.get(8).songfile, song_count.get(8).name, song_count.get(8).num);
        lastplayed = new sortnum(song_count.get(8).name, song_count.get(8).num, song_count.get(8).songfile, song_count.get(8).code);
        pause = false;
      }
      if (isClicked(m10)) {
        song_count.get(9).num++;
        fileWrite(song_count.get(9).code, song_count.get(9).songfile, song_count.get(9).name, song_count.get(9).num);
        lastplayed = new sortnum(song_count.get(9).name, song_count.get(9).num, song_count.get(9).songfile, song_count.get(9).code);
        pause = false;
      }
      if (isClicked(m11)) {
        song_count.get(10).num++;
        fileWrite(song_count.get(10).code, song_count.get(10).songfile, song_count.get(10).name, song_count.get(10).num);
        lastplayed = new sortnum(song_count.get(10).name, song_count.get(10).num, song_count.get(10).songfile, song_count.get(10).code);
        pause = false;
      }
      if (isClicked(m12)) {
        song_count.get(11).num++;
        fileWrite(song_count.get(11).code, song_count.get(11).songfile, song_count.get(11).name, song_count.get(11).num);
        lastplayed = new sortnum(song_count.get(11).name, song_count.get(11).num, song_count.get(11).songfile, song_count.get(11).code);
        pause = false;
      }
      if (isClicked(m13)) {
        song_count.get(12).num++;
        fileWrite(song_count.get(12).code, song_count.get(12).songfile, song_count.get(12).name, song_count.get(12).num);
        lastplayed = new sortnum(song_count.get(12).name, song_count.get(12).num, song_count.get(12).songfile, song_count.get(12).code);
        pause = false;
      }
      if (isClicked(m14)) {
        song_count.get(13).num++;
        fileWrite(song_count.get(13).code, song_count.get(13).songfile, song_count.get(13).name, song_count.get(13).num);
        lastplayed = new sortnum(song_count.get(13).name, song_count.get(13).num, song_count.get(13).songfile, song_count.get(13).code);
        pause = false;
      }
      if (isClicked(m15)) {
        song_count.get(14).num++;
        fileWrite(song_count.get(14).code, song_count.get(14).songfile, song_count.get(14).name, song_count.get(14).num);
        lastplayed = new sortnum(song_count.get(14).name, song_count.get(14).num, song_count.get(14).songfile, song_count.get(14).code);
        pause = false;
      }
    } else if (screen == 3) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(a1)) {
        stargazingnum++;
        fileWrite("stargazing", "/Astroworld/1- STARGAZING.mp3", "Astroworld: 1 - STARGAZING", stargazingnum);
        lastplayed = new sortnum("Astroworld: 1 - STARGAZING", stargazingnum, "/Astroworld/1- STARGAZING.mp3", "stargazing");
        pause = false;
      }
      if (isClicked(a2)) {
        carouselnum++;
        fileWrite("carousel", "/Astroworld/2- CAROUSEL.mp3", "Astroworld: 2 - CAROUSEL", carouselnum);
        lastplayed = new sortnum("Astroworld: 2 - CAROUSEL", carouselnum, "/Astroworld/2- CAROUSEL.mp3", "carousel");
        pause = false;
      }
      if (isClicked(a3)) {
        sickomodenum++;
        fileWrite("sickomode", "/Astroworld/3- SICKO MODE.mp3", "Astroworld: 3 - SICKO MODE", sickomodenum);
        lastplayed = new sortnum("Astroworld: 3 - SICKO MODE", sickomodenum, "/Astroworld/3- SICKO MODE.mp3", "sickomode");
        pause = false;
      }
      if (isClicked(a4)) {
        ripscrewnum++;
        fileWrite("ripscrew", "/Astroworld/4- R.I.P. SCREW.mp3", "Astroworld: 4 - R.I.P SCREW", ripscrewnum);
        lastplayed = new sortnum("Astroworld: 4 - R.I.P SCREW", ripscrewnum, "/Astroworld/4- R.I.P. SCREW.mp3", "ripscrew");
        pause = false;
      }
      if (isClicked(a5)) {
        sttbgnum++;
        fileWrite("sttbg", "/Astroworld/5- STOP TRYING TO BE GOD.mp3", "Astroworld: 5 - STOP TRYING TO BE GOD", sttbgnum);
        lastplayed = new sortnum("Astroworld: 5 - STOP TRYING TO BE GOD", sttbgnum, "/Astroworld/5- STOP TRYING TO BE GOD.mp3", "sttbg");
        pause = false;
      }
      if (isClicked(a6)) {
        nobystandersnum++;
        fileWrite("nobystanders", "/Astroworld/6- NO BYSTANDERS.mp3", "Astroworld: 6 - NO BYSTANDERS", nobystandersnum);
        lastplayed = new sortnum("Astroworld: 6 - NO BYSTANDERS", nobystandersnum, "/Astroworld/6- NO BYSTANDERS.mp3", "nobystanders");
        pause = false;
      }
      if (isClicked(a7)) {
        skeletonsnum++;
        fileWrite("skeletons", "/Astroworld/7- SKELETONS.mp3", "Astroworld: 7 - SKELETONS", skeletonsnum);
        lastplayed = new sortnum("Astroworld: 7 - SKELETONS", skeletonsnum, "/Astroworld/7- SKELETONS.mp3", "skeletons");
        pause = false;
      }
      if (isClicked(a8)) {
        wakeupnum++;
        fileWrite("wakeup", "/Astroworld/8- WAKE UP.mp3", "Astroworld: 8 - WAKE UP", wakeupnum);
        lastplayed = new sortnum("Astroworld: 8 - WAKE UP", wakeupnum, "/Astroworld/8- WAKE UP.mp3", "wakeup");
        pause = false;
      }
      if (isClicked(a9)) {
        fivetintnum++;
        fileWrite("5tint", "/Astroworld/9- 5% TINT.mp3", "Astroworld: 9 - 5% TINT", fivetintnum);
        lastplayed = new sortnum("Astroworld: 9 - 5% TINT", fivetintnum, "/Astroworld/9- 5% TINT.mp3", "5tint");
        pause = false;
      }
      if (isClicked(a10)) {
        nc17num++;
        fileWrite("nc17", "/Astroworld/10- NC-17.mp3", "Astroworld: 10 - NC-17", nc17num);
        lastplayed = new sortnum("Astroworld: 10 - NC-17", nc17num, "/Astroworld/10- NC-17.mp3", "nc17");
        pause = false;
      }
      if (isClicked(a11)) {
        astrothundernum++;
        fileWrite("astrothunder", "/Astroworld/11- ASTROTHUNDER.mp3", "Astroworld: 11 - ASTROTHUNDER", astrothundernum);
        lastplayed = new sortnum("Astroworld: 11 - ASTROTHUNDER", astrothundernum, "/Astroworld/11- ASTROTHUNDER.mp3", "astrothunder");
        pause = false;
      }
      if (isClicked(a12)) {
        yosemitenum++;
        fileWrite("yosemite", "/Astroworld/12- YOSEMITE.mp3", "Astroworld: 12 - YOSEMITE", yosemitenum);
        lastplayed = new sortnum("Astroworld: 12 - YOSEMTIE", yosemitenum, "/Astroworld/12- YOSEMITE.mp3", "yosemite");
        pause = false;
      }
      if (isClicked(a13)) {
        cantsaynum++;
        fileWrite("cantsay", "/Astroworld/13- CAN'T SAY.mp3", "Astroworld: 13 - CAN'T SAY", cantsaynum);
        lastplayed = new sortnum("Astroworld: 13 - CAN'T SAY", cantsaynum, "/Astroworld/13- CAN'T SAY.mp3", "cantsay");
        pause = false;
      }
      if (isClicked(a14)) {
        whowhatnum++;
        fileWrite("whowhat", "/Astroworld/14- WHO WHAT!.mp3", "Astroworld: 14 - WHO? WHAT!", whowhatnum);
        lastplayed = new sortnum("Astroworld: 14 - WHO? WHAT!", whowhatnum, "/Astroworld/14- WHO WHAT!.mp3", "whowhat");
        pause = false;
      }
      if (isClicked(a15)) {
        butterflyeffectnum++;
        fileWrite("butterflyeffect", "/Astroworld/15- BUTTERFLY EFFECT.mp3", "Astroworld: 15 - BUTTERFLY EFFECT", butterflyeffectnum);
        lastplayed = new sortnum("Astroworld: 15 - BUTTERFLY EFFECT", butterflyeffectnum, "/Astroworld/15- BUTTERYFLY EFFECT.mp3", "butterflyeffect");
        pause = false;
      }
      if (isClicked(a16)) {
        houstonfornicationnum++;
        fileWrite("houstonfornication", "/Astroworld/16- HOUSTONFORNICATION.mp3", "Astroworld: 16 - HOUSTONFORNICATION", houstonfornicationnum);
        lastplayed = new sortnum("Astroworld: 16 - HOUSTONFORNICATION", houstonfornicationnum, "/Astroworld/16- HOUSTONFORNICATION.mp3", "houstonfornication");
        pause = false;
      }
      if (isClicked(a17)) {
        coffeebeannum++;
        fileWrite("coffeebean", "/Astroworld/17- COFFEE BEAN.mp3", "Astroworld: 17 - COFFEE BEAN", coffeebeannum);
        lastplayed = new sortnum("Astroworld: 17 - COFFEE BEAN", coffeebeannum, "/Astroworld/17- COFFEE BEAN.mp3", "coffeebean");
        pause = false;
      }
    } else if (screen == 4) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(b1)) {
        theendsnum++;
        fileWrite("theends", "/Birds In The Trap Sing McKnight/01 The Ends.mp3", "Birds In The Trap: 1 - The Ends", theendsnum);
        lastplayed = new sortnum("Birds In The Trap: 1 - The Ends", theendsnum, "/Birds In The Trap Sing McKnight/01 The Ends.mp3", "theends");
        pause = false;
      }
      if (isClicked(b2)) {
        waybacknum++;
        fileWrite("wayback", "/Birds In The Trap Sing McKnight/02 Way Back.mp3", "Birds In The Trap: 2 - Way Back", waybacknum);
        lastplayed = new sortnum("Birds In The Trap: 2 - Way Back", waybacknum, "/Birds In The Trap Sing McKnight/02 Way Back.mp3", "wayback");
        pause = false;
      }
      if (isClicked(b3)) {
        coordinatenum++;
        fileWrite("coodinate", "/Birds In The Trap Sing McKnight/03 Coordinate.mp3", "Birds In The Trap: 3 - Coordinate", coordinatenum);
        lastplayed = new sortnum("Birds In The Trap: 3 - Coordinate", coordinatenum, "/Birds In The Trap Sing McKnight/03 Coordinate.mp3", "coordinate");
        pause = false;
      }
      if (isClicked(b4)) {
        ttlnnum++;
        fileWrite("ttln", "/Birds In The Trap Sing McKnight/04 Through The Late Night.mp3", "Birds In The Trap: 4 - Through The Late Night", ttlnnum);
        lastplayed = new sortnum("Birds In The Trap: 4 - Through The Late Night", ttlnnum, "/Birds In The Trap Sing McKnight/04 Through The Late Night.mp3", "ttln");
        pause = false;
      }
      if (isClicked(b5)) {
        beibsnum++;
        fileWrite("beibsinthetrap", "/Birds In The Trap Sing McKnight/05 Beibs In The Trap.mp3", "Birds In The Trap: 5 - Beibs In The Trap", beibsnum);
        lastplayed = new sortnum("Birds In The Trap: 5 - Beibs In The Trap", beibsnum, "/Birds In The Trap Sing McKnight/05 Beibs In The Trap.mp3", "beibsinthetrap");
        pause = false;
      }
      if (isClicked(b6)) {
        sdpinterludenum++;
        fileWrite("sdpinterlude", "/Birds In The Trap Sing McKnight/06 Sdp Interlude.mp3", "Birds In The Trap: 6 - Sdp Interlude", sdpinterludenum);
        lastplayed = new sortnum("Birds In The Trap: 6 - Sdp Interlude", sdpinterludenum, "/Birds In The Trap Sing McKnight/06 Sdp Interlude.mp3", "sdpinterlude");
        pause = false;
      }
      if (isClicked(b7)) {
        sweetsweetnum++;
        fileWrite("sweetsweet", "/Birds In The Trap Sing McKnight/07 Sweet Sweet.mp3", "Birds In The Trap: 7 - Sweet Sweet", sweetsweetnum);
        lastplayed = new sortnum("Birds In The Trap: 7 - Sweet Sweet", theendsnum, "/Birds In The Trap Sing McKnight/07 Sweet Sweet.mp3", "sweetsweet");
        pause = false;
      }
      if (isClicked(b8)) {
        outsidenum++;
        fileWrite("outside", "/Birds In The Trap Sing McKnight/08 Outside.mp3", "Birds In The Trap: 8 - Outside", outsidenum);
        lastplayed = new sortnum("Birds In The Trap: 8 - Outside", outsidenum, "/Birds In The Trap Sing McKnight/08 Outside.mp3", "outside");
        pause = false;
      }
      if (isClicked(b9)) {
        goosebumpsnum++;
        fileWrite("goosebumps", "/Birds In The Trap Sing McKnight/09 Goosebumps.mp3", "Birds In The Trap: 9 - Goosebumps", goosebumpsnum);
        lastplayed = new sortnum("Birds In The Trap: 9 - Goosebumps", goosebumpsnum, "/Birds In The Trap Sing McKnight/09 Goosebumps.mp3", "goosebumps");
        pause = false;
      }
      if (isClicked(b10)) {
        firsttakenum++;
        fileWrite("firsttake", "/Birds In The Trap Sing McKnight/10 First Take.mp3", "Birds In The Trap: 10 - First Take", firsttakenum);
        lastplayed = new sortnum("Birds In The Trap: 10 - First Take", firsttakenum, "/Birds In The Trap Sing McKnight/10 First Take.mp3", "firsttake");
        pause = false;
      }
      if (isClicked(b11)) {
        pickupthephonenum++;
        fileWrite("pickupthephone", "/Birds In The Trap Sing McKnight/11 Pick Up The Phone.mp3", "Birds In The Trap: 11 - Pick Up The Phone", pickupthephonenum);
        lastplayed = new sortnum("Birds In The Trap: 1 - Pick Up The Phone", pickupthephonenum, "/Birds In The Trap Sing McKnight/11 Pick Up The Phone.mp3", "pickupthephone");
        pause = false;
      }
      if (isClicked(b12)) {
        losenum++;
        fileWrite("lose", "/Birds In The Trap Sing McKnight/12 Lose.mp3", "Birds In The Trap: 12 - Lose", losenum);
        lastplayed = new sortnum("Birds In The Trap: 12 - Lose", losenum, "/Birds In The Trap Sing McKnight/12 Lose.mp3", "lose");
        pause = false;
      }
      if (isClicked(b13)) {
        guidancenum++;
        fileWrite("guidance", "/Birds In The Trap Sing McKnight/13 Guidance.mp3", "Birds In The Trap: 13 - Guidance", guidancenum);
        lastplayed = new sortnum("Birds In The Trap: 13 - Guidance", guidancenum, "/Birds In The Trap Sing McKnight/13 Guidance.mp3", "guidance");
        pause = false;
      }
      if (isClicked(b14)) {
        wonderfulnum++;
        fileWrite("wonderful", "/Birds In The Trap Sing McKnight/14 Wonderful.mp3", "Birds In The Trap: 14 - Wonderful", wonderfulnum);
        lastplayed = new sortnum("Birds In The Trap: 14 - Wonderful", wonderfulnum, "/Birds In The Trap Sing McKnight/14 Wonderful.mp3", "wonderful");
        pause = false;
      }
    } else if (screen == 5) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(r1)) {
        ographynum++;
        fileWrite("****ography", "/Rodeo (Expanded Edition)/01 Pornography.mp3", "Rodeo: 1 - ****ography", ographynum);
        lastplayed = new sortnum("Rodeo: 1 - ****ography", ographynum, "/Rodeo (Expanded Edition)/01 Pornography.mp3", "****ography");
        pause = false;
      }
      if (isClicked(r2)) {
        ohmydissidenum++;
        fileWrite("ohmydisside", "/Rodeo (Expanded Edition)/02 Oh My Dis Side (feat. Quavo).mp3", "Rodeo: 2 - Oh My Dis Side", ohmydissidenum);
        lastplayed = new sortnum("Rodeo: 2 - Oh My Dis Side", ohmydissidenum, "/Rodeo (Expanded Edition)/02 Oh My Dis Side.mp3", "ohmydisside");
        pause = false;
      }
      if (isClicked(r3)) {
        thirtyfivehundrednum++;
        fileWrite("3500", "/Rodeo (Expanded Edition)/03 3500 (feat. Future & 2 Chainz).mp3", "Rodeo: 3 - 3500", thirtyfivehundrednum);
        lastplayed = new sortnum("Rodeo: 3 - 3500", thirtyfivehundrednum, "/Rodeo (Expanded Edition)/03 3500 (feat. Future & 2 Chainz).mp3", "3500");
        pause = false;
      }
      if (isClicked(r4)) {
        wastednum++;
        fileWrite("wasted", "/Rodeo (Expanded Edition)/04 Wasted (feat. Juicy J).mp3", "Rodeo: 4 - Wasted", wastednum);
        lastplayed = new sortnum("Rodeo: 4 - Wasted", wastednum, "/Rodeo (Expanded Edition)/04 Wasted.mp3", "wasted");
        pause = false;
      }
      if (isClicked(r5)) {
        nineotwooneonum++;
        fileWrite("90210", "/Rodeo (Expanded Edition)/05 90210.mp3", "Rodeo: 5 - 90210", nineotwooneonum);
        lastplayed = new sortnum("Rodeo: 5 - 90210", nineotwooneonum, "/Rodeo (Expanded Edition)/05 90210.mp3", "90210");
        pause = false;
      }
      if (isClicked(r6)) {
        prayforlovenum++;
        fileWrite("pray4love", "/Rodeo (Expanded Edition)/06 Pray 4 Love (feat. The Weeknd).mp3", "Rodeo: 6 - Pray 4 Love", prayforlovenum);
        lastplayed = new sortnum("Rodeo: 6 - Pray 4 Love", ographynum, "/Rodeo (Expanded Edition)/06 Pray 4 Love (feat. The Weeknd).mp3", "pray4love");
        pause = false;
      }
      if (isClicked(r7)) {
        nightcrawlernum++;
        fileWrite("nightcrawler", "/Rodeo (Expanded Edition)/07 Nightcrawler.mp3", "Rodeo: 7 - Nightcrawler", nightcrawlernum);
        lastplayed = new sortnum("Rodeo: 7 - Nightcrawler", nightcrawlernum, "/Rodeo (Expanded Edition)/07 Nightcrawler.mp3", "nightcrawler");
        pause = false;
      }
      if (isClicked(r8)) {
        pissonyourgravenum++;
        fileWrite("pissonyourgrave", "/Rodeo (Expanded Edition)/08 Piss On Your Grave.mp3", "Rodeo: 8 - Piss On Your Grave", pissonyourgravenum);
        lastplayed = new sortnum("Rodeo: 8 - Piss On Your Grave", pissonyourgravenum, "/Rodeo (Expanded Edition)/08 Piss On Your Grave.mp3", "pissonyourgrave");
        pause = false;
      }
      if (isClicked(r9)) {
        antidotenum++;
        fileWrite("antidote", "/Rodeo (Expanded Edition)/09 Antidote.mp3", "Rodeo: 9 - Antidote", antidotenum);
        lastplayed = new sortnum("Rodeo: 9 - Antidote", ographynum, "/Rodeo (Expanded Edition)/09 Antidote.mp3", "antidote");
        pause = false;
      }
      if (isClicked(r10)) {
        impossiblenum++;
        fileWrite("impossible", "/Rodeo (Expanded Edition)/10 Impossible.mp3", "Rodeo: 10 - Impossible", impossiblenum);
        lastplayed = new sortnum("Rodeo: 10 Impossible", impossiblenum, "/Rodeo (Expanded Edition)/10 Impossible.mp3", "impossible");
        pause = false;
      }
      if (isClicked(r11)) {
        mariaimdrunknum++;
        fileWrite("mariaimdrunk", "/Rodeo (Expanded Edition)/11 Maria I'm Drunk.mp3", "Rodeo: 11 - Maria I'm Drunk", mariaimdrunknum);
        lastplayed = new sortnum("Rodeo: 11 - Maria I'm Drunk", mariaimdrunknum, "/Rodeo (Expanded Edition)/11 Maria I'm Drunk.mp3", "mariaimdrunk");
        pause = false;
      }
      if (isClicked(r12)) {
        flyinghighnum++;
        fileWrite("flyinghigh", "/Rodeo (Expanded Edition)/12 Flying High (feat. Toro y Moi).mp3", "Rodeo: 12 - Flying High", flyinghighnum);
        lastplayed = new sortnum("Rodeo: 12 - Flying High", ographynum, "/Rodeo (Expanded Edition)/12 Flying High (feat. Toro y Moi).mp3", "flyinghigh");
        pause = false;
      }
      if (isClicked(r13)) {
        icantellnum++;
        fileWrite("icantell", "/Rodeo (Expanded Edition)/13 I Can Tell.mp3", "Rodeo: 13 - I Can Tell", icantellnum);
        lastplayed = new sortnum("Rodeo: 13 - I Can Tell", icantellnum, "/Rodeo (Expanded Edition)/13 I Can Tell.mp3", "icantell");
        pause = false;
      }
      if (isClicked(r14)) {
        applepienum++;
        fileWrite("applepie", "/Rodeo (Expanded Edition)/14 Apple Pie.mp3", "Rodeo: 14 - Apple Pie", applepienum);
        lastplayed = new sortnum("Rodeo: 14 - Apple Pie", applepienum, "/Rodeo (Expanded Edition)/14 Apple Pie.mp3", "applepie");
        pause = false;
      }
      if (isClicked(r15)) {
        okalrightnum++;
        fileWrite("okalright", "/Rodeo (Expanded Edition)/15 Ok Alright (feat. ScHoolboy Q).mp3", "Rodeo: 15 - Ok Alright", okalrightnum);
        lastplayed = new sortnum("Rodeo: 15 - Ok Alright", okalrightnum, "/Rodeo (Expanded Edition)/15 Ok Alright (feat. ScHoolboy Q).mp3", "okalright");
        pause = false;
      }
      if (isClicked(r16)) {
        nevercatchmenum++;
        fileWrite("nevercatchme", "/Rodeo (Expanded Edition)/16 Never Catch Me.mp3", "Rodeo: 16 - Never Catch Me", nevercatchmenum);
        lastplayed = new sortnum("Rodeo: 16 - Never Catch Me", nevercatchmenum, "/Rodeo (Expanded Edition)/16 Never Catch Me.mp3", "nevercatchme");
        pause = false;
      }
    } else if (screen == 6) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(d1)) {
        theprayernum++;
        fileWrite("theprayer", "/Days Before Rodeo/01 - The Prayer.mp3", "Days Before Rodeo: 1 - The Prayer", theprayernum);
        lastplayed = new sortnum("Days Before Rodeo: 1 - The Prayer", theprayernum, "/Days Before Rodeo/01 - The Prayer.mp3", "theprayer");
        pause = false;
      }
      if (isClicked(d2)) {
        mamacitanum++;
        fileWrite("mamacita", "/Days Before Rodeo/02 - Mamacita.mp3", "Days Before Rodeo: 2 - Mamacita", mamacitanum);
        lastplayed = new sortnum("Days Before Rodeo: 2 - Mamacita", mamacitanum, "/Days Before Rodeo/02 - Mamacita.mp3", "mamacita");
        pause = false;
      }
      if (isClicked(d3)) {
        quintana2num++;
        fileWrite("quintan2", "/Days Before Rodeo/03 - Quintana Pt 2.mp3", "Days Before Rodeo: 3 - Quintana Pt 2", quintana2num);
        lastplayed = new sortnum("Days Before Rodeo: 3 - Quintana Pt 2", quintana2num, "/Days Before Rodeo/03 - Quintana Pt 2.mp3", "quintan2");
        pause = false;
      }
      if (isClicked(d4)) {
        drugsyoushouldtryitnum++;
        fileWrite("drugsyoushouldtryit", "/Days Before Rodeo/04 - Drugs You Should Try.mp3", "Days Before Rodeo: 4 - Drugs You Should Try It", drugsyoushouldtryitnum);
        lastplayed = new sortnum("Days Before Rodeo: 4 - Drugs You Should Try It", drugsyoushouldtryitnum, "/Days Before Rodeo/04 - Drugs You Should Try.mp3", "drugsyoushouldtryit");
        pause = false;
      }
      if (isClicked(d5)) {
        dontplaynum++;
        fileWrite("dontplay", "/Days Before Rodeo/05 - Dont Play.mp3", "Days Before Rodeo: 5 - Don't Play", dontplaynum);
        lastplayed = new sortnum("Days Before Rodeo: 5 - Don't Play", dontplaynum, "/Days Before Rodeo/05 - Dont Play.mp3", "dontplay");
        pause = false;
      }
      if (isClicked(d6)) {
        skyfallnum++;
        fileWrite("skyfall", "/Days Before Rodeo/06 - Skyfall.mp3", "Days Before Rodeo: 6 - Skyfall", skyfallnum);
        lastplayed = new sortnum("Days Before Rodeo: 6 - Skyfall", skyfallnum, "/Days Before Rodeo/06 - Skyfall.mp3", "skyfall");
        pause = false;
      }
      if (isClicked(d7)) {
        zombiesnum++;
        fileWrite("zombies", "/Days Before Rodeo/07 - Zombies.mp3", "Days Before Rodeo: 7 - Zombies", zombiesnum);
        lastplayed = new sortnum("Days Before Rodeo: 7 - Zombies", zombiesnum, "/Days Before Rodeo/07 - Zombies.mp3", "zombies");
        pause = false;
      }
      if (isClicked(d8)) {
        sloppytoppynum++;
        fileWrite("sloppytoppy", "/Days Before Rodeo/08 - Sloppy Toppy.mp3", "Days Before Rodeo: 8 - Sloppy Toppy", sloppytoppynum);
        lastplayed = new sortnum("Days Before Rodeo: 8 - Sloppy Toppy", sloppytoppynum, "/Days Before Rodeo/08 - Sloppy Toppy.mp3", "sloppytoppy");
        pause = false;
      }
      if (isClicked(d9)) {
        basementfreestylenum++;
        fileWrite("basementfreestyle", "/Days Before Rodeo/09 - Basement Freestyle.mp3", "Days Before Rodeo: 9 - Basement Freestyle", basementfreestylenum);
        lastplayed = new sortnum("Days Before Rodeo: 9 - Basement Freestyle", basementfreestylenum, "/Days Before Rodeo/09 - Basement Freestyle.mp3", "basementfreestyle");
        pause = false;
      }
      if (isClicked(d10)) {
        backyardnum++;
        fileWrite("backyard", "/Days Before Rodeo/10 - Backyard.mp3", "Days Before Rodeo: 10 - Backyard", backyardnum);
        lastplayed = new sortnum("Days Before Rodeo: 10 - Backyard", backyardnum, "/Days Before Rodeo/10 - Backyard.mp3", "basementfreestyle");
        pause = false;
      }
      if (isClicked(d11)) {
        greynum++;
        fileWrite("grey", "/Days Before Rodeo/11 - Grey.mp3", "Days Before Rodeo: 11 - Grey", greynum);
        lastplayed = new sortnum("Days Before Rodeo: 11 - Grey", greynum, "/Days Before Rodeo/11 - Grey.mp3", "grey");
        pause = false;
      }
      if (isClicked(d12)) {
        baccnum++;
        fileWrite("bacc", "/Days Before Rodeo/12 - Bacc (Bonus).mp3", "Days Before Rodeo: 12 - Bacc (Bonus)", baccnum);
        lastplayed = new sortnum("Days Before Rodeo: 12 - Bacc (Bonus)", baccnum, "/Days Before Rodeo/12 - Bacc (Bonus).mp3", "bacc");
        pause = false;
      }
    } else if (screen == 7) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(o1)) {
        meadowcreeknum++;
        fileWrite("meadowcreek", "/Owl Pharaoh/01 - Meadow Creek.mp3", "Owl Pharaoh: 1 - Meadow Creek", meadowcreeknum);
        lastplayed = new sortnum("Owl Pharaoh: 1 - Meadow Creek", meadowcreeknum, "/Owl Pharaoh/01 - Meadow Creek.mp3", "meadowcreek");
        pause = false;
      }
      if (isClicked(o2)) {
        badmoodshitonyounum++;
        fileWrite("badmoodshitonyou", "/Owl Pharaoh/02 - Bad Mood Shit On You.mp3", "Owl Pharaoh: 2 - Bad Mood S*** On You", badmoodshitonyounum);
        lastplayed = new sortnum("Owl Pharaoh: 2 - Bad Mood S*** On You", badmoodshitonyounum, "/Owl Pharaoh/02 - Bad Mood Shit On You.mp3", "badmoodshitonyou");
        pause = false;
      }
      if (isClicked(o3)) {
        upperechelonnum++;
        fileWrite("upperechelon", "/Owl Pharaoh/03 - Upper Echelon.mp3", "Owl Pharaoh: 3 - Upper Echelon", upperechelonnum);
        lastplayed = new sortnum("Owl Pharaoh: 3 - Upper Echelon", upperechelonnum, "/Owl Pharaoh/03 - Upper Echelon.mp3", "upperechelon");
        pause = false;
      }
      if (isClicked(o4)) {
        chazinterludenum++;
        fileWrite("chazinterlude", "/Owl Pharaoh/04 - Chaz Interlude.mp3", "Owl Pharaoh: 4 - Chaz Interlude", chazinterludenum);
        lastplayed = new sortnum("Owl Pharaoh: 4 - Chaz Interlude", chazinterludenum, "/Owl Pharaoh/04 - Chaz Interlude.mp3", "chazinterlude");
        pause = false;
      }
      if (isClicked(o5)) {
        uptownnum++;
        fileWrite("uptown", "/Owl Pharaoh/05 - Uptown.mp3", "Owl Pharaoh: 5 - Uptown", uptownnum);
        lastplayed = new sortnum("Owl Pharaoh: 5 - Uptown", uptownnum, "/Owl Pharaoh/05 - Uptown.mp3", "uptown");
        pause = false;
      }
      if (isClicked(o6)) {
        hellofanightnum++;
        fileWrite("hellofanight", "/Owl Pharaoh/06 - Hell of a Night.mp3", "Owl Pharaoh: 6 - Hell of a Night", hellofanightnum);
        lastplayed = new sortnum("Owl Pharaoh: 6 - Hell of a Night", hellofanightnum, "/Owl Pharaoh/06 - Hell of a Night.mp3", "hellofanight");
        pause = false;
      }
      if (isClicked(o7)) {
        blockalaflamenum++;
        fileWrite("blockalaflame", "/Owl Pharaoh/07 - Blocka La Flame.mp3", "Owl Pharaoh: 7 - Blocka La Flame", blockalaflamenum);
        lastplayed = new sortnum("Owl Pharaoh: 7 - Blocka La Flame", blockalaflamenum, "/Owl Pharaoh/07 - Blocka La Flame.mp3", "blockalaflame");
        pause = false;
      }
      if (isClicked(o8)) {
        nakednum++;
        fileWrite("naked", "/Owl Pharaoh/08 - Naked.mp3", "Owl Pharaoh: 8 - Naked", nakednum);
        lastplayed = new sortnum("Owl Pharaoh: 8 - Naked", nakednum, "/Owl Pharaoh/08 - Naked.mp3", "naked");
        pause = false;
      }
      if (isClicked(o9)) {
        danceonthemoonnum++;
        fileWrite("uptown", "/Owl Pharaoh/09 - Dance On The Moon.mp3", "Owl Pharaoh: 9 - Dance On The Moon", danceonthemoonnum);
        lastplayed = new sortnum("Owl Pharaoh: 9 - Dance On The Moon", danceonthemoonnum, "/Owl Pharaoh/09 - Dance On The Moon.mp3", "danceonthemoon");
        pause = false;
      }
      if (isClicked(o10)) {
        mianum++;
        fileWrite("mia", "/Owl Pharaoh/10 - MIA.mp3", "Owl Pharaoh: 10 - MIA", mianum);
        lastplayed = new sortnum("Owl Pharaoh: 10 - MIA", mianum, "/Owl Pharaoh/10 - MIA.mp3", "mia");
        pause = false;
      }
      if (isClicked(o11)) {
        drivenum++;
        fileWrite("drive", "/Owl Pharaoh/11 - Drive.mp3", "Owl Pharaoh: 11 - Drive", drivenum);
        lastplayed = new sortnum("Owl Pharaoh: 11 - Drive", drivenum, "/Owl Pharaoh/11 - Drive.mp3", "drive");
        pause = false;
      }
      if (isClicked(o12)) {
        quintananum++;
        fileWrite("quintana", "/Owl Pharaoh/12 - Quintana.mp3", "Owl Pharaoh: 12 - Quintana", quintananum);
        lastplayed = new sortnum("Owl Pharaoh: 12 - Quintana", quintananum, "/Owl Pharaoh/12 - Quintana.mp3", "quintana");
        pause = false;
      }
      if (isClicked(o13)) {
        bandznum++;
        fileWrite("bandz", "/Owl Pharaoh/13 - Bandz.mp3", "Owl Pharaoh: 13 - Bandz", bandznum);
        lastplayed = new sortnum("Owl Pharaoh: 13 - Bandz", bandznum, "/Owl Pharaoh/13 - Bandz.mp3", "bandz");
        pause = false;
      }
    } else if (screen == 8) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(h1)) {
        modernslaverynum++;
        fileWrite("modernslavery", "/Huncho Jack, Jack Huncho/01 Modern Slavery.mp3", "Huncho Jack: 1 - Modern Slavery", modernslaverynum);
        lastplayed = new sortnum("Huncho Jack: 1 - Modern Slavery", modernslaverynum, "/Huncho Jack, Jack Huncho/01 Modern Slavery.mp3", "modernslavery");
        pause = false;
      }
      if (isClicked(h2)) {
        blackandchinesenum++;
        fileWrite("blackandchinese", "/Huncho Jack, Jack Huncho/02 Black & Chinese.mp3", "Huncho Jack: 2 - Black & Chinese", blackandchinesenum);
        lastplayed = new sortnum("Huncho Jack: 2 - Black & Chinese", blackandchinesenum, "/Huncho Jack, Jack Huncho/02 Black & Chinese.mp3", "blackandchinese");
        pause = false;
      }
      if (isClicked(h3)) {
        eyetoeyenum++;
        fileWrite("eyetoeye", "/Huncho Jack, Jack Huncho/03 Eye 2 Eye.mp3", "Huncho Jack: 3 - Eye 2 Eye", eyetoeyenum);
        lastplayed = new sortnum("Huncho Jack: 3 - Eye 2 Eye", eyetoeyenum, "/Huncho Jack, Jack Huncho/03 Eye 2 Eye.mp3", "eyetoeye");
        pause = false;
      }
      if (isClicked(h4)) {
        motorcyclepatchesnum++;
        fileWrite("motorcyclepatches", "/Huncho Jack, Jack Huncho/04 Motorcycle Patches.mp3", "Huncho Jack: 4 - Motorcycle Patches", motorcyclepatchesnum);
        lastplayed = new sortnum("Huncho Jack: 4 - Motorcycle Patches", motorcyclepatchesnum, "/Huncho Jack, Jack Huncho/04 Motorcycle Patches.mp3", "motorcyclepatches");
        pause = false;
      }
      if (isClicked(h5)) {
        hunchojacknum++;
        fileWrite("hunchojack", "/Huncho Jack, Jack Huncho/05 Huncho Jack.mp3", "Huncho Jack: 5 - Huncho Jack", hunchojacknum);
        lastplayed = new sortnum("Huncho Jack: 5 - Huncho Jack", hunchojacknum, "/Huncho Jack, Jack Huncho/05 Huncho Jack.mp3", "hunchojack");
        pause = false;
      }
      if (isClicked(h6)) {
        saintnum++;
        fileWrite("saint", "/Huncho Jack, Jack Huncho/06 Saint.mp3", "Huncho Jack: 6 - Saint", saintnum);
        lastplayed = new sortnum("Huncho Jack: 6 - Saint", saintnum, "/Huncho Jack, Jack Huncho/06 Saint.mp3", "saint");
        pause = false;
      }
      if (isClicked(h7)) {
        gonum++;
        fileWrite("go", "/Huncho Jack, Jack Huncho/07 Go.mp3", "Huncho Jack: 7 - Go", gonum);
        lastplayed = new sortnum("Huncho Jack: 7 - Go", gonum, "/Huncho Jack, Jack Huncho/07 Go.mp3", "go");
        pause = false;
      }
      if (isClicked(h8)) {
        dubaishitnum++;
        fileWrite("dubaishit", "/Huncho Jack, Jack Huncho/08 Dubai Shit.mp3", "Huncho Jack: 8 - Dubai S***", dubaishitnum);
        lastplayed = new sortnum("Huncho Jack: 8 - Dubai S***", dubaishitnum, "/Huncho Jack, Jack Huncho/08 Dubai Shit.mp3", "dubaishit");
        pause = false;
      }
      if (isClicked(h9)) {
        saintlaurentmasknum++;
        fileWrite("saintlaurentmask", "/Huncho Jack, Jack Huncho/09 Saint Laurent Mask.mp3", "Huncho Jack: 9 - Saint Laurent Mask", saintlaurentmasknum);
        lastplayed = new sortnum("Huncho Jack: 9 - Saint Laurent Mask", saintlaurentmasknum, "/Huncho Jack, Jack Huncho/09 Saint Laurent Mask.mp3", "saintlaurentmask");
        pause = false;
      }
      if (isClicked(h10)) {
        moonrocknum++;
        fileWrite("moonrock", "/Huncho Jack, Jack Huncho/10 Moon Rock.mp3", "Huncho Jack: 10 - Moon Rock", moonrocknum);
        lastplayed = new sortnum("Huncho Jack: 10 - Moon Rock", moonrocknum, "/Huncho Jack, Jack Huncho/10 Moon Rock.mp3", "moonrock");
        pause = false;
      }
      if (isClicked(h11)) {
        howufeelnum++;
        fileWrite("howufeel", "/Huncho Jack, Jack Huncho/11 How U Feel.mp3", "Huncho Jack: 11 - How U Feel", howufeelnum);
        lastplayed = new sortnum("Huncho Jack: 11 - How U Feel", howufeelnum, "/Huncho Jack, Jack Huncho/11 How U Feel.mp3", "howufeel");
        pause = false;
      }
      if (isClicked(h12)) {
        whereufromnum++;
        fileWrite("whereufrom", "/Huncho Jack, Jack Huncho/12 Where U From.mp3", "Huncho Jack: 12 - Where U From", whereufromnum);
        lastplayed = new sortnum("Huncho Jack: 12 Where U From", whereufromnum, "/Huncho Jack, Jack Huncho/12 Where U From.mp3", "whereufrom");
        pause = false;
      }
      if (isClicked(h13)) {
        bestmannum++;
        fileWrite("bestman", "/Huncho Jack, Jack Huncho/13 Best Man.mp3", "Huncho Jack: 13 - Best Man", bestmannum);
        lastplayed = new sortnum("Huncho Jack: 13 - Best Man", bestmannum, "/Huncho Jack, Jack Huncho/13 Best Man.mp3", "bestman");
        pause = false;
      }
    } else if (screen == 9) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(u1)) {
        thirtyfivehundredognum++;
        fileWrite("350og", "/Unreleased/3500 OG.mp3", "Unreleased: 3500 (OG)", thirtyfivehundredognum);
        lastplayed = new sortnum("Unreleased: 3500 (OG)", thirtyfivehundredognum, "/Unreleased/3500 OG.mp3", "350og");
        pause = false;
      }
      if (isClicked(u2)) {
        nineotwooneoognum++;
        fileWrite("9021og", "/Unreleased/90210 OG.mp3", "Unreleased: 90210 (OG)", nineotwooneoognum);
        lastplayed = new sortnum("Unreleased: 90210 (OG)", nineotwooneoognum, "/Unreleased/90210 OG.mp3", "9021og");
        pause = false;
      }
      if (isClicked(u3)) {
        antidotemdnum++;
        fileWrite("antidotmikedean", "/Unreleased/Antidote Mike Dean.mp3", "Unreleased: Antidote (Mike Dean)", antidotemdnum);
        lastplayed = new sortnum("Unreleased: Antidote (Mike Dean)", antidotemdnum, "/Unreleased/Antidote Mike Dean.mp3", "antidotmikedean");
        pause = false;
      }
      if (isClicked(u4)) {
        greydemonum++;
        fileWrite("gredemo", "/Unreleased/Grey Demo.mp3", "Unreleased: Grey (Demo)", greydemonum);
        lastplayed = new sortnum("Unreleased: Grey (Demo)", greydemonum, "/Unreleased/Grey Demo.mp3", "gredemo");
        pause = false;
      }
      if (isClicked(u5)) {
        highestintheroomdemonum++;
        fileWrite("highestintheroodemo", "/Unreleased/Highest In The Room Demo.mp3", "Highest In The Room (Demo)", highestintheroomdemonum);
        lastplayed = new sortnum("Highest In The Room (Demo)", highestintheroomdemonum, "/Unreleased/Highest In The Room Demo.mp3", "highestintheroodemo");
        pause = false;
      }
      if (isClicked(u6)) {
        mariaimdrunkognum++;
        fileWrite("mariaimdrunog", "/Unreleased/Maria I'm Drunk OG.mp3", "Unreleased: Maria I'm Drunk (OG)", mariaimdrunkognum);
        lastplayed = new sortnum("Unreleased: Maria I'm Drunk (OG)", mariaimdrunkognum, "/Unreleased/Maria I'm Drunk OG.mp3", "mariaimdrunog");
        pause = false;
      }
      if (isClicked(u7)) {
        nevercatchmeognum++;
        fileWrite("nevercatchmog", "/Unreleased/Never Catch Me OG.mp3", "Unreleased: Never Catch Me (OG)", nevercatchmeognum);
        lastplayed = new sortnum("Unreleased: Never Catch Me (OG)", nevercatchmeognum, "/Unreleased/Never Catch Me OG.mp3", "nevercatchmog");
        pause = false;
      }
      if (isClicked(u8)) {
        nightcrawlerognum++;
        fileWrite("nightcrawleog", "/Unreleased/Nightcrawler OG.mp3", "Unreleased: Nightcrawler (OG)", nightcrawlerognum);
        lastplayed = new sortnum("Unreleased: Nightcrawler (OG)", nightcrawlerognum, "/Unreleased/Nightcrawler OG.mp3", "nightcrawleog");
        pause = false;
      }
      if (isClicked(u9)) {
        nobystandersognum++;
        fileWrite("nobystanderog", "/Unreleased/No Bystanders OG.mp3", "Unreleased: No Bystanders (OG)", nobystandersognum);
        lastplayed = new sortnum("Unreleased: No Bystanders (OG)", nobystandersognum, "/Unreleased/No Bystanders (OG).mp3", "nobystanderog");
        pause = false;
      }
      if (isClicked(u10)) {
        ohmydissideognum++;
        fileWrite("ohmydissidog", "/Unreleased/Oh My Dis Side OG.mp3", "Unreleased: Oh My Dis Side (OG)", ohmydissideognum);
        lastplayed = new sortnum("Unreleased: Oh My Dis Side (OG)", ohmydissideognum, "/Unreleased/Oh My Dis Side OG.mp3", "ohmydissidog");
        pause = false;
      }
      if (isClicked(u11)) {
        pickupthephonemdnum++;
        fileWrite("pickupthephonmikedean", "/Unreleased/Pick Up The Phone Mike Dean.mp3", "Unreleased: Pick Up The Phone (Mike Dean)", pickupthephonemdnum);
        lastplayed = new sortnum("Unreleased: Pick Up The Phone (Mike Dean)", pickupthephonemdnum, "/Unreleased/Pick Up The Phone Mike Dean.mp3", "pickupthephonmikedean");
        pause = false;
      }
      if (isClicked(u12)) {
        ographyognum++;
        fileWrite("****ographog", "/Unreleased/Pornography OG.mp3", "Unreleased: ****ography (OG)", ographyognum);
        lastplayed = new sortnum("Unreleased: ****ography (OG)", ographyognum, "/Unreleased/Pornography OG.mp3", "****ographog");
        pause = false;
      }
      if (isClicked(u13)) {
        skeletonsmdnum++;
        fileWrite("skeletonmikedean", "/Unreleased/Skeletons Mike Dean.mp3", "Unreleased: Skeletons (Mike Dean)", skeletonsmdnum);
        lastplayed = new sortnum("Unreleased: Skeletons (Mike Dean)", skeletonsmdnum, "/Unreleased/Skeletons Mike Dean.mp3", "skeletonmikedean");
        pause = false;
      }
      if (isClicked(u14)) {
        theendsognum++;
        fileWrite("theendog", "/Unreleased/The Ends OG.mp3", "Unreleased: The Ends (OG)", theendsognum);
        lastplayed = new sortnum("Unreleased: The Ends (OG)", theendsognum, "/Unreleased/The Ends (OG).mp3", "theendog");
        pause = false;
      }
      if (isClicked(u15)) {
        ttlnognum++;
        fileWrite("ttlog", "/Unreleased/Through The Late Night OG.mp3", "Unreleased: Through The Late Night (OG)", ttlnognum);
        lastplayed = new sortnum("Unreleased: Through The Late Night (OG)", ttlnognum, "/Unreleased/Through The Late Night OG.mp3", "ttlog");
        pause = false;
      }
      if (isClicked(u16)) {
        upperechelonmdnum++;
        fileWrite("upperechelomd", "/Unreleased/Upper Echelon Mike Dean.mp3", "Unreleased: Upper Echelon (Mike Dean)", upperechelonmdnum);
        lastplayed = new sortnum("Unreleased: Upper Echelon (Mike Dean)", upperechelonmdnum, "/Unreleased/Upper Echelon Mike Dean.mp3", "upperechelomd");
        pause = false;
      }
      if (isClicked(u17)) {
        waybackmdnum++;
        fileWrite("waybacmikedean", "/Unreleased/Way Back Mike Dean.mp3", "Unreleased: Way Back (Mike Dean)", waybackmdnum);
        lastplayed = new sortnum("Unreleased: Way Back (Mike Dean)", waybackmdnum, "/Unreleased/Way Back Mike Dean.mp3", "waybacmikedean");
        pause = false;
      }
      if (isClicked(u18)) {
        sweetsweetmdnum++;
        fileWrite("sweetsweemikedean", "/Unreleased/Sweet Sweet Mike Dean.mp3", "Unreleased: Sweet Sweet (Mike Dean)", sweetsweetmdnum);
        lastplayed = new sortnum("Unreleased: Sweet Sweet (Mike Dean)", sweetsweetmdnum, "/Unreleased/Sweet Sweet Mike Dean.mp3", "sweetsweemikedean");
        pause = false;
      }
      if (isClicked(u19)) {
        wonderfulognum++;
        fileWrite("wonderfuog", "/Unreleased/Wonderful OG.mp3", "Unreleased: Wonderful (OG)", wonderfulognum);
        lastplayed = new sortnum("Unreleased: Wonderful (OG)", wonderfulognum, "/Unreleased/Wonderful OG.mp3", "wonderfuog");
        pause = false;
      }
      if (isClicked(u20)) {
        antidotebonusnum++;
        fileWrite("antidotbonus", "/Unreleased/Antidote (Bonus).mp3", "Unreleased: Antidote (Bonus)", antidotebonusnum);
        lastplayed = new sortnum("Unreleased: Antidote (Bonus)", antidotebonusnum, "/Unreleased/Antidote (Bonus).mp3", "antidotbonus");
        pause = false;
      }
      if (isClicked(u21)) {
        pullupnum++;
        fileWrite("pullup", "/Unreleased/Pull Up.mp3", "Unreleased: Pull Up", pullupnum);
        lastplayed = new sortnum("Unreleased: Pull Up", pullupnum, "/Unreleased/Pull Up.mp3", "pullup");
        pause = false;
      }
    } else if (screen == 10) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(s2)) {
        ateamnum++;
        fileWrite("ateam", "/Singles and Features/A-Team.mp3", "Singles & Features: A-Team", ateamnum);
        lastplayed = new sortnum("Singles & Features: A-Team", ateamnum, "/Singles and Features/A-Team.mp3", "ateam");
        pause = false;
      }
      if (isClicked(s3)) {
        darkknightdummonum++;
        fileWrite("darkknightdummo", "/Singles and Features/Dark Knight Dummo.mp3", "Singles & Features: Dark Knight Dummo", darkknightdummonum);
        lastplayed = new sortnum("Singles & Features: Dark Knight Dummo", darkknightdummonum, "/Singles and Features/Dark Knight Dummo.mp3", "darkknightdummo");
        pause = false;
      }
      if (isClicked(s1)) {
        highestintheroomnum++;
        fileWrite("highestintheroom", "/Singles and Features/Highest In The Room.mp3", "Singles: Highest In The Room", highestintheroomnum);
        lastplayed = new sortnum("Singles: Highest In The Room", highestintheroomnum, "/Singles and Features/Highest In The Room.mp3", "highestintheroom");
        pause = false;
      }
      if (isClicked(s4)) {
        hotremixnum++;
        fileWrite("hotremix", "/Singles and Features/Hot (Remix).mp3", "Singles & Features: Hot (Remix)", hotremixnum);
        lastplayed = new sortnum("Singles & Features: Hot (Remix)", hotremixnum, "/Singles and Features/Hot (Remix).mp3", "hotremix");
        pause = false;
      }
      if (isClicked(s5)) {
        watchnum++;
        fileWrite("watch", "/Singles and Features/Watch.mp3", "Singles & Features: Watch", watchnum);
        lastplayed = new sortnum("Singles & Features: Watch", watchnum, "/Singles and Features/Watch.mp3", "watch");
        pause = false;
      }
      if (isClicked(s6)) {
        portlandnum++;
        fileWrite("portland", "/Singles and Features/Portland.mp3", "Singles & Features: Portland", portlandnum);
        lastplayed = new sortnum("Singles & Features: Portland", portlandnum, "/Singles and Features/Portland.mp3", "portland");
        pause = false;
      }
      if (isClicked(s7)) {
        antisocialnum++;
        fileWrite("antisocial", "/Singles and Features/Antisocial.mp3", "Singles & Features: Antisocial", antisocialnum);
        lastplayed = new sortnum("Singles & Features: Antisocial", antisocialnum, "/Singles and Features/Antisocial.mp3", "antisocial");
        pause = false;
      }
      if (isClicked(s8)) {
        wholelottalovinnum++;
        fileWrite("wholelottalovin", "/Singles and Features/Whole Lotta Lovin.mp3", "Singles & Features: Whole Lotta Lovin", wholelottalovinnum);
        lastplayed = new sortnum("Singles & Features: Whole Lotta Lovin", wholelottalovinnum, "/Singles and Features/Whole Lotta Lovin.mp3", "wholelottalovin");
        pause = false;
      }
      if (isClicked(s9)) {
        legacynum++;
        fileWrite("legacy", "/Singles and Features/Legacy.mp3", "Singles & Features: Legacy", legacynum);
        lastplayed = new sortnum("Singles & Features: Legacy", legacynum, "/Singles and Features/Legacy.mp3", "legacy");
        pause = false;
      }
      if (isClicked(s10)) {
        championsnum++;
        fileWrite("champions", "/Singles and Features/Champions.mp3", "Singles & Features: Champions", championsnum);
        lastplayed = new sortnum("Singles & Features: Champions", championsnum, "/Singles and Features/Champions.mp3", "champions");
        pause = false;
      }
      if (isClicked(s11)) {
        skywalkernum++;
        fileWrite("skywalker", "/Singles and Features/Skywalker.mp3", "Singles & Features: Skywalker", skywalkernum);
        lastplayed = new sortnum("Singles & Features: Skywalker", skywalkernum, "/Singles and Features/Skywalker.mp3", "skywalker");
        pause = false;
      }
      if (isClicked(s12)) {
        zezenum++;
        fileWrite("zeze", "/Singles and Features/Zeze.mp3", "Singles & Features: ZEZE", zezenum);
        lastplayed = new sortnum("Singles & Features: ZEZE", zezenum, "/Singles and Features/Zeze.mp3", "zeze");
        pause = false;
      }
      if (isClicked(s13)) {
        dangerousworldnum++;
        fileWrite("dangerousworld", "/Singles and Features/Dangerous World.mp3", "Singles & Features: Dangerous World", dangerousworldnum);
        lastplayed = new sortnum("Singles & Features: Dangerous World", dangerousworldnum, "/Singles and Features/Dangerous World.mp3", "dangerousworld");
        pause = false;
      }
      if (isClicked(s14)) {
        companynum++;
        fileWrite("company", "/Singles and Features/Company.mp3", "Singles & Features: Company", companynum);
        lastplayed = new sortnum("Singles & Features: Company", companynum, "/Singles and Features/Company.mp3", "company");
        pause = false;
      }
      if (isClicked(s15)) {
        ghostfacekillersnum++;
        fileWrite("ghostfacekillers", "/Singles and Features/Ghostface Killers.mp3", "Singles & Features: Ghostface Killers", ghostfacekillersnum);
        lastplayed = new sortnum("Singles & Features: Ghostface Killers", ghostfacekillersnum, "/Singles and Features/Ghostface Killers.mp3", "ghostfacekillers");
        pause = false;
      }
      if (isClicked(s16)) {
        outforthenightpt2num++;
        fileWrite("outforthenightpt2", "/Singles and Features/Out For The Night Pt.2.mp3", "Singles & Features: Out For The Night", outforthenightpt2num);
        lastplayed = new sortnum("Singles & Features: Out For The Night", outforthenightpt2num, "/Singles and Features/Out For The Night Pt.2.mp3", "outforthenightpt2");
        pause = false;
      }
    } else if (screen == 14) {
      if (mouseX > width / 2.666666 && mouseX < width / 1.06963788 && mouseY > height / 1.56521739 && mouseY < height / 1.52112676) {
        position = int(map(mouseX, width / 2.666666, width / 1.06963788, 0, player.length()));
        player.cue(position);
      }
      buttonisClicked(backbutton, 2);
      if (isClicked(j1)) {
        highestintheroomremixnum++;
        fileWrite("highestremix", "/Jackboys/01 HIGHEST IN THE ROOM (REMIX).mp3", "JACKBOYS: HIGHEST IN THE ROOM", highestintheroomremixnum);
        lastplayed = new sortnum("JACKBOYS: 1 - HIGHEST IN THE ROOM", highestintheroomremixnum, "/Jackboys/01 HIGHEST IN THE ROOM (REMIX).mp3", "highestremix");
        pause = false;
      }
      if (isClicked(j2)) {
        intronum++;
        fileWrite("intro", "/Jackboys/02 INTRO.mp3", "JACKBOYS: 2 - INTRO", intronum);
        lastplayed = new sortnum("JACKBOYS: 2 - INTRO", intronum, "/Jackboys/02 INTRO.mp3", "intro");
        pause = false;
      }
      if (isClicked(j3)) {
        ganggangnum++;
        fileWrite("ganggang", "/Jackboys/03 GANG GANG.mp3", "JACKBOYS: 3 - GANG GANG", ganggangnum);
        lastplayed = new sortnum("JACKBOYS: 3 - GANG GANG", ganggangnum, "/Jackboys/03 GANG GANG.mp3", "ganggang");
        pause = false;
      }
      if (isClicked(j4)) {
        hadenoughnum++;
        fileWrite("hadenough", "/Jackboys/04 HAD ENOUGH.mp3", "JACKBOYS: 4 - HAD ENOUGH", hadenoughnum);
        lastplayed = new sortnum("JACKBOYS: 4 - HAD ENOUGH", hadenoughnum, "/Jackboys/04 HAD ENOUGH.mp3", "hadenough");
        pause = false;
      }
      if (isClicked(j5)) {
        outwestnum++;
        fileWrite("outwest", "/Jackboys/05 OUT WEST.mp3", "JACKBOYS: 5 - OUT WEST", outwestnum);
        lastplayed = new sortnum("JACKBOYS: 5 - OUT WEST", outwestnum, "/Jackboys/05 OUT WEST.mp3", "outwest");
        pause = false;
      }
      if (isClicked(j6)) {
        whattodonum++;
        fileWrite("whattodo", "/Jackboys/06 WHAT TO DO.mp3", "JACKBOYS: 6 - WHAT TO DO", whattodonum);
        lastplayed = new sortnum("JACKBOYS: 6 - WHAT TO DO", whattodonum, "/Jackboys/06 WHAT TO DO.mp3", "whattodo");
        pause = false;
      }
      if (isClicked(j7)) {
        gattinum++;
        fileWrite("gatti", "/Jackboys/07 GATTI.mp3", "JACKBOYS: 7 - GATTI", gattinum);
        lastplayed = new sortnum("JACKBOYS: 7 - GATTI", gattinum, "/Jackboys/07 GATTI.mp3", "gatti");
        pause = false;
      }
    } else if (screen == 11) {
      if (isClicked(backbutton)) pagenum = 1;
      buttonisClicked(backbutton, 2);
      if (isClicked(l1)) {
        if (player.isPlaying()) {
          player.pause();
        }
        rodeo.play();
        playing = true;
        nowplaying.text = "Rodeo Live";
      }
    } else if (screen == 12) {
      if (isClicked(backbutton) && miniscreen == 0) {
        screen = 1;
      } else if (isClicked(backbutton) && miniscreen == 1) {
        miniscreen = 0;
      } else if (isClicked(backbutton) && miniscreen == 2) {
        miniscreen = 0;
      } else if (isClicked(backbutton) && miniscreen == 3) {
        miniscreen = 0;
      } else if (isClicked(start) && miniscreen == 0) {
        gameload = 1;
        miniscreen = 1;
      } else if (isClicked(restart) && miniscreen == 2) {
        gameload = 1;
        miniscreen = 1;
      } else if (isClicked(menu2) && miniscreen == 2) {
        miniscreen = 0;
      } else if (isClicked(charselect) && miniscreen == 0) {
        miniscreen = 3;
      } else if (isClicked(menu) && miniscreen == 3) {
        miniscreen = 0;
      } else if (imageisClicked(travischain) && miniscreen == 3) {
        character2 = false;
      } else if (imageisClicked(travisrose) && miniscreen == 3) {
        character2 = true;
      }
    } else if (screen == 13) {
      buttonisClicked(backbutton, 1);
      if (isClicked(lightmodebutton) && lightmode == false) {
        lightmode = true;
      } else if (isClicked(lightmodebutton) && lightmode == true) {
        lightmode = false;
      }

      if (isClicked(lowpowermodebutton) && lowpowermode == false) {
        lowpowermode = true;
      } else if (isClicked(lowpowermodebutton) && lowpowermode == true) {
        lowpowermode = false;
      }
      if (isClicked(resetbutton)) {
        reset = true;
      }

      if (reset == true) {
        if (isClicked(no)) {
          reset = false;
        }
        if (isClicked(yes)) {
          lightmode = false;
          lowpowermode = false;
          character2 = false;
          gamescore = 0;
          String codeword = "highscore";
          String [] temp3 = loadStrings("high_score.txt");
          for (int i = 0; i < temp3.length; i++) {
            String tobesearched = temp3[i];
            int index1 = tobesearched.indexOf(codeword);
            if (index1 >= 0) {
              high_score.remove(i);
            }
          }
          String temp1 = "highscore" + " " + gamescore;
          high_score.add(temp1);
          String[] temp2 = new String[high_score.size()];
          for (int i = 0; i < high_score.size(); i++) {
            temp2[i] = high_score.get(i);
          }
          saveStrings("high_score.txt", temp2);
          stargazingnum = 0;
          fileWipe("stargazing", stargazingnum);
          carouselnum = 0;
          fileWipe("carousel", carouselnum);
          sickomodenum = 0;
          fileWipe("sickomode", sickomodenum);
          ripscrewnum = 0;
          fileWipe("ripscrew", ripscrewnum);
          sttbgnum = 0;
          fileWipe("sttbg", sttbgnum);
          nobystandersnum = 0;
          fileWipe("nobystanders", nobystandersnum);
          skeletonsnum = 0;
          fileWipe("skeletons", skeletonsnum);
          wakeupnum = 0;
          fileWipe("wakeup", wakeupnum);
          fivetintnum = 0;
          fileWipe("5tint", fivetintnum);
          nc17num = 0;
          fileWipe("nc17", nc17num);
          astrothundernum = 0;
          fileWipe("astrothunder", astrothundernum);
          yosemitenum = 0;
          fileWipe("yosemite", yosemitenum);
          cantsaynum = 0;
          fileWipe("cantsay", cantsaynum);
          whowhatnum = 0;
          fileWipe("whowhat", whowhatnum);
          butterflyeffectnum = 0;
          fileWipe("butterflyeffect", butterflyeffectnum);
          houstonfornicationnum = 0;
          fileWipe("houstonfornication", houstonfornicationnum);
          coffeebeannum = 0;
          fileWipe("coffeebean", coffeebeannum);
          theendsnum = 0;
          fileWipe("theends", theendsnum);
          waybacknum = 0;
          fileWipe("wayback", waybacknum);
          coordinatenum = 0;
          fileWipe("coodinate", coordinatenum);
          ttlnnum = 0;
          fileWipe("ttln", ttlnnum);
          beibsnum = 0;
          fileWipe("beibsinthetrap", beibsnum);
          sdpinterludenum = 0;
          fileWipe("sdpinterlude", sdpinterludenum); 
          sweetsweetnum = 0;
          fileWipe("sweetsweet", sweetsweetnum);
          outsidenum = 0;
          fileWipe("outside", outsidenum); 
          goosebumpsnum = 0;
          fileWipe("goosebumps", goosebumpsnum);
          firsttakenum = 0;
          fileWipe("firsttake", firsttakenum);
          pickupthephonenum = 0;
          fileWipe("pickupthephone", pickupthephonenum);
          losenum = 0;
          fileWipe("lose", losenum);
          guidancenum = 0;
          fileWipe("guidance", guidancenum);
          wonderfulnum = 0;
          fileWipe("wonderful", wonderfulnum);
          ographynum = 0;
          fileWipe("****ography", ographynum);
          ohmydissidenum = 0;
          fileWipe("ohmydisside", ohmydissidenum);
          thirtyfivehundrednum = 0;
          fileWipe("3500", thirtyfivehundrednum);
          wastednum = 0;
          fileWipe("wasted", wastednum);
          nineotwooneonum = 0;
          fileWipe("90210", nineotwooneonum);
          prayforlovenum = 0;
          fileWipe("pray4love", prayforlovenum);
          nightcrawlernum = 0;
          fileWipe("nightcrawler", nightcrawlernum); 
          pissonyourgravenum = 0;
          fileWipe("pissonyourgrave", pissonyourgravenum);
          antidotenum = 0;
          fileWipe("antidote", antidotenum);
          impossiblenum = 0;
          fileWipe("impossible", impossiblenum);
          mariaimdrunknum = 0;
          fileWipe("mariaimdrunk", mariaimdrunknum);
          flyinghighnum = 0;
          fileWipe("flyinghigh", flyinghighnum);
          icantellnum = 0;
          fileWipe("icantell", icantellnum);
          applepienum = 0;
          fileWipe("applepie", applepienum);
          okalrightnum = 0;
          fileWipe("okalright", okalrightnum);
          nevercatchmenum = 0;
          fileWipe("nevercatchme", nevercatchmenum);
          theprayernum = 0;
          fileWipe("theprayer", theprayernum);
          mamacitanum = 0;
          fileWipe("mamacita", mamacitanum);
          quintana2num = 0;
          fileWipe("quintana2", quintana2num);
          drugsyoushouldtryitnum = 0;
          fileWipe("drugsyoushouldtryit", drugsyoushouldtryitnum);
          dontplaynum = 0;
          fileWipe("dontplay", dontplaynum);
          skyfallnum = 0;
          fileWipe("skyfall", skyfallnum);
          zombiesnum = 0;
          fileWipe("zombies", zombiesnum);
          sloppytoppynum = 0;
          fileWipe("sloppytoppy", sloppytoppynum);
          basementfreestylenum = 0;
          fileWipe("basementfreestyle", basementfreestylenum);
          backyardnum = 0;
          fileWipe("backyard", backyardnum);
          greynum = 0;
          fileWipe("grey", greynum);
          baccnum = 0;
          fileWipe("bacc", baccnum);
          meadowcreeknum = 0;
          fileWipe("meadowcreek", meadowcreeknum);
          badmoodshitonyounum = 0;
          fileWipe("badmoodshitonyou", badmoodshitonyounum);
          upperechelonnum = 0;
          fileWipe("upperechelon", upperechelonnum);
          chazinterludenum = 0;
          fileWipe("chazinterlude", chazinterludenum);
          uptownnum = 0;
          fileWipe("uptown", uptownnum);
          hellofanightnum = 0;
          fileWipe("hellofanight", hellofanightnum); 
          blockalaflamenum = 0;
          fileWipe("blockalaflame", blockalaflamenum);
          nakednum = 0;
          fileWipe("naked", nakednum);
          danceonthemoonnum = 0;
          fileWipe("uptown", danceonthemoonnum);
          mianum = 0;
          fileWipe("mia", mianum);
          drivenum = 0;
          fileWipe("drive", drivenum);
          quintananum = 0;
          fileWipe("quintana", quintananum);
          bandznum = 0;
          fileWipe("bandz", bandznum);
          modernslaverynum = 0;
          fileWipe("modernslavery", modernslaverynum);
          blackandchinesenum = 0;
          fileWipe("blackandchinese", blackandchinesenum);
          eyetoeyenum = 0;
          fileWipe("eyetoeye", eyetoeyenum);
          motorcyclepatchesnum = 0;
          fileWipe("motorcyclepatches", motorcyclepatchesnum);
          hunchojacknum = 0;
          fileWipe("hunchojack", hunchojacknum);
          saintnum = 0;
          fileWipe("saint", saintnum);
          gonum = 0;
          fileWipe("go", gonum);
          dubaishitnum = 0;
          fileWipe("dubaishit", dubaishitnum);
          saintlaurentmasknum = 0;
          fileWipe("saintlaurentmask", saintlaurentmasknum);
          moonrocknum = 0;
          fileWipe("moonrock", moonrocknum);
          howufeelnum = 0;
          fileWipe("howufeel", howufeelnum);
          whereufromnum = 0;
          fileWipe("whereufrom", whereufromnum);
          bestmannum = 0;
          fileWipe("bestman", bestmannum);
          thirtyfivehundredognum = 0;
          fileWipe("3500og", thirtyfivehundredognum);
          nineotwooneoognum = 0;
          fileWipe("90210og", nineotwooneoognum);
          antidotemdnum = 0;
          fileWipe("antidotemikedean", antidotemdnum);
          greydemonum = 0;
          fileWipe("greydemo", greydemonum);
          baccnum = 0;
          fileWipe("bacc", baccnum);
          meadowcreeknum = 0;
          fileWipe("meadowcreek", meadowcreeknum);
          badmoodshitonyounum = 0;
          fileWipe("badmoodshitonyou", badmoodshitonyounum);
          upperechelonnum = 0;
          fileWipe("upperechelon", upperechelonnum);
          chazinterludenum = 0;
          fileWipe("chazinterlude", chazinterludenum);
          uptownnum = 0;
          fileWipe("uptown", uptownnum); 
          hellofanightnum = 0;
          fileWipe("hellofanight", hellofanightnum);
          blockalaflamenum = 0;
          fileWipe("blockalaflame", blockalaflamenum);
          nakednum = 0;
          fileWipe("naked", nakednum);
          danceonthemoonnum = 0;
          fileWipe("uptown", danceonthemoonnum);
          mianum = 0;
          fileWipe("mia", mianum);
          drivenum = 0;
          fileWipe("drive", drivenum);
          quintananum = 0;
          fileWipe("quintana", quintananum);
          bandznum = 0;
          fileWipe("bandz", bandznum);
          modernslaverynum = 0;
          fileWipe("modernslavery", modernslaverynum);
          blackandchinesenum = 0;
          fileWipe("blackandchinese", blackandchinesenum);
          eyetoeyenum = 0;
          fileWipe("eyetoeye", eyetoeyenum);
          motorcyclepatchesnum = 0;
          fileWipe("motorcyclepatches", motorcyclepatchesnum);
          hunchojacknum = 0;
          fileWipe("hunchojack", hunchojacknum);
          saintnum = 0;
          fileWipe("saint", saintnum);
          gonum = 0;
          fileWipe("go", gonum);
          dubaishitnum = 0;
          fileWipe("dubaishit", dubaishitnum);
          saintlaurentmasknum = 0;
          fileWipe("saintlaurentmask", saintlaurentmasknum);
          moonrocknum = 0;
          fileWipe("moonrock", moonrocknum);
          howufeelnum = 0;
          fileWipe("howufeel", howufeelnum);
          whereufromnum = 0;
          fileWipe("whereufrom", whereufromnum);
          bestmannum = 0;
          fileWipe("bestman", bestmannum);
          thirtyfivehundredognum = 0;
          fileWipe("350og", thirtyfivehundredognum);
          nineotwooneoognum = 0;
          fileWipe("9021og", nineotwooneoognum);
          antidotemdnum = 0;
          fileWipe("antidotmikedean", antidotemdnum);
          greydemonum = 0;
          fileWipe("gredemo", greydemonum);
          highestintheroomdemonum = 0;
          fileWipe("highestintheroodemo", highestintheroomdemonum);
          mariaimdrunkognum = 0;
          fileWipe("mariaimdrunog", mariaimdrunkognum);
          nevercatchmeognum = 0;
          fileWipe("nevercatchmog", nevercatchmeognum);
          nightcrawlerognum = 0;
          fileWipe("nightcrawleog", nightcrawlerognum);
          nobystandersognum = 0;
          fileWipe("nobystanderog", nobystandersognum);
          ohmydissideognum = 0;
          fileWipe("ohmydissidog", ohmydissideognum);
          pickupthephonemdnum = 0;
          fileWipe("pickupthephonmikedean", pickupthephonemdnum);
          ographyognum = 0;
          fileWipe("****ographog", ographyognum);
          skeletonsmdnum = 0;
          fileWipe("skeletonmikedean", skeletonsmdnum);
          theendsognum = 0;
          fileWipe("theendog", theendsognum);
          ttlnognum = 0;
          fileWipe("ttlog", ttlnognum);
          upperechelonmdnum = 0;
          fileWipe("upperechelomd", upperechelonmdnum);
          waybackmdnum = 0;
          fileWipe("waybacmikedean", waybackmdnum);
          sweetsweetmdnum = 0;
          fileWipe("sweetsweemikedean", sweetsweetmdnum);
          wonderfulognum = 0;
          fileWipe("wonderfuog", wonderfulognum);
          antidotebonusnum = 0;
          fileWipe("antidotbonus", antidotebonusnum);
          pullupnum = 0;
          fileWipe("pullup", pullupnum);
          ateamnum = 0;
          fileWipe("ateam", ateamnum);
          darkknightdummonum = 0;
          fileWipe("darkknightdummo", darkknightdummonum);
          highestintheroomnum = 0;
          fileWipe("highestintheroom", highestintheroomnum);
          hotremixnum = 0;
          fileWipe("hotremix", hotremixnum);
          watchnum = 0;
          fileWipe("watch", watchnum);
          portlandnum = 0;
          fileWipe("portland", portlandnum);
          antisocialnum = 0;
          fileWipe("antisocial", antisocialnum);
          wholelottalovinnum = 0;
          fileWipe("wholelottalovin", wholelottalovinnum);
          legacynum = 0;
          fileWipe("legacy", legacynum);
          championsnum = 0;
          fileWipe("champions", championsnum);
          skywalkernum = 0;
          fileWipe("skywalker", skywalkernum);
          zezenum = 0;
          fileWipe("zeze", zezenum);
          dangerousworldnum = 0;
          fileWipe("dangerousworld", dangerousworldnum);
          companynum = 0;
          fileWipe("company", companynum);
          ghostfacekillersnum = 0;
          fileWipe("ghostfacekillers", ghostfacekillersnum);
          outforthenightpt2num = 0;
          fileWipe("outforthenightpt2", outforthenightpt2num);
          highestintheroomremixnum = 0;
          fileWipe("highestremix", highestintheroomremixnum);
          intronum = 0;
          fileWipe("intro", intronum);
          ganggangnum = 0;
          fileWipe("ganggang", ganggangnum);
          hadenoughnum = 0;
          fileWipe("hadenough", hadenoughnum);
          outwestnum = 0;
          fileWipe("outwest", outwestnum);
          whattodonum = 0;
          fileWipe("whattodo", whattodonum);
          gattinum = 0;
          fileWipe("gatti", gattinum);
        }
      }
    }
  }
}
