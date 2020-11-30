.PHONY: all cards rules
all: dist

clean:
	for d in rules cards; \
	do \
	  $(MAKE) --directory=$$d clean; \
	done

cards rules:
	$(MAKE) --directory=$@ $(TARGET)


dist: cards rules
	mv rules/rules.pdf intrigue-rules.pdf
	mv cards/simplex.pdf intrigue-simplex.pdf
	mv cards/duplex.pdf intrigue-duplex.pdf

