REBAR=rebar
ERL=erl

.PHONY: test

all: compile

compile:
	@$(REBAR) compile

clean:
	@$(REBAR) clean

docs:
	@$(REBAR) doc

clean-docs:
	-@rm -f doc/edoc-info doc/*.html doc/*.css doc/*.png

test:
	@$(REBAR) eunit

run:
	@$(ERL) -pa ebin
