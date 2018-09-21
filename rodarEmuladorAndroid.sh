opt=$(zenity --title="Choose AVD" --text="Tio, selecione um emulador para iniciar:" --list \
                   --column="Devices" --separator="\n" `$ANDROID_HOME/emulator/emulator -list-avds`);
sudo chmod 777 /dev/kvm
$ANDROID_HOME/emulator/emulator -avd $opt -wipe-data -no-snapshot-load &
