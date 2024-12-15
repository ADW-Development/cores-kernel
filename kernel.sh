# cores kernel
# ©2024 ADW-development

# check if the user has installed the OS already
CURRENT_USER=$(whoami)

CRED_FILE="/c/Users/$CURRENT_USER/downloads/cores-kernel-0.0.3/cred_file.txt"
SETUP_SCRIPT="/c/Users/$CURRENT_USER/downloads/cores-kernel-0.0.3/setup.sh"

if [ ! -f "$CRED_FILE" ]; then
    echo "Looks like you have not used this OS before. Setting you up."

    if [ -f "$SETUP_SCRIPT" ]; then
        bash "$SETUP_SCRIPT"
    else
        echo "Error: Setup script not found at $SETUP_SCRIPT. Please make sure you have installed the files to the right location."
        exit 1
    fi

    exit 0
else
    # Let's get the username and password
    USERNAME=$(sed -n '1p' "$CRED_FILE")
    PASSWORD=$(sed -n '2p' "$CRED_FILE")
    # Now let's make them enter the password
    read -p "Welcome back, $USERNAME. Enter your password: " ENTERED_PASSWORD
    while [ "$ENTERED_PASSWORD" != "$PASSWORD" ]; do
        echo "Incorrect password. Please try again."
        read -p "Welcome back, $USERNAME. Enter your password: " ENTERED_PASSWORD
    done

    echo "Welcome back to cores, $USERNAME!"
    while [ true ]; do
        read -p "$USERNAME$> " COMMAND
        if [ "$COMMAND" == "help" ]; then
            echo "help - show this message"
        # add other commands here as needed
        else
            echo "Unknown command: $COMMAND"
        fi
    done
fi
