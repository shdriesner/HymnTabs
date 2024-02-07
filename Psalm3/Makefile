PASSAGE=$(shell basename -a $(PWD) 2>/dev/null)
TUNE=Evan

SONG=$(PASSAGE)-$(TUNE)-SATB
LY=$(SONG:%=%.ly)
LOG=$(SONG:%=%.log)
PDF=$(SONG:%=%.pdf)
MID=$(SONG:%=%.mid)

all: $(PDF) $(MID)
	@echo LY=$(LY)
	@lilypond $(LY) 2>&1 | tee $(LOG)

clean:
	-rm -f $(PDF) $(MID)

$(PDF): $(LY)

$(MID): $(LY)
