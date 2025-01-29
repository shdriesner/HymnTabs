LY=$(shell find -maxdepth 1 -mindepth 1 -name '*.ly' -type f 2>/dev/null | sort)
LOG=$(LY:%.ly=%.log)
PDF=$(LY:%.ly=%.pdf)
MID=$(LY:%.ly=%.mid)

all: $(PDF) $(MID)
	@echo LY=$(LY)
	@lilypond $(LY) 2>&1 | tee $(LOG)

clean:
	-rm -f $(PDF) $(MID)

$(PDF): $(LY)

$(MID): $(LY)
