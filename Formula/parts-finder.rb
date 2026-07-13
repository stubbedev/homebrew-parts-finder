class PartsFinder < Formula
  desc "MCP server for speccing servers from compatible hardware and finding deals"
  homepage "https://github.com/stubbedev/parts-finder-mcp"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-arm64.tar.gz"
      sha256 "9fac2b43d8140b69d7109112905e8862cd9c7dbed887735696adf099f4fbde39"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-amd64.tar.gz"
      sha256 "ce86030c229173a9f0995eb968dca942b95ce9c2ccf27a7d57f437a65ac6d543"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-arm64.tar.gz"
      sha256 "c6e3ae107639ae6e9fad6ef9d498c551c3d59be7b6c04c3ac3f0c69c8395aa60"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-amd64.tar.gz"
      sha256 "c1638fd8ad9d3ce7ef200e3f55a990bf4f28a09ea0663af132c51ddce1e4010c"
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
