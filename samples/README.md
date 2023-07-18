![CrowdStrike Falcon](https://raw.githubusercontent.com/CrowdStrike/falconpy/main/docs/asset/cs-logo.png)

[![Twitter URL](https://img.shields.io/twitter/url?label=Follow%20%40CrowdStrike&style=social&url=https%3A%2F%2Ftwitter.com%2FCrowdStrike)](https://twitter.com/CrowdStrike)

# Crimson Falcon Sample Library

This repository contains a collection of examples demonstrating the use of the CrowdStrike Falcon APIs. The examples are written in Ruby and use the Crimson Falcon Ruby SDK.

These examples are intended to be used as a quick start reference for developers looking to integrate with the CrowdStrike Falcon platform.

> They are not intended to be used as-is in production environments.

## Authentication for these Examples

These examples will follow one of three standard patterns for authenticating to the CrowdStrike Falcon platform via the Crimson Falcon Ruby SDK:

| Pattern | Usage detail |
| :--- | :--- |
| Environment variables | Credentials are retrieved from the local environment of the machine the example is executed on.<BR/><BR/>These values are named:<ul><li>`FALCON_CLIENT_ID`</li><li>`FALCON_CLIENT_SECRET`</li></ul> |
| Runtime (Command line arguments) | Credentials are consumed at runtime via command line parameters. The common options can be found in the shared [`options`](shared/options.rb) library which utilizes the `optparse` Ruby library. |
| Prompt | If no environment variables or command line arguments are found, the script will prompt you for your credentials. A shared [`prompt`](shared/prompt.rb) library helper utilizes Ruby's `io/console` library. |

> **Note:** Member CID can be passed in via the `-m` or `--member-cid` flag.

> Please note: These are not the only methods for providing these values.

## Usage

1. Install Ruby and the "crimson-falcon" gem. Follow the [Installation](../README.md#installation) guide.

2. Run the sample script in your terminal:

    ```bash
    ruby sensor_download/get_ccid.rb
    ```

    or list the available options:

    ```bash
    ruby sensor_download/get_ccid.rb -h
    ```

## Samples by API service collection

The following samples are categorized by CrowdStrike Falcon API service collection.

| Service Collection | Samples |
| :--- | :--- |
| [Hosts](hosts) | [Sensor Versions by Hostname](hosts/sensor_versions_by_hostname.rb) |
| [Incidents](incidents) | [Get CrowdScore](incidents/crowd_score.rb) |
| [OAuth2](oauth2) | [Get OAuth2 Token](oauth2/get_access_token.rb) |
| [Sensor Download](sensor_download) | [Get CCID](sensor_download/get_ccid.rb) |
