all: prereqs cards characters favor_cards tokens

prereqs:
	test -f cards/nanDECK.exe || { echo "nanDECK not found, exiting."; exit 1; }

cards: cards/cards.nde
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/cards.nde

characters: cards/characters.nde
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/characters.nde

favor_cards: cards/favor_cards.nde
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/favor_cards.nde

tokens: cards/tokens.nde
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/tokens.nde
