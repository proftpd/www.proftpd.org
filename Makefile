#
# The ProFTPD Website Makefile
#

include Common.defines

SEPDIRS = include
SUBDIRS = docs proftpd-announce-archive  proftpd-devel-archive  proftpd-l-archive  
HTMLFILES = $(addsuffix .html, $(basename $(wildcard *.epl)))

# Top level targets

all: html

include Common.targets
