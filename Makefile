.PHONY: all cards rules
all: dist

clean:
	rm -f intrigue-rules.pdf intrigue-simplex.pdf intrigue-duplex.pdf
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

