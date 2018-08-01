import  processing.serial.*;
import controlP5.*;

ControlP5 cp5;

int pan=10;
int tilt=10;
int test=10;

Serial port;

void setup()
{
  size(500,200);
  noStroke();
  port=new Serial(this, Serial.list()[0], 115200);
  
  cp5= new ControlP5(this);
  
  cp5.addSlider("pan") //b
    .setPosition(50,20)
    .setSize(300,30)
    .setRange(0,180)
    .setValue(158)
    ;
    
  cp5.addSlider("tilt") //c
    .setPosition(50,70)
    .setSize(300,30)
    .setRange(0,180)
    .setValue(158)
    ;
    
  cp5.addSlider("test")  //a
    .setPosition(50,130)
    .setSize(300,30)
    .setRange(0,180)
    .setValue(158)
    ;
}

void draw()
{
  port.write(pan+"a");
  port.write(tilt+"b");
  port.write(test+"c");
}
