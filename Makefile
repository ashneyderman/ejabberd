.PHONY: all

all:
	@echo "Building ejabberd ..."
	@echo "MAKEFILE_LIST: ${MAKEFILE_LIST}"
	cd src ; ./configure ; $(MAKE)
	@echo "ejabberd build done."

clean:
	cd src ; $(MAKE) clean ;
	-rm -f ejabberd.d
