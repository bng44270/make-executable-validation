###########################
# This is a sample Makefile that will verify the presence of executables on the system
# 
# The executables will be listed in a Makefile variable separated by spaces
# (in this script the variable in named "BINREQ"
#
# Comment line below comment "WORKS" and uncomment the line below comment "FAILS"
###########################

# WORKS
BINREQ = /bin/bash /bin/awk /bin/sed

# FAILS
#BINREQ = /bin/bash /bin/awk /bin/sed /bin/foo

SHELL = /bin/bash


##############
# checkfile - checks for the presence of an executable
#
# Usage:
#
#    $(call checkfile,<FILEPATH>)
##############
define checkfile
$(if $(shell which $(1)),,$(error "Binary not found: $(1)"))
endef

all:
    # Iterate through all items in BINREQ variable
	$(foreach thisbin,$(BINREQ),$(call checkfile,$(thisbin)))
	@echo "All files found correctly"
