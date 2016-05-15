################################
# keyboard brightness decrease
################################
#!/bin/bash
echo $1 | tee /sys/class/leds/asus::kbd_backlight/brightness
