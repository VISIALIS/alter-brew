class AlterMcp < Formula
  desc "Model Context Protocol server for AI agents integration with Alter"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.31" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.31/alter-mcp-macos-arm64.tar.gz"
      sha256 "2e828d7dd277a0acbd304b9a9330fad512bcd5680adb9baa5621b93dd860320f" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
