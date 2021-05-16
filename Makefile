SHELL=/bin/bash

setup:
	./.setup.sh

a: setup
	time /home/${USER}/.venv/atcoder/bin/python3 a.py < a-input.txt

b: setup
	time /home/${USER}/.venv/atcoder/bin/python3 b.py < b-input.txt

c: setup
	time /home/${USER}/.venv/atcoder/bin/python3 c.py < c-input.txt

d: setup
	time /home/${USER}/.venv/atcoder/bin/python3 d.py < d-input.txt

e: setup
	time /home/${USER}/.venv/atcoder/bin/python3 e.py < e-input.txt
	
f: setup
	time /home/${USER}/.venv/atcoder/bin/python3 f.py < f-input.txt
