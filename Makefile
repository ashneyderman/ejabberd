DIR := $(abspath $(dir $(realpath $(lastword $(MAKEFILE_LIST)))))

.PHONY: all

all:
	@echo "Building ejabberd in $(DIR) ..."
	-rm -rf $(DIR)/ebin
	-rm -rf $(DIR)/priv
	cd src ; ./configure --prefix="$(DIR)" --enable-odbc ; $(MAKE) all ; $(MAKE) install
	mv $(DIR)/lib/ejabberd/ebin $(DIR)/ebin
	mv $(DIR)/lib/ejabberd/priv $(DIR)/priv
	@echo "ejabberd build done."

clean:
	cd src ; $(MAKE) clean ;
	-rm -f ejabberd.d
