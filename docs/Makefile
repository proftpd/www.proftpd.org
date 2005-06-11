EPERL = eperl

INCDIR = ../include
HTMLFILES = $(addsuffix .html, $(basename $(wildcard *.epl)))

%.html: %.epl
	$(EPERL) -P -I $(INCDIR) $< >./$@

all: $(HTMLFILES) $(EPLINCS)

clean:
	rm -f $(HTMLFILES)
