# homebrew-parts-finder

Homebrew tap for [parts-finder-mcp](https://github.com/stubbedev/parts-finder-mcp).

```sh
brew install stubbedev/parts-finder/parts-finder
```

Then register with Claude Code:

```sh
claude mcp add parts-finder -- "$(brew --prefix)/bin/parts-finder"
```

The formula in `Formula/parts-finder.rb` is regenerated automatically by the
[release workflow](https://github.com/stubbedev/parts-finder-mcp/blob/master/.github/workflows/release.yml)
on every tagged release.
