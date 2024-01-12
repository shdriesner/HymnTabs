SONG=Psalm100-Evan-SATB
SONG_LY=$(SONG:%=%.ly)
SONG_LOG=$(SONG:%=%.log)
SONG_PDF=$(SONG:%=%.pdf)
SONG_MID=$(SONG:%=%.mid)

SOLO=Psalm100-Evan-Melody
SOLO_LY=$(SOLO:%=%.ly)
SOLO_LOG=$(SOLO:%=%.log)
SOLO_PDF=$(SOLO:%=%.pdf)
SOLO_MID=$(SOLO:%=%.mid)

all: $(SONG_PDF) $(SONG_MID) $(SOLO_PDF) $(SOLO_MID)
	@echo SONG_LY=$(SONG_LY)
	@lilypond $(SONG_LY) 2>&1 | tee $(SONG_LOG)
	@echo SOLO_LY=$(SOLO_LY)
	@lilypond $(SOLO_LY) 2>&1 | tee $(SOLO_LOG)

clean:
	-rm -f $(SONG_PDF) $(SONG_MID) $(SOLO_PDF) $(SOLO_MID)

$(SONG_PDF): $(SONG_LY)

$(SONG_MID): $(SONG_LY)

$(SOLO_PDF): $(SOLO_LY)

$(SOLO_MID): $(SOLO_LY)
