flags=-interaction=nonstopmode -halt-on-error
VPATH=tex:images:plot
TARGETS:=btc-carnia.pdf
IMAGES:=bitcoin-logo.png
PLOTS:=
TEXS:=btc-carnia.tex
MACS:=bitcoin.tex
TEX_CARNIA:=rubber --pdf btc-carnia.tex

export

default: $(TARGETS)

$(TARGETS) : $(MACS) $(IMAGES) $(TEXS) $(PLOTS)
	-$(TEX_CARNIA)

clean:
	-$(TEX_CARNIA) --clean

.DELETE_ON_ERROR: $(TARGETS)

.PHONY: clean default
