.PHONY: all cards rules
all: docs/intrigue.pdf

clean:
	for d in rules cards; \
	do \
	  $(MAKE) --directory=$$d clean; \
	done

cards rules:
	$(MAKE) --directory=$@ $(TARGET)


docs/intrigue.pdf: cards rules
	mkdir -p docs
	pdftk rules/rules.pdf cards/printable.pdf cat output docs/intrigue.pdf
