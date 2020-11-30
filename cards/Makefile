all: prereqs simplex.pdf duplex.pdf

clean:
	rm -f *pdf

prereqs:
	test -f nanDECK.exe || { echo "nanDECK not found, exiting."; exit 1; }

cards.pdf: cards.nde
	wine nanDECK.exe /[lang]=en /createpdf cards.nde

characters.pdf: characters.nde
	wine nanDECK.exe /[lang]=en /createpdf characters.nde

duplex.pdf: favor_cards.nde
	wine nanDECK.exe /[lang]=en /createpdf favor_cards.nde
	mv favor_cards.pdf duplex.pdf

tokens.pdf: tokens.nde
	wine nanDECK.exe /[lang]=en /createpdf tokens.nde

simplex.pdf: characters.pdf cards.pdf tokens.pdf
	pdftk characters.pdf cards.pdf tokens.pdf cat output simplex.pdf
