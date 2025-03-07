.PHONY: clean all build link rmlink
	
all: build link

debug: clean all
	
clean: rmlink
	@$(MAKE) -C ./src/ clean

build:
	@$(MAKE) -C ./src/ all
	
link:
	@mkdir -p $${HOME}/.local/bin/
	ln -r -sf ./bin/x* $${HOME}/.local/bin/
	
rmlink:
	rm ~/.local/bin/xae3d
