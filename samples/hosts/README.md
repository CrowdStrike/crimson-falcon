![CrowdStrike Falcon](https://raw.githubusercontent.com/CrowdStrike/falconpy/main/docs/asset/cs-logo.png)

[![Twitter URL](https://img.shields.io/twitter/url?label=Follow%20%40CrowdStrike&style=social&url=https%3A%2F%2Ftwitter.com%2FCrowdStrike)](https://twitter.com/CrowdStrike)

# Hosts Examples

This repository contains a collection of examples demonstrating the use of the Hosts API on the CrowdStrike Falcon platform. The examples are written in Ruby and use the Crimson Falcon Ruby SDK.

The current examples include:

- [Sensor Versions by Hostname](#sensor-versions-by-hostname)

## Sensor Versions by Hostname

Loops through all hosts and displays the hostname and sensor version.

### Running the program

In order to run this demonstration, you will need access to CrowdStrike API keys with the following scopes:

| Scope | Permissions |
| :---- | :---- |
| Hosts | __READ__ |

### Execution Syntax

These samples leverage simple command-line arguments to implement functionality.

> Execute the example:

```bash
ruby sensor_versions_by_hostname.rb -k $FALCON_CLIENT_ID -s $FALCON_CLIENT_SECRET
```

> Execute the example, reversing the sort order:

```bash
ruby sensor_versions_by_hostname.rb -k $FALCON_CLIENT_ID -s $FALCON_CLIENT_SECRET -r
```

> Execute the example, using threads to speed up the process:

```bash
ruby sensor_versions_by_hostname.rb -k $FALCON_CLIENT_ID -s $FALCON_CLIENT_SECRET -t
```

### Command-line help

Command-line help is available via the `-h` or `--help` flags.

```terminal
ruby sensor_versions_by_hostname.rb -h
Usage: sensor_versions_by_hostname.rb -k FALCON_CLIENT_ID -s FALCON_CLIENT_SECRET [options]

    -k, --client-id FALCON_CLIENT_ID         OAuth2 API Client ID.
    -s, --client-secret FALCON_CLIENT_SECRET OAuth2 API Client Secret.
    -c, --cloud FALCON_CLOUD                 Falcon cloud region (default: us-1) | valid: us-1, us-2, eu-1, us-gov-1.
    -m, --member-cid MEMBER_CID              Member CID for MSSP
    -r, --reverse                            Reverse sort order.
    -t, --threads                            Use threads.
    -h, --help                               Show this message
```

## Coming Soon

Stay tuned for more examples showcasing different functionalities of the Hosts API.
