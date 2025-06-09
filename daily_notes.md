# Notes Daily

TODO -
Diagrams
Hardware List - with costs
AMA membership - https://www.modelaircraft.org/membership-options  
TrustTest - https://trust.modelaircraft.org/
Drone Registration - Done
Folder with my documentation:
AMA Membership - Done
TrustTest - Done
Drone ID - Done

# 9 June 2025

I feel much better about the progress now that I see servos moving. Getting the receiver and FC configured to talk to
each other seems to have solved the receiver getting hot problem. I still need to verify that the receiver has to be
turned on before the transmitter for the FC to properly listen to the Rx but if so, an easy part of the checklist.

I should be able to configure the channels for manual flight and do the work to mount the FC and other components to prep
for flight. I've ordered a GPS with compass ($17) and an airspeed sensor ($50) and some XT60 connectors ($10). My reading says 
airspeed and compass are key to flight autonomy, especially if I want to fly near stall speed.

Now my worry is flying well enough not to damage my airplane. Nearly every flying model I've built was retired in a crash!
The only ones that did not, were the ones I flew once or twice like my Folker DVIII - because it has to fly at least once.
So, now that I have the Taranis and see that it plugs into my Mac, and offers to be a joystick I think I will try the CRRC Sim
again with the Transmitter to get used to the sticks. I'm concerned with safe turn radius and bank angle and lining up
for landing.



Taranis making an annoying buzzing sound.

Needed to use OpenTX Companion to get Joystick recognized.   
_"pat6789.  
2y ago
MacBook Air M1, Taranis QX7 Access. Couldn't get the Mac to recognize it as a game controller. When I plugged it in with
USD (thought ANKER hub) a prompt would come up on Taranis screen for Joystick or mass storage selected joystick, that
didn't do it. Opened Open TX companion 2.3. Preferences menu, third page under Simulator settings There's a little box
Joystick Enable. Ticked that, now I'm playing Aerofly 9!"_

Had to restart CRRC Sim after using OpenTX to enable joystick - this was in the settings panel. Still need to configure
a bit to get the right channel and inversion mappings. Not clear if the model I have has ailerons. And, it would be good
to select an electric model. The Allegro E-Lite worked very nice. It took some config, but I think this will help prep
me for actually flying. I could either look for a Ranger 1600 model for CRRC Sim, or maybe just increase the wing
loading on the Allegro to get it to handle more like I expect the Ranger to fly. I could also try that pattern ship
which should be a faster. I wonder if I can put Ardupilot SITL into CRRC to get my own configurations and fly autopilot
and so on. I expect to have a flying plane soon, so I should look at the fields - maybe in QGroundControl and plot out
some initial flights, even just getting the trim right and landing.

The Mobula6 - I should be able to get video, and maybe configure for easy flight. It could be fun to fly inside?

# 8 June 2025
I've read a bunch, and tried a few things, and talked with Grok.
I think my receiver is not talking to my flight controller, and I'm struggling to configure that.
The receiver - is also getting hot to the touch - some say that might get resolved when it can talk 
to the FC.

The receiver - TBS Crossfire Nano Rx Pro (v3) - from TBS Agent Desktop
Firmware:
V 6.42
Hardware:
V 1.32
Bootloader:
V 2.05
Serial No:
022-263487
Hash:
7518df-X
Build date:
Nov 8 2024

I did see somewhere it say that the Transmitter should be powered on before the receiver.

The Rx is wired to FC T1 and R1 on F405 Mini Wing

https://ardupilot.org/plane/docs/common-speedybeef405wing.html#wiring-diagram. 

Success - Powered Transmitter on first.
And - maybe turned off telemetry. Will have to look at that.

Wyatt use the top left switch as Arm - away to the back disarm - switched forward, with throttle at zero 
is arm.

Receiver is not getting hot now.

Hm - also unplugger GPS...



Not Arming...

[15:03:56.841 ] Critical: PreArm: AHRS: waiting for home
[15:03:56.837 ] Critical: PreArm: Compass not healthy
[15:03:56.834 ] Critical: PreArm: AHRS: EKF3 Roll/Pitch inconsistent 83 deg. Wait or rebo


