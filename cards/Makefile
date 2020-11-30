all: prereqs simplex.pdf duplex.pdf

clean:
	rm -f *pdf

prereqs:
	test -f nanDECK.exe || { echo "nanDECK not found, exiting."; exit 1; }

duplex.pdf: cards.nde
	wine nanDECK.exe /[lang]=en /createpdf cards.nde
	mv cards.pdf duplex.pdf

characters.pdf: characters.nde
	wine nanDECK.exe /[lang]=en /createpdf characters.nde

favor_cards.pdf: favor_cards.nde
	wine nanDECK.exe /[lang]=en /createpdf favor_cards.nde

tokens.pdf: tokens.nde
	wine nanDECK.exe /[lang]=en /createpdf tokens.nde

simplex.pdf: characters.pdf favor_cards.pdf tokens.pdf
	pdftk characters.pdf favor_cards.pdf tokens.pdf cat output simplex.pdf
