# cores kernel
# ©2024 ADW-development

filename="cred_file.txt"

if [ ! -f "$filename" ]; then
    touch "$filename"
    echo "File '$filename' created."
else
    echo "Proceeding..."
fi

echo "Welcome to the setup! Let's get your credentials."

read -p "Enter your username: " username
read -sp "Enter your password: " password
echo

cred_file="$HOME/downloads/cores-kernel-0.0.3/cred_file.txt"

mkdir -p "$(dirname "$cred_file")"

echo "$username" > "$cred_file"
echo "$password" >> "$cred_file"

if [ -f "$cred_file" ]; then
    echo "Made your account."
else
    echo "Failed to make your account."
    exit 1
fi
