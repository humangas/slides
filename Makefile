.DEFAULT_GOAL := help

.PHONY: all help html

all:

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "target:"
	@echo " - html:    Export presentation.md under docs directory to html using backslide."
	@echo ""

html:
	@for v in `ls docs`; do \
		cd docs/$$v; \
		bs e; \
		mv dist/presentation.html index.html; \
		rmdir dist; \
		cd ../..; \
	done
