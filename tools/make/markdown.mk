PANDOC=pandoc
WP=../wp/compiler
MARKDOWN=-s --toc -H ../css/markdown.css --from=markdown --to=html5 --tab-stop=2
JUSTIFY='s/<p>/<p style="text-align:justify;">/g'
BLANK='s/<a href="([^\#])/<a target="_blank" href="\1/g'

CONVERT=convert
CONVERT_FLAGS=-size 650x500 -gravity center -background black -fill white

html: $(patsubst %.md,%.html,$(wildcard *.md))

wp: $(patsubst %.md,%.wp,$(wildcard *.md))

%.html: %.md
	$(PANDOC) $(MARKDOWN) $< | sed -E -e $(JUSTIFY) -e $(BLANK) > $@

%.wp: %.html
	$(WP) < $< > $@

%.png:
	$(CONVERT) $(CONVERT_FLAGS) label:"$@" $@

%.jpg:
	$(CONVERT) $(CONVERT_FLAGS) label:"$@" $@

%.gif:
	$(CONVERT) $(CONVERT_FLAGS) label:"$@" $@

clean:
	rm -f *.html *.wp
