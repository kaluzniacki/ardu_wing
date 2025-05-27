# Data Recording to the Blackbox
Most(?) flight control HW supports data recording to a micro-SD card. Ardupilot on the F405 Wing Mini does.
I put a 64GB card in the slot - I should check it's write speed as well.

TODO - check the card I am using.

# What to record?

I will set the black box to always record, though maybe one option is record when armed. Will need to see how many mminutes of data the 64GB will store - should be many hours.


The initial flight will be for my own practice - some tosses and landings. Maybe a few orbits of the field. When that is done, what
do I want to get? I'd like to characterize the plane. What is its flight envelope; how fast, how slow? With motor off what is the sink rate curve?
With full motor what is the max climb? How agile is it with full deflection at various speeds?


# Ardupilot for my FC
https://firmware.ardupilot.org/Plane/stable/speedybeef4v4/. 

Looks like HAL_SOARING_ENABLED is set, so is available in the firmware build, but needs to additinally be configured in the setting.
And set to some switches in the radio.

