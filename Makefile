.PHONY: test doc

test: test_all.lua
	lua test_all.lua

doc:
	# find src -name '*.lua' -exec ldoc -c cfg.ld {} ';'
	ldoc -s '!fixed' -c cfg.ld .
