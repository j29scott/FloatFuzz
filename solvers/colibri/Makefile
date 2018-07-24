#

all:
	@echo smt-comp-full smt-comp

smt-comp-full:
	git archive --output colibri.tar HEAD
	gzip -f colibri.tar

FILE_TO_REMOVE=$(filter-out bin/starexec_run_default, $(wildcard bin/starexec_run_*)) bin/z3 smtlib_rte_checker

smt-comp:
	git archive --output colibri.tar HEAD
	tar --delete -f colibri.tar $(FILE_TO_REMOVE)
	gzip -f colibri.tar

smt-comp-other-solver: boolector.tar.gz cvc4.tar.gz mathsat.tar.gz yices.tar.gz z3.tar.gz

boolector_ARGS=boolector --smt2
z3_ARGS=z3 -smt2
yices_ARGS=yices
mathsat_ARGS=mathsat -input=smt2
cvc4_ARGS=cvc4 --lang=smt2

%.tar.gz: Makefile other_solver/$*
	mkdir -p tmp_tar/bin
	cp other_solver/$* tmp_tar/
	sed -e "s/@SOLVER@/$($*_ARGS)/g" other_solver/script.sh > tmp_tar/bin/starexec_run_default
	chmod u+x tmp_tar/bin/starexec_run_default
	cd tmp_tar; tar -czf ../$@ *
	rm -rf tmp_tar
