# wallet-exploration
Experiments in wallet generation


Utilities
===================

brain2BIP39.sh -- a simple script that derives a BIT-39 24 word phrase from a DiceWare pasphrase.

Dependencies
===================

- Download bx from: https://github.com/libbitcoin/libbitcoin-explorer/releases
- Check the bx SHA256 example: openssl sha -sha256 <file>
- Install bx somewhere in your path as "bx"

TEST CASE 1:
---


$ ./brain2BIP39.sh 
<...>

Enter Brain Wallet: abcdefghijklmnop

BIP-39 mnemonic / Wallet Restoration Phrase: 

gun surge tag believe lion tomato guess stuff detect humble interest toast festival nest shuffle wolf promote educate weather draw route gym genuine express

TEST CASE 2:
---

$ ./brain2BIP39.sh 
<...>

Enter Brain Wallet: The Times 03/Jan/2009 Chancellor on brink of second bailout for banks

BIP-39 mnemonic / Wallet Restoration Phrase: 

hello beyond choose luggage strong wise case chair unfair jazz token credit repair refuse badge avocado image deer mobile lyrics equip again vast bitter
