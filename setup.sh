# cores kernel
# ©2024 ADW-development

echo "welcome to the setup! lets get your credentials."

read -p "enter your username:" USERNAME
read -sp "enter your password: " PASSWORD

CRED_FILE="C:/Users/$(whoami)/downloads/coreskernel-0.0.1/cred_file.txt"

echo "$USERNAME" > "$CRED_FILE"
echo "$PASSWORD" >> "$CRED_FILE"

if [ -f "$CRED_FILE" ]; then
  echo "made your account"
else
  echo "failed to make your account."
  exit 1
fi
