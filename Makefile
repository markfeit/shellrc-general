#
# Makefile for General Shell RCs
#

default:
	@echo "Nothing to do here."


clean:
	(echo && find . -name "*~") | xargs rm -rf
	rm -rf $(TO_CLEAN)
