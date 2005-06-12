EPERL = eperl

INCDIR = include
SUBDIRS = docs
EPLINCS = $(INCDIR)/footer.epl $(INCDIR)/header.epl
HTMLFILES = $(addsuffix .html, $(basename $(wildcard *.epl)))

%.html: %.epl $(EPLINCS)
	$(EPERL) -P -I $(INCDIR) $< >./$@

all: $(HTMLFILES) $(EPLINCS)
	@for i in $(SUBDIRS); do $(MAKE) -j $(JOBS) -C $$i; done

clean:
	rm -f $(HTMLFILES)
	@for i in $(SUBDIRS); do $(MAKE) -C $$i clean; done
