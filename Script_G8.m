a = arduino('com9','uno','libraries',{'ExampleLCD/LCDAddon','Servo'},'ForceBuildOn',true);
% The above line defines variable a to control the arduino and tells
% arduino to load LCD and servo libraries without any restrictions

s = servo(a,'D9') % Defining the servo pin
configurePin(a,'D8','pullup') %To configure the pin as input for ground.
configurePin(a,'D13','pullup')

lcd = addon(a,'ExampleLCD/LCDAddon','RegisterSelectPin','D12','EnablePin','D11','DataPins',{'D5','D4','D3','D2'});
%Defines the variable lcd to use the LCD
initializeLCD(lcd) %Initializes the LCD


slot = 13;
while 1  % for forever loop
    
    

i = readDigitalPin(a,'D8'); %Reads the digital pin
if slot > 0 


    
    if i == 0 

    slot = slot -1;
    writeDigitalPin(a,'D6',0) 
    writeDigitalPin(a,'D7',1)
    printLCD(lcd,'Welcome')
    printLCD(lcd,'')
    pause(0.1)
    writePosition(s, 0.5);
    pause(3)
    
    
    

                    
    
    else
    writePosition(s,0);
    writeDigitalPin(a,'D7',0)
    writeDigitalPin(a,'D6',1)
    printLCD(lcd,'Available Slot:')
    printLCD(lcd,num2str(slot))
    end

end


j = readDigitalPin(a,'D13');


    if slot < 14

    

    if j == 0 

    
    
    slot = slot + 1;
    writeDigitalPin(a,'D6',0)
    writeDigitalPin(a,'D7',1)
    printLCD(lcd,'Thank you!')
    printLCD(lcd,'')
    pause(0.1)
    writePosition(s, 0.5);
    pause(3)
   
    

    end
    if slot >= 13
        slot = 13
    end
    if slot <=0
        slot = 0
    end
    if slot == 0
    writeDigitalPin(a,'D7',0)
    writeDigitalPin(a,'D6',1)
    writePosition(s,0);
    printLCD(lcd,'Plz come later!')
    printLCD(lcd,'')
    pause(0.1)
    slot = 0   


    end
    
end 



pause(0.2)
end