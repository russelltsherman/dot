
# if tio is installed define the tio_connect function
if chk::command "tio"
then

    # look for tty.usbmodem* devices
    # if more than one is found pipe to fzf for selection menu
    # send selection to tio for connection
    tio_connect() {
        modems=($(ls /dev/tty.usbmodem*))
        if (( $(grep -c . <<<"$modems") > 1 ))
        then
            selected=$(printf "%s\n" "${modems[@]}" | fzf)
        else
            selected=$modems
        fi
        tio "$selected"
    }
fi