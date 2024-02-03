install: venv
	. venv/bin/activate; pip3 install -Ur requirements.txt

venv :
	test -d venv || python3 -m venv venv

clean:
	rm -rf venv
	find __pycache__ "*.pyc" -delete

run:
	. venv/bin/activate; python3 ValueIteration.py $(width) $(height) $(k) $(gamma) $(start) $(end)

export width ?= 10
export height ?= 10
export k ?= -k 3
export gamma ?= -g 0.8
export start ?= -start 0 0
export end ?= -end $$(($(width) - 1)) $$(($(height) - 1))