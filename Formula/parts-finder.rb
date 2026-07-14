class PartsFinder < Formula
  desc "MCP server for speccing servers from compatible hardware and finding deals"
  homepage "https://github.com/stubbedev/parts-finder-mcp"
  version "0.1.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-arm64.tar.gz"
      sha256 "68e65773aa1fb22d98fd6eb4e7796e308c9db33ea6948f16c526d45c3e801751"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-amd64.tar.gz"
      sha256 "afe19045558c20bbafad4cac6b258f283441fc512a54b573cdda946929f620a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-arm64.tar.gz"
      sha256 "d3811aadbad2902880053b4517124290ee17f3a8dde93b5ea6adc4c4e09830cc"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-amd64.tar.gz"
      sha256 "83a72f3273af2a64e86dd8f273f8dd62df42b2c53c4d4efffb55c61f56b6e30f"
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
