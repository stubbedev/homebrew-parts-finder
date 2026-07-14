class PartsFinder < Formula
  desc "MCP server for speccing servers from compatible hardware and finding deals"
  homepage "https://github.com/stubbedev/parts-finder-mcp"
  version "0.1.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-arm64.tar.gz"
      sha256 "324586e54fbf031437b0058172a1c6417558d64e5a4a92dde880358cf0703038"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-darwin-amd64.tar.gz"
      sha256 "dad83104ab8c64a486b1108e1c69f91e7d9db4ce495301d6e511907bdc755bb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-arm64.tar.gz"
      sha256 "9d9b727d10a03f49a1204774642e65619ce93cd719d089ed7e2611f5d0213347"
    end
    on_intel do
      url "https://github.com/stubbedev/parts-finder-mcp/releases/download/v#{version}/parts-finder-#{version}-linux-amd64.tar.gz"
      sha256 "ca4efff8cc501dd415c48d40baaf0d8a00adecd4ffe13540239e04d3adbfbae4"
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
