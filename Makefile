.SUFFIXES:
.DELETE_ON_ERROR:
.SECONDARY:
.ONESHELL:
export SHELL := /bin/bash
export SHELLOPTS := pipefail:errexit:nounset:noclobber

export JULIA := julia

.PHONY: all check
.DEFAULT_TARGET: all


check: test/runtests.jl.done


test/%.jl.done: test/%.jl
	$(JULIA) $< && touch $@
