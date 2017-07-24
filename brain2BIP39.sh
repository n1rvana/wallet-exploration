printf "This script turns a brainwallet phrase in to a BIP-39 compatible mnemonic for hardware wallets, etc.\n\n"
printf "It is intended to be used with DiceWare brainwallets with at least 128bits of entropy. But it doesn't verify entropy.\n\n"

read -p "Enter Brain Wallet: " brainwallet

mnemonic=`bx base16-encode "$brainwallet" | bx bitcoin256 | bx mnemonic-new`
printf "BIP-39 mnemonic: (save wallet 24 words) \n\n$mnemonic\n\n"
