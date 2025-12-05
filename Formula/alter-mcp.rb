class AlterMcp < Formula
  desc "Model Context Protocol server for AI agents integration with Alter"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.30" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.30/alter-mcp-macos-arm64.tar.gz"
      sha256 "d6701108fc3947da32174b40939dba1603e824642a0bc15afbe9a7415c8ab495" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
