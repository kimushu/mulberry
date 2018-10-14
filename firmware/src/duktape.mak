DUKDIR = ../../duktape
OUTDIR = duktape
PYTHON := $(shell (python2 --version > /dev/null 2>&1 && echo python2) || echo python)
DEPENDS := $(shell $(PYTHON) -c "import yaml" > /dev/null 2>&1 || echo install-pyyaml)

$(OUTDIR)/duktape.c: $(DEPENDS)
	@echo "Configuring Duktape"
	cd $(DUKDIR) && $(PYTHON) tools/configure.py --output-directory $(shell realpath --relative-to=$(DUKDIR) $(OUTDIR))

install-pyyaml:
	@echo "Installing PyYAML"
	$(PYTHON) -m pip install PyYAML
