# Developer Contribution Guide

Welcome to our Crimson Falcon Ruby SDK project! We're excited to see your contributions. Before you start, it's important to understand how our project is organized and how the changes you make should be structured.

This guide will walk you through the key aspects of contributing to our project.

## Project Structure

Our project uses the [OpenAPI Generator](https://openapi-generator.tech/) to generate the SDK client code. This ensures consistent code structure and helps maintain compatibility with the OpenAPI specification.

Much of the project is built using mustache templates. Mustache is a simple, logic-less templating language. If you're not familiar with mustache, we recommend you check out its [documentation](https://mustache.github.io/mustache.5.html) before proceeding.

Key directories in the project include:

* `docs/`: This directory contains the auto-generated documentation for the SDK.
* `lib/crimson-falcon/`: This directory contains the generated SDK client code. It includes the `api/` and `models/` directories, which contain the API and model classes, respectively.
  > **Note:** Not all files in this directory are generated. The `api/` and `models/` directories are generated, but the `api_client.rb`, `configuration.rb` and `cloud.rb` files are not.
  >
  > Reference the `.openapi-generator-ignore` file to see which files are do not get overwritten when the SDK is regenerated.
* `spec/`: This directory contains the auto-generated unit tests for the SDK. It includes the `api/` and `models/` directories, which contain the unit tests for the API and model classes, respectively.
  > ***This directory is currently not being used. This is TBD***.
* `.openapi-generator/`: This directory contains the configuration file and templates used by the OpenAPI Generator to generate the SDK client code.
  > :exclamation: **When regenerating the SDK, this is where the Swagger specification file should be placed**. :exclamation:
  >
  > **The file should be named:** `swagger.json`.
* `samples/`: This directory contains sample code that demonstrates how to use the SDK.

## Using the Makefile

The project includes a Makefile that automates many common operations. Understanding and using the Makefile commands will help you streamline your workflow.

> ***Common commands*** used are `make rebuild` and `make generate` as these are a combination of the other commands.

Here's an overview of the key commands provided in the Makefile:

### Development tasks

* `make build`: This command builds the gem from the source code. It uses the `gem build` command along with the gemspec file to generate the gem.
* `make install`: This command installs the gem into your local Ruby environment. It uses the `gem install` command along with the gem name and version.
* `make uninstall`: This command uninstalls the gem from your local Ruby environment. It uses the `gem uninstall` command along with the gem name.
* `make clean`: This command cleans up the project by removing the built gem file from the project directory.
* `make rebuild`: This command rebuilds the gem from scratch. It runs `uninstall`, `build`, `install`, and `clean` commands sequentially.

### SDK Generation tasks

* `make build-sdk`: This command generates the SDK using the OpenAPI Generator. It uses a configuration file and a set of templates to generate the SDK.
* `make fix-regex`: This command fixes any regular expressions in the generated Ruby files. The specific regex pattern it fixes is `[0-9a-z-_]`, which it replaces with `[0-9a-z\\-_]`.
* `make rubocop`: This command runs the RuboCop linter on the codebase to ensure the code adheres to the community Ruby style guide. It also automatically fixes any issues that RuboCop can correct (`-a` flag).
* `make clean-generated-files`: This command removes all generated files from the project. This includes files in the `docs/`, `lib/crimson-falcon/models/`, `lib/crimson-falcon/api/`, and `spec/` directories.
* `make generate`: This command runs a full SDK generation pipeline. It starts by cleaning up any old generated files, then generates a new SDK, fixes the regex, and finally runs RuboCop on the generated code.

To use these commands, simply type `make` followed by the command name in your terminal from the project's root directory. For example, `make build` will build the gem from the source code. These commands will help automate common tasks and make your workflow more efficient.

Please feel free to reach out if you have any questions about using the Makefile or any other aspect of the project's development process.

## Making Changes

### Understanding File Generation

Because our project uses generated code, it's crucial to understand where and how to make changes to ensure they aren't overwritten in future code generations.

For instance, if you wish to make changes to the README.md of the project, these changes should actually be made in the [.openapi-generator/templates/README.mustache](.openapi-generator/templates/README.mustache) file. When the code is regenerated, your changes will then appear in the README.md file.

### Understanding the SDK Generation Process

The SDK is generated using the OpenAPI Generator tool. The OpenAPI Generator uses a configuration file, a swagger file and a set of templates to generate the SDK. The configuration file is located at [.openapi-generator/config.yaml](.openapi-generator/config.yaml). The templates are located at [.openapi-generator/templates/](.openapi-generator/templates/). The swagger file should be placed in the [.openapi-generator/](.openapi-generator/) directory and named `swagger.json`.

### Getting Started

#### Pre-requisites

- `Ruby` - v2.7+
- `make` - This is used to run the commands in the Makefile.

---

To get started, you'll need to install the [OpenAPI Generator CLI](https://openapi-generator.tech/docs/installation).

If you're using a Mac, you can install the CLI using Homebrew:

```bash
brew install openapi-generator
```

Next, ensure the Ruby dependencies are installed:

```bash
bundle install
```

Now you're ready to contribute and generate the SDK!

### Example Workflow

To help you understand how to make changes to the project, we've included some example changes below.

#### Updating the README

Let's say we want to add the following code to the README.md file:

```markdown
[![Gem Version](https://badge.fury.io/rb/crimson-falcon.svg)](https://badge.fury.io/rb/crimson-falcon)
```

This is to add a badge to the README that displays the current version of the gem. We want to add the badge right after the title and before the description.

To make this change, we'll need to update the README.mustache file. This file is located at [.openapi-generator/templates/README.mustache](.openapi-generator/templates/README.mustache).

The diff below shows the changes we need to make to the README.mustache file:

```diff
# Crimson Falcon - The CrowdStrike Falcon SDK for Ruby
+
+[![Gem Version](https://badge.fury.io/rb/crimson-falcon.svg)](https://badge.fury.io/rb/crimson-falcon)

*Empower* your Ruby applications with the robust capabilities of the CrowdStrike Falcon platform,
using the Crimson Falcon SDK. ...
```

To verify the changes, we need to regenerate the SDK. For quick iterative testing, we can use the following command:

```bash
make build-sdk
```

Once we verified our changes, we should run the full generation pipeline to ensure the code is linted and the regex is fixed:

```bash
make generate
```

> :coffee: *This part could take a few minutes to complete.* :coffee:

Now we can commit our changes and submit a pull request!

## Submitting Your Changes

### Making Commits

> We adhere to the Conventional Commits specification for our commit messages. This provides better readability and structure for our project's commit history. If you're not familiar with this specification, you can learn about it [here](https://www.conventionalcommits.org/).

#### Commit Message Format

The commit message should be structured as follows:

```terminal
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

> Common types include `feat`, `fix`, `docs`, and `chore`.
>
> `fix` correlates to a [PATCH](https://semver.org/#summary) version bump.
>
> `feat` correlates to a [MINOR](https://semver.org/#summary) version bump.
>
> `BREAKING CHANGE` correlates to a [MAJOR](https://semver.org/#summary) version bump.

#### Commit Message Example

```terminal
feat: add new API endpoint for retrieving a list of hosts

This commit adds a new API endpoint for retrieving a list of hosts. It also includes a new model for the host object.
```

### Submitting a Pull Request

Once you've made your changes, please submit them as a pull request. Ensure your commit messages follow the Conventional Commits format, and describe your changes in the pull request so that we can understand the changes you've made and the reasons behind them.

## Conclusion

We appreciate your contribution to our project! Understanding these guidelines will ensure your changes align with our project structure and workflow. If you have any questions or run into any issues, please don't hesitate to reach out.