Ok it is pretty great - I have moving servos.

I feel like I need an airspeed sensor and a compass.
Also bought some XT60 connectors to use the other PDB on the FC stack if I like.

MS4525DO




# 5 June 2025
I wrecked the transmitter files. Probably with OpenTX Companion while trying to update a model.
Also, maybe the battery was too low. I charged the battery - it is slow, but at 8.2V now - we will see
if it holds a charge.

In looking to fix the files, I also see TBS may have their own firmware. 
https://team-blacksheep.freshdesk.com/support/solutions/articles/4000153333-crsf-shot-open-tx  

Can I just fix the Model?
OpenTX Firmware version 2.3.15-otx (1004ef7c). opentx-x7-en.bin

TODO - I could make a smaller card without the non-english sound files.

Should I go to EdgeTX?
https://oscarliang.com/edgetx-vs-opentx/. 

Will gave me his Mobula 6 - this is a tiny whoop.
https://blog.georgi-yanev.com/fpv/mobula6-48khz-jesc-complete-setup-review/.  

A bunch of errors to the card...

Putting in a new card.
How can I label the micro-SD Cards?

Copying the SD Card Content New and re-installing firmware.

At least the battery seems good.


# 3 June 2025
Success. We have the transmitter bound to the receiver - needed to configure the model for external RF - CRSF (Crossfire).
The new issue is that QGround Control is not seeing the radio channels.
Grok has some ideas.
But it may also be time to power up the plane and see if anything moves.
This is harder than configuring Wi-Fi in the early Linux days.  


# 31 May 2025
I updated the firmware on TBS TX and RX. I use thet TBS Desktop Agent.
It looks like the USB port on the Taranis might charge the LiIon 2S battery in place.
If not - I think I need a XT30 male connector to charge with the new connector.
https://www.amazon.com/QOFOWIN-Connector-Adapter-Banana-Battery


I bound the TBS receiver, but there is some confusion on QGroundControl, and the OpenTX Companion App.

Sad to see OpenTX not being supported anymore.

I think I now need a model file. To get the channels and everything set up.
Maybe that will help with the binding and QGroundControl.

channel one - left horizontal - rudder?
channel two - left vertical - throttle
channel three - right horizontal - aileron ( will have to be two servo )
channel four - right vertical - 
top left back switch - I think - ARM






# 28 May 2025


# 26 May 2025
Need a LiPo Charger - probably 2s to 4S.
https://www.amazon.com/Charger-Battery-Balance-Discharger-Adapter/dp/B07R18YNZQ
Ordered one with multi-chemistry support. $60


# 25 May 2025
The Ranger 1600 arrived. It went together pretty easy. I need to better understand the ESC and how I will wire up my system.
Should I use ESC to power the FC, or use the FC power distribution board to power the ESC?
TODO - two options diagram



I need a drawing program - here in PyCharm - Draw.io is nice. Omnichannel on my Mac is also nice.

What can I do to round trip diagrams with Grok? Not much really seems to be the answer right now.


AMA press release for higher ceilings at AMA fields. 700ft
granted at Davis, School St and Bill Martin

Big Deal - 700 ft allowance at Davis, School St and Bill Martin


## Weather Stations
Portable cheap wireless wind speed/direction - barometer/temperature
Would be great to set 4 of these up in a field. Should be able to count thermals.
Maybe get some stats on wind shear.

## Document organization
I'm still struggling with how to best take notes and organize this document.

I have the goals section - 
- Sim to practice - 
- Aircraft w/ blackbox that I can fly and collect data from.
- Autopilot that I can use for "missions"
- Document how to set up and fly a mission.

But should I stay in MD?
Should I publish with pandoc to latex and pdf?
What about my illustrations?
Should I use WORD?
Should I keep sections in separate files?

# 20 May 2025
I soldered the Speedy Bee 405 Flight controller - non-compas GPS, and all header pins.
The soldering iron of Wyatt does not seem to keep heat properly - I'll have trouble with the thicker wires if 
I can not resolve the issue.

I ordered the 1600 Ranger - $145 from Amazon.


