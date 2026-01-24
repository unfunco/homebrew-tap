# 🍺 Homebrew tap

[Homebrew] tap for personal CLI/TUI tools.

## Getting started

```bash
brew tap unfunco/tap
```

### Available tools

| Tool | Description                        |
|:-----|:-----------------------------------|
| [t]  | Manage your todo lists in the CLI. |

After you have successfully tapped the `unfunco/tap` repository, you should be
able to install any of the above tools with the following command:

```bash
brew install <tool>
```

### XXX

To trigger a rebuild of a formula, you can use the GitHub CLI to dispatch a
workflow event as follows:

```bash
gh api repos/unfunco/homebrew-tap/dispatches \
  -f event_type="" \
  -f client_payload='{"formula":"t"}'
```

## License

© 2025 [Daniel Morris]\
Made available under the terms of the [MIT License].

[daniel morris]: https://unfun.co
[homebrew]: https://brew.sh
[mit license]: LICENSE.md
[t]: https://github.com/unfunco/t
