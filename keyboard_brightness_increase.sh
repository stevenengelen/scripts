################################
# keyboard brightness increase
################################
#!/bin/bash
brightness_val=$(cat /sys/class/leds/asus\:\:kbd_backlight/brightness)
echo $brightness_val
if [ 3 -gt $brightness_val ]
  then
    brightness_val=$(($brightness_val + 1))
		echo $brightness_val
    echo $brightness_val | tee /sys/class/leds/asus\:\:kbd_backlight/brightness
fi

