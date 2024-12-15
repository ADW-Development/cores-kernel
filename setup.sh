# cores kernel
# ©2024 ADW-development

FILE_NAME_TOMAKE = "cred_file.txt"
if [ ! -f "$FILE_NAME_TOMAKE" ]; then 
  touch "$FILE_NAME_TOMAKE"
else 
  echo "proceeding..." 
fi

echo "welcome to the setup! lets get your credentials."

read -p "enter your username:" USERNAME
read -sp "enter your password: " PASSWORD

CRED_FILE="C:/Users/$(whoami)/downloads/cores-kernel-0.0.1/cred_file.txt"

echo "$USERNAME" > "$CRED_FILE"
echo "$PASSWORD" >> "$CRED_FILE"

if [ -f "$CRED_FILE" ]; then
  echo "made your account"
else
  echo "failed to make your account."
  exit 1
fi
