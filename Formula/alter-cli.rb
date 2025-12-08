class AlterCli < Formula
  desc "CLI tool for blockchain address classification and analysis"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.32" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.32/alter-cli-macos-arm64.tar.gz"
      sha256 "e5124b0559af56a3295fe72419e8a51f1f4e036bc5c014472f78996df3d84e9b" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
