#!/bin/bash

for key in $(bibtool -i publis.bib | awk '/@/ {print $2}' | tr -d ','); do
	btac -q dblp -W journal -W author -v -e $key -i publis.bib;
	echo "Sleeping a bit, for being stealth...";
	sleep 5;
done
