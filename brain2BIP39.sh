printf "This script turns a brainwallet phrase in to a BIP-39 compatible mnemonic that can be used to restore your wallet.\n\n"
printf "It is intended to be used with DiceWare brainwallets with at least 128bits of entropy. \n\n"
printf "Because the BIP-39 wordlist is only 2k words and designed for three leter uniquenes, more entropy can be stored in fewer words with a Diceware phrase, using the nearlt 8k word list.\n\n"

read -p "Enter Brain Wallet: " brainwallet

mnemonic=`bx base16-encode "$brainwallet" | bx bitcoin256 | bx mnemonic-new`
printf "BIP-39 mnemonic / Wallet Restoration Phrase:  \n\n$mnemonic\n\n"
