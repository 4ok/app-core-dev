#
#    Installation:
#
#    		modules			    Install npm and bower modules
#    		modules.uninstall   Uninstall npm and bower modules
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
# 		   process       		Show the application process
#    	   logs          		Show the application logs
#

########################################################
###                     Variables                    ###
########################################################

# Tools directory
TOOLS_DIR := @ . node_modules/app-core-dev/tools

# Module tool
MODULE_TOOL := $(TOOLS_DIR)/module

# Debug tool
DEBUG_TOOL := $(TOOLS_DIR)/debug

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
	$(MODULE_TOOL) prune

##### Npm #####

# Install npm modules
.PHONY: npm.install
npm.install:
	$(MODULE_TOOL) npm install

# Remove npm modules
.PHONY: npm.remove
npm.remove:
	$(MODULE_TOOL) npm remove

# Prune npm modules
.PHONY: npm.prune
npm.prune:
	$(MODULE_TOOL) npm prune

##### Bower #####

# Install bower modules
.PHONY: bower.install
bower.install:
	$(MODULE_TOOL) bower install

# Remove bower modules
.PHONY: bower.remove
bower.remove:
	$(MODULE_TOOL) bower remove

# Prune bower modules
.PHONY: bower.prune
bower.prune:
	$(MODULE_TOOL) bower prune

########################################################
###                    Debug rules                   ###
########################################################

# Show the application process
.PHONY: process
process:
	$(DEBUG_TOOL) process

# Show the application logs
.PHONY: logs
logs:
	$(DEBUG_TOOL) logs
