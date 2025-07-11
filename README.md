# ardu_wing

Working on an autonomous wing using Arduino and Grok.
Andrew Kaluzniacki

# Project Organization

Daily Notes

# Project Motivation

I've been wanting to work on drones and have long had the flying bug.
In my regular work, I've been wanting both to use AI in my workflows, and to learn more about putting AI into my
projects. So I've combined learning to set up workflows with Grok, and using winged drones as a basis for experimenting
with Reinforcement Learning (RL). I've been making the argument at work that we should own the whole stack when it comes
to drones; that we should be familiar with and able to optimize the flying platform; the flight hardware; the flight software; the
sensors;
the flight planning; and the inevitable analytics that we would run on any data collected.
For now, I'll do this on my time and on my computer, and build my own wing.

# Project Goals

- Develop effective workflows with Grok, and/or other AI toolsets.
- Learn about applying RL to my problem sets.
- Build a wing and become familiar with all aspects of the full system.
- Fly the wing and collect data.
- Use the data to refine the system.

# Project Documentation

I was quickly able to work with Grok to figure out ArduPilot as the target for my flight software - mostly comparing to
iNAV and suitability for my Wing and RL goals.

The most pragmatic course I see is to skip the FPV and camera for now, and just get to something that helps me practice
flying, and where I can collect some black box data. The full stack aspect is how can I get the round trip of flight data back on my computer.

The use of QGroundControl, which works well on my Mac, for control of the flight needs to be understood.

The use of Telemetry back from the plane, which TBS Crossfire supports.

Blackbox configuration.
Blackbox download.
Sections:

## FrSky Setup
https://upinthesky.github.io/2020/01/15/frsky-taranis-x9d-plus-se-2019-switch-setup-and-configuration-in-betaflight.html



