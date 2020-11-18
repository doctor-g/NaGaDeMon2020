.PHONY: all cards rules
all: intrigue.pdf

clean:
	for d in rules cards; \
	do \
	  $(MAKE) --directory=$$d clean; \
	done

cards rules:
	$(MAKE) --directory=$@ $(TARGET)


intrigue.pdf: cards rules
	pdftk rules/rules.pdf cards/printable.pdf cat output intrigue.pdf
