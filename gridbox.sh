#!/bin/bash

sudo apt update &&
sudo apt install nano zip -y &&
wget https://github.com/trexminer/T-Rex/releases/download/0.26.8/t-rex-0.26.8-linux.tar.gz
tar -xzvf t-rex-0.26.8-linux.tar.gz &&
#!/bin/bash

# Ask for the name of the coin
echo "Please enter the name of the coin:"
read coin_name

# Ask for the algorithm
echo "Please enter the algorithm:"
read algorithm

# Ask for the mining pool address
echo "Please enter the pool address:"
read pool

# Ask for the wallet address
echo "Please enter your wallet address:"
read wallet

# Ask for the password (usually optional in mining pools)
echo "Please enter the password (if applicable, otherwise press enter):"
read password

# Set the output file name to include the coin name
output_file="mine_${coin_name}.sh"

# Write the responses to the output file with the mining command format
echo "#!/bin/bash" > "$output_file"
echo "./t-rex -a '$algorithm' -o '$pool' -u '$wallet' -p '$password'" >> "$output_file"

# Make the output file executable
chmod +x "$output_file"

# Inform the user that the file has been created
echo "The file '$output_file' has been created. Type '$output_file' to begin"


