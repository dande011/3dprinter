#!bin/bash

avrdude -v -p atmega2560 -C /home/pi/.platformio/packages/tool-avrdude/avrdude.conf -c wiring -b 115200 -D -P "/dev/ttyACM0" -U flash:w:firmware.hex:i

