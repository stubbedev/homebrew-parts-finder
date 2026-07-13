class PartsFinder < Formula
  desc "MCP server for speccing servers from compatible hardware and finding deals"
  homepage "https://github.com/stubbedev/parts-finder-mcp"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-arm64.tar.gz"
      sha256 "80da2988a44df4920b0999aa9b981d2f2980ea134950d7eef307c3c01d585754"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-amd64.tar.gz"
      sha256 "f250809ae7c9e7749aab845bf5fe47a0b0f8a6a8eb02af5f7325042496e23b00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-arm64.tar.gz"
      sha256 "d3f2d16921b7ff2b83ebe4f844375e402de860234f383de90eaa6ec597dd0852"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-amd64.tar.gz"
      sha256 "b47ca15e3e519b5ba3a41b498615cab178f50222718dc3e0c44855b20770be37"
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
