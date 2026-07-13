class PartsFinder < Formula
  desc "MCP server for speccing servers from compatible hardware and finding deals"
  homepage "https://github.com/stubbedev/parts-finder-mcp"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-amd64.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "parts-finder"
  end

  def caveats
    <<~CAVEATS
      Register with Claude Code:
        claude mcp add parts-finder -- #{opt_bin}/parts-finder
    CAVEATS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/parts-finder --version")
  end
end
