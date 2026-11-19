# Agent Instructions

Official CrowdStrike Falcon SDK for Ruby (`gem crimson-falcon`). Auto-generated from OpenAPI spec via OpenAPI Generator with custom Mustache templates.

## Commands

```bash
make build                    # gem build
make install                  # gem install built .gem
make rebuild                  # uninstall + build + install + clean
make generate                 # full regen: clean → patch → strip-oauth → build-sdk → fix-regex → remove-suffix → rubocop
make sync-wiki                # publish docs to wiki repo
make rubocop                  # rubocop -a (auto-fix)
rubocop                       # check only (CI)
bundle exec rspec             # run all specs
bundle exec rspec spec/api/hosts_spec.rb:42  # single example
```

Tests require env vars: `FALCON_CLIENT_ID`, `FALCON_CLIENT_SECRET`, `FALCON_CLOUD` (defaults to `us-1`).

## Architecture

**Namespace:** `Falcon` — usage: `Falcon.configure { |c| c.client_id = "..." }; Falcon::Hosts.new`

### Hand-Written (protected by .openapi-generator-ignore — DO NOT regenerate)
- `lib/crimson-falcon/api_client.rb` — HTTP via Typhoeus, OAuth2 auto-refresh (JWT expiry), cloud redirect, deserialization
- `lib/crimson-falcon/configuration.rb` — singleton: client_id, client_secret, cloud, timeouts, SSL
- `lib/crimson-falcon/cloud.rb` — region→hostname mapping (us-1, us-2, eu-1, us-gov-1)

### Auto-Generated (DO NOT edit — modify `.openapi-generator/templates/` instead)
- `lib/crimson-falcon.rb` — require manifest (~2875 requires)
- `lib/crimson-falcon/api/` — 136 API service classes (e.g., `Falcon::Detects`, `Falcon::Hosts`)
- `lib/crimson-falcon/models/` — 2734 model classes
- `lib/crimson-falcon/api_error.rb`, `lib/crimson-falcon/version.rb`
- `spec/` — generated spec stubs (not actively used)
- `README.md` — from `.openapi-generator/templates/README.mustache`

### Generation Pipeline (`make generate`)
Requires `swagger.json` in `.openapi-generator/`. Steps:
1. Patch with `transformation.jq` → `swagger-patched.json`
2. Strip OAuth security blocks → `swagger-stripped-oauth.json`
3. Run openapi-generator (ruby, config.yml, templates/)
4. `fix-regex` — escapes `[0-9a-z-_]` → `[0-9a-z\-_]`
5. `remove-suffix.rb` — strips `_api`/`Api` from filenames and class refs
6. `rubocop -a`

## Conventions

- **Conventional Commits**: `feat:` (minor), `fix:` (patch), `chore:`, `docs:`. Releases via release-please.
- **CI**: requires `ok-to-test` label on PRs. Tests Ruby 3.3.14 and 3.4.13 (patched for GHSA-34m4-m9fh-gqp5 and related Ruby advisories).
- **Ruby >= 3.3** required.
- **RuboCop**: `DisabledByDefault: true` — only explicitly listed cops active.
