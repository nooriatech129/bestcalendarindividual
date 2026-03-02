# Makefile for bestcalendarindividual workspace

# Variables
VENVDIR?=.venv
PYTHON=python3

.PHONY: venv install deps start clean

# create a python virtual environment
venv:
	$(PYTHON) -m venv $(VENVDIR)
	@echo "Virtual environment created at $(VENVDIR). Activate with 'source $(VENVDIR)/bin/activate'"

# install python deps if a requirements.txt exists
install: venv
	@if [ -f requirements.txt ]; then \
		$(VENVDIR)/bin/pip install -r requirements.txt; \
		echo "Python dependencies installed"; \
	else \
		echo "No requirements.txt found, nothing to install"; \
	fi

# install node/npm dependencies
deps:
	npm install

# start the backend (same as npm start)
start:
	npm run start

# remove created env and node modules
totalclean: clean

clean:
	rm -rf $(VENVDIR) node_modules
	@echo "Cleaned virtual environment and node_modules"
