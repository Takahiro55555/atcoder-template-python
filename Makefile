SHELL=/bin/bash

setup:
	./.setup.sh

a: setup
	/home/${USER}/.venv/atcorder/bin/python3 a.py < a-input.txt

b: setup
	/home/${USER}/.venv/atcorder/bin/python3 b.py < b-input.txt

c: setup
	/home/${USER}/.venv/atcorder/bin/python3 c.py < c-input.txt

d: setup
	/home/${USER}/.venv/atcorder/bin/python3 d.py < d-input.txt

e: setup
	/home/${USER}/.venv/atcorder/bin/python3 e.py < e-input.txt
	
f: setup
	/home/${USER}/.venv/atcorder/bin/python3 f.py < f-input.txt
