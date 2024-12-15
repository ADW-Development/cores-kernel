# cores kernel
# ©2024 ADW-development

# check if the user has installed the OS already
CURRENT_USER=$(whoami)


CRED_FILE="C:/Users/$CURRENT_USER/downloads/cores-kernel-0.0.1/cred_file.txt"
SETUP_FILE="C:/Users/$CURRENT_USER/downloads/cores-kernel-0.0.1/setup.sh"

if [ ! -f "$FILE" ]; then
  echo "looks like you have not used this os before. setting you up."
  
  if [ -f "$SETUP_SCRIPT" ]; then
    bash "$SETUP_SCRIPT"
  else
    echo "error: setup script not found at $SETUP_SCRIPT. please make sure you have installed the files to the right location"
    exit 1
  fi

  exit 0
fi
else
    # lets get the username and password
    USERNAME=$(sed -n '1p' "$CRED_FILE")
    PASSWORD=$(sed -n '2p' "$CRED_FILE")
    # now lets make em enter the password
    read -p "welcome back, $USERNAME enter your password:" ENTERED_PASSWORD
    if [ $ENTERED_PASSWORD != $PASSWORD:
        while [ $ENTERED_PASSWORD != $PASSWORD]; do
            read -p "welcome back, $USERNAME enter your password:" ENTERED_PASSWORD
    echo "welcome back to cores! $USERNAME"
    while [ false != true ]; do
        read -p "$USERNAME$> " COMMAND
        if [ $COMMAND == "help"]; then
            echo "help - show this message"
