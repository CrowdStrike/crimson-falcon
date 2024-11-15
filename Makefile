# Define the name of your gem
GEM_NAME = crimson-falcon

# Define the version of your gem
GEM_VERSION := $(shell ruby -r './lib/crimson-falcon/version.rb' -e 'puts Falcon::VERSION')

# Define the path to your gemspec file
GEMSPEC_PATH = $(GEM_NAME).gemspec

# Define shell commands
BUILD_COMMAND = gem build $(GEMSPEC_PATH)
INSTALL_COMMAND = gem install $(GEM_NAME)-$(GEM_VERSION).gem
UNINSTALL_COMMAND = gem uninstall $(GEM_NAME)
CLEAN_COMMAND = rm -f $(GEM_NAME)-$(GEM_VERSION).gem

# Directory where the ruby files are located (regex fix)
DIR := lib/crimson-falcon/

#------------------------
# Development tasks
#------------------------
.PHONY: default build install uninstall rebuild
default: build

build:
	@echo "Building gem..."
	@$(BUILD_COMMAND)

install:
	@echo "Installing gem..."
	@$(INSTALL_COMMAND)

uninstall:
	@echo "Uninstalling gem..."
	@$(UNINSTALL_COMMAND)

clean:
	@echo "Cleaning up..."
	@$(CLEAN_COMMAND)

rebuild: uninstall build install clean

#------------------------
# SDK Generation tasks
#------------------------
.PHONY: build-sdk fix-regex clean-generated-files rubocop

build-sdk:
	@echo "Generating SDK..."
	@openapi-generator generate -i .openapi-generator/swagger-patched.json -g ruby -c .openapi-generator/config.yml -t .openapi-generator/templates

fix-regex:
	@echo "Fixing regex..."
ifeq ($(shell uname -s),Darwin) # If the operating system is macOS
	@find $(DIR) -name "*.rb" -print0 | while IFS= read -r -d '' file; do \
		sed -i '' -E 's/\[0-9a-z-_]/[0-9a-z\\-_]/g' "$$file" ; \
	done
else # If the operating system is Linux
	@find $(DIR) -name "*.rb" -print0 | while IFS= read -r -d '' file; do \
		sed -i 's/\[0-9a-z-_]/[0-9a-z\\-_]/g' "$$file" ; \
	done
endif

.openapi-generator/swagger-stripped-oauth.json: .openapi-generator/swagger-patched.json
	# We remove security info from swagger before generating golang API interface.
	# This achieves cleaner interface. OAuth is then applied automatically through the middle-ware.
	jq 'walk(if type == "object" and has("security") and (has("consumes") or has("produces")) then del(.security) else . end)' $< > $@

.openapi-generator/swagger-patched.json: .openapi-generator/swagger.json .openapi-generator/transformation.jq
	jq -f .openapi-generator/transformation.jq $< > $@

.openapi-generator/swagger.json:
	@echo "Sorry swagger.json needs to be obtained manually at this moment"
	@exit 1

rubocop:
	@echo "Running rubocop..."
	@rubocop -a

clean-generated-files:
	@echo "Cleaning up generated files..."
	@rm -rf docs/* lib/crimson-falcon/models/* lib/crimson-falcon/api/* spec/*

.PHONY: generate
generate: clean-generated-files .openapi-generator/swagger-stripped-oauth.json build-sdk fix-regex rubocop
	@echo "SDK generated successfully."
