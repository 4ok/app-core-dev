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
#    Application:
#
#    		start              Start the application
#    		restart            Restart the application
#    		startOrRestart     Start or restart the application
#    		stop               Stop the application
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

# Application tool
APP_TOOL := $(TOOLS_DIR)/application

# Module tool
MODULE_TOOL := $(TOOLS_DIR)/module

# Debug tool
DEBUG_TOOL := $(TOOLS_DIR)/debug

########################################################
###                Installation rules                ###
########################################################

# Install npm and bower modules
.PHONY: modules
modules: npm.install bower.install

# Remove npm and bower modules
.PHONY: modules.remove
modules.remove: npm.remove bower.remove

# Prune npm and bower modules
.PHONY: modules.prune
modules.prune: npm.prune bower.prune
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
###                Application rules                 ###
########################################################

# Start the application
.PHONY: start
start:
	$(APP_TOOL) start

# Restart the application
.PHONY: restart
restart:
	$(APP_TOOL) restart

# Start or restart the application
.PHONY: startOrRestart
start.or.restart:
	$(APP_TOOL) startOrRestart

# Stop the application
.PHONY: stop
stop:
	$(APP_TOOL) stop

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
