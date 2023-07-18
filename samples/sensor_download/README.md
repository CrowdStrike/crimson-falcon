![CrowdStrike Falcon](https://raw.githubusercontent.com/CrowdStrike/falconpy/main/docs/asset/cs-logo.png)

[![Twitter URL](https://img.shields.io/twitter/url?label=Follow%20%40CrowdStrike&style=social&url=https%3A%2F%2Ftwitter.com%2FCrowdStrike)](https://twitter.com/CrowdStrike)

# Sensor Download Examples

This repository contains a collection of examples demonstrating the use of the Sensor Download API on the CrowdStrike Falcon platform. The examples are written in Ruby and use the Crimson Falcon Ruby SDK.

The current examples include:

- [Get CCID](#get-ccid)

## Get CCID

Returns the CCID associated with your API credentials.

### Running the program

In order to run this demonstration, you will need access to CrowdStrike API keys with the following scopes:

| Scope | Permissions |
| :---- | :---- |
| Sensor Download | **READ** |

### Execution Syntax

These samples leverage simple command-line arguments to implement functionality.

> Execute the example:

```bash
ruby get_ccid.rb -k $FALCON_CLIENT_ID -s $FALCON_CLIENT_SECRET
```

> Execute the example, specifying a member CID:

```bash
ruby get_ccid.rb -k $FALCON_CLIENT_ID -s $FALCON_CLIENT_SECRET -m MEMBER_CID
```

### Command-line help

Command-line help is available via the `-h` or `--help` flags.

```terminal
ruby get_ccid.rb -h
Usage: get_ccid.rb -k FALCON_CLIENT_ID -s FALCON_CLIENT_SECRET [options]

    -k, --client-id FALCON_CLIENT_ID         OAuth2 API Client ID.
    -s, --client-secret FALCON_CLIENT_SECRET OAuth2 API Client Secret.
    -c, --cloud FALCON_CLOUD                 Falcon cloud region (default: us-1) | valid: us-1, us-2, eu-1, us-gov-1.
    -m, --member-cid MEMBER_CID              Member CID for MSSP
    -h, --help                               Show this message
```

## Coming Soon

Stay tuned for more examples showcasing different functionalities of the Sensor Download API.
