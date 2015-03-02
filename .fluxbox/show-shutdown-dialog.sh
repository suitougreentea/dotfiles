ans=$(zenity --list --text "Choose:" --radiolist \
  --column "Pick" --column "Action" \
  TRUE "Shutdown" \
  FALSE "Reboot")

echo $ans
if [ "$ans" == "Shutdown" ] ; then
  ./update-menu.sh
  systemctl poweroff
elif [ "$ans" == "Reboot" ] ; then
  ./update-menu.sh
  systemctl reboot
fi
