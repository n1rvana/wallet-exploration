printf "This script turns a brainwallet phrase in to a BIP-39 compatible mnemonic for hardware wallets, etc.\n\n"
printf "It is intended to be used with DiceWare brainwallets with at least 128bits of entropy. But it doesn't verify entropy.\n\n"

read -p "Enter Brain Wallet: " brainwallet

# bx base16-encode < bx-linux-x64-qrcode | bx sha256

brain16=`bx base16-encode $brainwallet`
seed=`bx bitcoin256 $brain16`
mnemonic=`bx mnemonic-new $seed`

printf "Seed: (don't save)\n $seed\n "

printf "BIP-39 mnemonic: (save wallet 24 words) \n$mnemonic\n"
