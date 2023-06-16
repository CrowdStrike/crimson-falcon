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
rebuild: uninstall build install clean

.PHONY: fix-regex

# Directory where the ruby files are located
DIR := lib/crimson-falcon/

fix-regex:
ifeq ($(shell uname -s),Darwin) # If the operating system is macOS
	find $(DIR) -name "*.rb" -print0 | while IFS= read -r -d '' file; do \
		sed -i '' -E 's/\[0-9a-z-_]/[0-9a-z\\-_]/g' "$$file" ; \
	done
else # If the operating system is Linux
	find $(DIR) -name "*.rb" -print0 | while IFS= read -r -d '' file; do \
		sed -i 's/\[0-9a-z-_]/[0-9a-z\\-_]/g' "$$file" ; \
	done
endif

.PHONY: generate

generate:
	openapi-generator generate -i .openapi-generator/swagger.json -g ruby -c .openapi-generator/config.yml -t .openapi-generator/templates

.PHONY: post-generate

post-generate: generate fix-regex
