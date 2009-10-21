EPERL = eperl

INCDIR = ../include
EPLINCS = $(INCDIR)/footer.epl $(INCDIR)/header.epl
HTMLFILES = $(addsuffix .html, $(basename $(wildcard *.epl)))

%.html: %.epl $(EPLINCS)
	$(EPERL) -P -I $(INCDIR) $< >./$@

all: $(HTMLFILES) $(EPLINCS)

clean:
	rm -f $(HTMLFILES)
