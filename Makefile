#
# The ProFTPD Website Makefile
#

include Common.defines

SEPDIRS = include proftpd-announce-archive  proftpd-devel-archive  proftpd-l-archive
SUBDIRS = docs 
HTMLFILES = $(addsuffix .html, $(basename $(wildcard *.epl)))

# Top level targets

all: html

include Common.targets
