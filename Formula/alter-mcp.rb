class AlterMcp < Formula
  desc "Model Context Protocol server for AI agents integration with Alter"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.31" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.31/alter-mcp-macos-arm64.tar.gz"
      sha256 "6898e1a62b6fa6dc04d7844b9a89968e771d18a33bc959e21b4c0138fd3e94d0" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
