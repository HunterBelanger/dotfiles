#!/bin/bash
DATE=`date +'%m-%d-%Y'`
TIME=`date +'%H:%M'`
BAT=`cat /sys/class/power_supply/BAT0/capacity`
VOL=`pactl list sinks | grep '^[[:space:]]Volume:' | \
  head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,'`
MUT=`pactl list sinks | grep '^[[:space:]]Mute:' | \
  head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's/\tMute://g'`

KBRD_LAYOUT=`swaymsg -t get_inputs | jq -M '.[1].xkb_active_layout_name'`

if [ "$KBRD_LAYOUT" == "\"English (US)\"" ]
then
  KBRD="US"
elif [ "$KBRD_LAYOUT" == "\"English (US, alt. intl.)\"" ]
then
  KBRD="FR"
else
  KBRD="?"
fi

if [ $MUT == "no" ]
then
  printf "KBRD:%s  VOL:%d  BAT:%d  %s  %s\n" $KBRD $VOL $BAT $DATE $TIME
else
  printf "KBRD:%s  VOL:M  BAT:%d  %s  %s\n" $KBRD $BAT $DATE $TIME
fi

