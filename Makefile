all: prereqs cards characters favor_cards tokens rules

prereqs:
	test -f cards/nanDECK.exe || { echo "nanDECK not found, exiting."; exit 1; }

cards:
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/cards.nde

characters:
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/characters.nde

favor_cards:
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/favor_cards.nde

tokens:
	wine cards/nanDECK.exe /[lang]=en /createpdf cards/tokens.nde

rules:
	pdflatex rules.tex
