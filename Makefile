all: clean chrome safari

clean:
	rm -rf build

define build
	mkdir -p build
	cp -R templates/$(1) build/$(1)
	cp scripts/ovenbreak.js build/$(1)/app.js
	zip -0 -r build/$(1).zip build/$(1) -x *.DS_Store*
endef

chrome:
	$(call build,chrome)

safari:
	$(call build,safari)
	mv build/safari build/ovenbreak.safariextension
