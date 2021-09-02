MOUSE_ID=$(xinput | grep "DeathAdder Chroma[[:space:]]*id.*pointer" | sed "s/pointer.*//g" | sed "s/[^0-9]*//g" | tr -d "\t\n\r")
PROP_ID=$(xinput list-props $MOUSE_ID | grep "Accel Speed (" | sed "s/:.*//g" | sed "s/[^0-9]*//g")

xinput -set-prop $MOUSE_ID $PROP_ID $1
