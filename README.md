# Automatic-Parking-Management-System
Created an automatic parking system would allow cars on basis of available parking spots. Interfaced on the Arduino with help of LCD, breadboard and red, green led. System was programed in MATLAB deploying counter and Timer logic.

steps to implement:
First the Arduino add on needs to be intalled in the MATLAB which can be done using

Add-ons -> Get Add-Ons -> Search for arduino and install the "MATLAB SUPPORT PACKAGE FOR ARDUINO" add-on so that we can use Arduino with the MATLAB





To create a LCD Addon for Arduino in Matlab

We need to go to 
"C:\ProgramData\MATLAB\SupportPackages\R2021a\toolbox\matlab\hardware\supportpackages\arduinoio\arduinoioexamples\SDKExampleLCD\+arduinoioaddons\+ExampleLCD"


and copy the +ExampleLCD folder and paste it in the following folder:

"C:\ProgramData\MATLAB\SupportPackages\R2021a\toolbox\matlab\hardware\supportpackages\arduinoio\+arduinoioaddons"

NOTE: If you do not find 'ProgramData' folder in the C:\ Go to view in the taskbar of the file manager and mark the radio button of Hidden Items. 


After pasting this folder it will create the LCD library enabled for the MATLAB
