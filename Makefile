#
# Makefile to build Internet Drafts using docker image "paulej/rfctools".
#

SRC  := $(wildcard draft-*.adoc)
TXT  := $(patsubst %.adoc,%.txt,$(SRC))
XML  := $(patsubst %.adoc,%.xml,$(SRC))

# Ensure the xml2rfc cache directory exists locally
IGNORE := $(shell mkdir -p $(HOME)/.cache/xml2rfc)

all: $(TXT) $(HTML) $(XML)

clean:
	rm -f $(TXT) $(HTML) $(XML)

%.xml: %.adoc
	bundle exec asciidoctor -r asciidoctor-rfc -b rfc2 $^ --trace > $@

%.txt: %.xml
	xml2rfc --text $^ $@

%.html: %.xml
	xml2rfc --html $^ $@

open:
	open *.txt
