#
# The ProFTPD Website Makefile
#

include Common.defines

SEPDIRS = include
SUBDIRS = docs 
HTMLFILES = $(addsuffix .html, $(basename $(wildcard *.epl)))

# Top level targets

all: html

include Common.targets
