.DEFAULT_GOAL := help

.PHONY: all help html

all:

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "target:"
	@echo " - list:    List presentations."
	@echo " - html:    Export presentation.md under docs directory to html using backslide."
	@echo ""

list:
	@cd docs;
	@for v in `ls docs`; do \
		echo $$v; \
	done

html:
	@for v in `ls docs`; do \
		cd docs/$$v; \
		bs e; \
		mv dist/presentation.html index.html; \
		rmdir dist; \
		cd ../..; \
	done
