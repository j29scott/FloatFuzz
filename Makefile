# directories and files
TESTS_DIR    = tests
EXAMPLES_DIR = $(TESTS_DIR)/examples
BIN_DIR      = bin

EXAMPLE_FILES = $(shell find $(EXAMPLES_DIR) -name "*.smt*")
EXAMPLE_TESTS = $(addsuffix .test,$(EXAMPLE_FILES))

# targets
all default help usage:
	@echo ""
	@echo "Usage:"
	@echo ""
	@echo "    make depends:         install floatfuzz's dependencies"
	@echo "    make install:         install floatfuzz"
	@echo ""
	@echo "    make test:            run all tests"
	@echo ""

clean:
	find . -name '*.pyc' -exec rm --force {} +
	find . -name '*.pyo' -exec rm --force {} +
	find . -name '__pycache__' -exec rm --force --recursive {} +
	rm -rf venv build dist floatfuzz.egg-info

venv: venv/bin/activate

venv/bin/activate: requirements.txt
	test -d venv || virtualenv -p python3 venv
	venv/bin/pip install -Ur requirements.txt
	. venv/bin/activate

devbuild: venv
	venv/bin/python setup.py install

devinstall: venv
	venv/bin/pip install --editable .

test: venv
	venv/bin/nosetests --verbosity=2 tests/**/*.py

install: 
	pip install .

uninstall: 
	pip uninstall floatfuzz -y