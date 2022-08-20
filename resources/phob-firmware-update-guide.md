---
title: Phob firmware update guide
layout: page
permalink: /resources/phob-firmware-update-guide
---

# How to update the firmware on your PhobGCC controller

As of August 2022, the only “official” way to flash new firmware onto a Phob is by setting up the entire programming environment used by PhobGCC developers. If this sounds like something you’re interested in, check out [the walkthrough](https://docs.google.com/presentation/d/1Ota8R95K1-LR34Re3XB7BIb7ZzgtDM_iaknYH9k8yRQ){:target="_blank"}.

For the rest of us, there’s a much easier method as long as your controller uses a 1.2.X board and a Teensy 4.0. If you’ve purchased a Phob from Vulpine Customs at any point, this is the hardware you have. If you’re not sure, ask the person who built your controller before proceeding.

## Tools

You will need a tri-wing or Microstix screwdriver to open your controller. If you don’t have one, I recommend [this one](https://battlebeavercustoms.com/products/triwing){:target="_blank"} from Battle Beaver (cheaper) or [this one](https://www.kctool.com/wera-030084-1-x-40mm-esd-safe-microstix-precision-screwdriver/){:target="_blank"} from Wera (nicer).

You will also need a micro-USB cable to connect your controller to your computer. This must be a data transfer cable and not simply a power cable. If you don’t have one, I recommend [this one](https://www.amazon.com/gp/product/B093SWG63B){:target="_blank"} because the shape of the plug makes it particularly easy to connect to the Phob.

## Downloads

You will need to [download the Teensy Loader application](https://www.pjrc.com/teensy/loader.html){:target="_blank"}. The “brain” of the PhobGCC is a microcontroller called a Teensy, and this is the desktop app made by the Teensy manufacturer (PJRC) for flashing firmware onto it. Choose your operating system and download the Loader.

You will also need [this precompiled HEX binary](/assets/phob/Phob1_2Teensy4_0.hex). This is the firmware you will be flashing onto your controller. Right click this link and save it to your desktop or somewhere else you can easily find it.

Note that this binary is specific to PhobGCC builds with 1.2.X boards and a Teensy 4.0. **I take no responsibility for what happens if you try to flash this binary onto any controller not matching these specifications.**

## The process

Start by unplugging your controller and opening the shell. Use your screwdriver to unscrew the 6 screws on the back of the controller. Holding the controller upside down, remove the back shell and set it aside. Then carefully remove the internals from the front shell by gently prying the cable from where it’s looped near where it exits the shell.

Flip the board over and you will see the Teensy in the center with a micro-USB port on its right edge. Make absolutely sure the controller’s main cable is disconnected, then plug your micro-USB cable into the Teensy and your computer.

Run the Teensy Loader application. You should see a very small window appear. Grab the HEX file you downloaded and drop it onto this window. You should see the name of the file appear at the bottom of the window.

Press the small button on the front of the Teensy. A red light may appear near the USB connector, and you should see the Teensy Loader upload the new firmware and then display the text “Reboot OK”. This should only take a couple of seconds.

Your controller is now updated! Unplug the USB cable and reassemble your controller. Make sure the cable loop is seated exactly how you found it so that the shell closes properly. Do not force the shell closed — if it’s not sitting flush, make sure the button pads are seated correctly, the trigger sliders are all the way up, and the cable is aligned with the exit hole.

It is recommended to soft reset your controller after updating. To do so, plug it into your console or adapter, hold A+X+Y+Start for 1 second to exit Safe Mode, wait 3 seconds, and then press A+B+Z+Start. Unplug it and plug it back in, and you are ready to play.

## Troubleshooting

If you run into any issues and you’re a Vulpine Customs customer, message me on [Twitter](https://twitter.com/VulpineCustoms){:target="_blank"} or [Etsy](https://vulpinecustoms.etsy.com){:target="_blank"} for help. Otherwise, check out the [PhobGCC documentation](https://github.com/PhobGCC/PhobGCC-doc){:target="_blank"} (and specifically the Discord server linked there, where you can find lots of people who can help).
