#
#    Installation:
#
#    		install          	Install npm and bower modules
#    		uninstall        	Uninstall npm and bower modules
#           prune           	Prune npm and bower modules
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

# Debug tool
DEBUG_TOOL := $(TOOLS_DIR)/debug

# Module tool
MODULE_TOOL := $(TOOLS_DIR)/module

########################################################
###                Installation rules                ###
########################################################

# Install npm and bower modules
.PHONY: modules
modules:
	$(MODULE_TOOL) install

# Uninstall npm and bower modules
.PHONY: modules.remove
modules.remove:
	$(MODULE_TOOL) uninstall

# Prune npm and bower modules
.PHONY: modules.prune
modules.prune:
	$(MODULE_TOOL) prune

##### Npm #####

# Install npm modules
.PHONY: npm.install
npm.install:
	$(MODULE_TOOL) npm install

# Uninstall npm modules
.PHONY: npm.uninstall
npm.uninstall:
	$(MODULE_TOOL) npm uninstall

# Prune npm modules
.PHONY: npm.prune
npm.prune:
	$(MODULE_TOOL) npm prune

##### Bower #####

# Install bower modules
.PHONY: bower.install
bower.install:
	$(MODULE_TOOL) bower install

# Uninstall bower modules
.PHONY: bower.uninstall
bower.uninstall:
	$(MODULE_TOOL) bower uninstall

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
