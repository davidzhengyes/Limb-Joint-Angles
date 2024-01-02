/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:392428:
  appc.background(230);
} //_CODE_:window1:392428:

public void button2_click1(GButton source, GEvent event) { //_CODE_:button2:604831:
  if (button2.getText().equals("Start Record")){
    button2.setText("Stop Record");
    pw = createWriter("user.txt"); // to delete anything that was already in the file
    recordingUser=true;
    

  }
  else{
    button2.setText("Start Record");
    recordingUser=false;
    pw.close();
    userDemo = loadStrings("user.txt");


  }
} //_CODE_:button2:604831:

public void democlick(GButton source, GEvent event) { //_CODE_:demo:544722:
  democlick=true;
  
  frameWhenDemoClick=frameCount;
  
} //_CODE_:demo:544722:

public void button6_click1(GButton source, GEvent event) { //_CODE_:button6:994383:
  userClick=true;
  
  frameWhenUserClick=frameCount;
  
 
} //_CODE_:button6:994383:

public void textarea1_change1(GTextArea source, GEvent event) { //_CODE_:textarea1:867882:
  println("textarea1 - GTextArea >> GEvent." + event + " @ " + millis());
} //_CODE_:textarea1:867882:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 240, 300, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  button2 = new GButton(window1, 21, 22, 80, 30);
  button2.setText("Start Record");
  button2.addEventHandler(this, "button2_click1");
  demo = new GButton(window1, 72, 70, 80, 30);
  demo.setText("Demo");
  demo.addEventHandler(this, "democlick");
  button6 = new GButton(window1, 125, 21, 80, 30);
  button6.setText("Play Record");
  button6.addEventHandler(this, "button6_click1");
  textarea1 = new GTextArea(window1, 25, 140, 182, 82, G4P.SCROLLBARS_NONE);
  textarea1.setText("Click limbs to move, and joints to unlock them, use the top-left button to start and stop a recording, and demo for an example.");
  textarea1.setOpaque(true);
  textarea1.addEventHandler(this, "textarea1_change1");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton button2; 
GButton demo; 
GButton button6; 
GTextArea textarea1; 