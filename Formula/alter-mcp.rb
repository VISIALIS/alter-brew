class AlterMcp < Formula
  desc "Model Context Protocol server for AI agents integration with Alter"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.28" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.28/alter-mcp-macos-arm64.tar.gz"
      sha256 "b9aee8496a9175bafc3500eaac92bdb9ade06d6aff2459b0fb261aa75c8b44cc" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
