apertium-en-mt.mt.dix: apertium-en-mt.mt.metadix
	xsltproc buscaPar.xsl apertium-en-mt.mt.metadix | uniq >$$$$tmp1 && \
	xsltproc $$$$tmp1 apertium-en-mt.mt.metadix > $@ && rm $$$$tmp1

en-mt.automorf.bin: apertium-en-mt.mt.dix
	apertium-validate-dictionary apertium-en-mt.mt.dix
	apertium-validate-acx apertium-en-mt.mt.acx
	lt-comp lr apertium-en-mt.mt.dix $@ apertium-en-mt.mt.acx

