# Define the name of your gem
GEM_NAME = crimson-falcon

# Define the version of your gem
GEM_VERSION = 0.1.1

# Define the path to your gemspec file
GEMSPEC_PATH = $(GEM_NAME).gemspec

# Define the command to build your gem
BUILD_COMMAND = gem build $(GEMSPEC_PATH)

# Define the command to install your gem
INSTALL_COMMAND = gem install $(GEM_NAME)-$(GEM_VERSION).gem

# Define the command to uninstall your gem
UNINSTALL_COMMAND = gem uninstall $(GEM_NAME)

# Define the command to clean up your gem
CLEAN_COMMAND = rm -f $(GEM_NAME)-$(GEM_VERSION).gem

# Define the default target
.PHONY: default
default: build

# Define the build target
.PHONY: build
build:
	$(BUILD_COMMAND)

# Define the install target
.PHONY: install
install:
	$(INSTALL_COMMAND)

# Define the uninstall target
.PHONY: uninstall
uninstall:
	$(UNINSTALL_COMMAND)

# Define the clean target
.PHONY: clean
clean:
	$(CLEAN_COMMAND)

# Define the rebuild target
.PHONY: rebuild
rebuild: uninstall clean build install
