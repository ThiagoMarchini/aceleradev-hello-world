script=hello.py

run:
	python hello/$(script)

print-hello:
	@echo "hello"

print-world: print-hello
	@echo "world"

build:
	python setup.py build

sdist:
	python setup.py sdist

install: sdist
	python setup.py install

.PHONY: clean
clean:
	rm -fR build dist *egg-info