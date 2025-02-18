#!/usr/bin/env bash                                                                                                                                                                                              
                                                                                                                                                                                                                 
# Terminate already running bar instances                                                                                                                                                                        
# If all your bars have ipc enabled, you can use                                                                                                                                                                 
polybar-msg cmd quit                                                                                                                                                                                             
# Otherwise you can use the nuclear option:                                                                                                                                                                      
# killall -q polybar                                                                                                                                                                                             
                                                                                                                                                                                                                 
# Launch bar1 and bar2                                                                                                                                                                                           
echo "---" | tee -a /tmp/polybar1.log                                                                                                                                                                            
if type "xrandr"; then                                                                                                                                                                                           
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do                                                                                                                                             
    MONITOR=$m polybar --reload bar1 &                                                                                                                                                                           
  done                                                                                                                                                                                                           
else                                                                                                                                                                                                             
  polybar --reload bar1 &                                                                                                                                                                                        
fi                                                                                                                                                                                                               
echo "Bars launched..."   
