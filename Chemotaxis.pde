//need randomwalk for bubbles
int x;
int y;
int bX=((int)(Math.random()*8)-1);
int bY=((int)(Math.random()*8)-1);
int fishX=((int)(Math.random()*300));
int fishY=((int)(Math.random()*300));
Bubble [] newB= new Bubble [40];
boolean mouseClicked=false;
PImage img;
PImage img2;
PImage img3;

 void setup()   
 {     
 	//initialize bacteria variables here
 	size(300,300);
 	img=loadImage("diver.png");
 	img2=loadImage("background.png");
 	img3=loadImage("fish.png");
 	for (int i=0; i<newB.length;i++){
 		newB [i]=new Bubble();
 	}
 }   
 void draw()   
 {    
 	//move and show the bacteria
 	background(0,0,255);
 	image(img2,0,0);
 	image(img3,fishX,fishY);
 	fill(107,107,100);
 	noStroke();
 	ellipse(20,290,100,75);
 	ellipse(90,300,125,125);
 	ellipse(150,300,175,70);
 	ellipse(250,300,180,75);

 	if(mouseClicked=true){
 		newB[1].appear();

 	}
 	for(int i=0; i<newB.length;i++){
 		newB[i].rWalk();
 		newB[i].show();
 		newB[i].rWalkTo();

 	}   
 }  
 class Bubble
{
	int myX;
	int myY;
	Bubble(){
		myX=60;
		myY=60;
	}
	void rWalk(){
		if(myX<400 && myY<400){
			myX=myX+(int)(Math.random()*5)-1;
			myY=myY-(int)(Math.random()*5)-1;
		}
		else{
			myX=(int)(Math.random()*100)+1;
			myY=(int)(Math.random()*100)+1;
		}
	}
	void show(){
		stroke(40);
		fill(0,204,204);
		ellipse(myX+30,myY+60,10,10);
	}
void rWalkTo(){
	if (mouseClicked==true)
		myX=x+50+(int)(Math.random()*25)+10;
		myY=y-75+(int)(Math.random()*75);
}
     
 void appear(){
 		image(img,x+30,y+70);
 	}   
 }
 void mouseClicked(){
 	x=mouseX;
 	y=mouseY;
 	fishX=((int)(Math.random()*300));
	fishY=((int)Math.random()*300);
 	mouseClicked=true;
 }
