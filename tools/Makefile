#
#    Modules:
#
#    		modules			    Install npm and bower modules
#    		modules.remove		Uninstall npm and bower modules
#           modules.prune       Prune npm and bower modules
#
#    		npm.install   	    Install npm modules
#    		npm.uninstall    	Uninstall npm modules
#    		npm.prune        	Prune npm modules
#
#    		bower.install    	Install bower modules
#    		bower.uninstall  	Uninstall bower modules
#    		bower.prune      	Prune bower modules
#
#    Debug:
#
# 		   process	Show the application process
#    	   logs		Show the application logs
#

########################################################
###                     Variables                    ###
########################################################

# Scripts directory
SCRIPTS_DIR := node_modules/app-core-dev/tools/scripts

# Module script
SCRIPT_MODULE := @ . $(SCRIPTS_DIR)/module

# Debug script
SCRIPT_DEBUG := @ . $(SCRIPTS_DIR)/debug

########################################################
###                Installation rules                ###
########################################################

# Install bower and npm modules
.PHONY: modules
modules: bower.install npm.install

# Remove bower and npm modules
.PHONY: modules.remove
modules.remove: bower.remove npm.remove

# Prune bower and npm modules
.PHONY: modules.prune
modules.prune: bower.prune npm.prune
	$(SCRIPT_MODULE) prune

##### Npm #####

# Install npm modules
.PHONY: npm.install
npm.install:
	$(SCRIPT_MODULE) npm install

# Remove npm modules
.PHONY: npm.remove
npm.remove:
	$(SCRIPT_MODULE) npm remove

# Prune npm modules
.PHONY: npm.prune
npm.prune:
	$(SCRIPT_MODULE) npm prune

##### Bower #####

# Install bower modules
.PHONY: bower.install
bower.install:
	$(SCRIPT_MODULE) bower install

# Remove bower modules
.PHONY: bower.remove
bower.remove:
	$(SCRIPT_MODULE) bower remove

# Prune bower modules
.PHONY: bower.prune
bower.prune:
	$(SCRIPT_MODULE) bower prune

########################################################
###                    Debug rules                   ###
########################################################

# Show the application process
.PHONY: process
process:
	$(SCRIPT_DEBUG) process

# Show the application logs
.PHONY: logs
logs:
	$(SCRIPT_DEBUG) logs
