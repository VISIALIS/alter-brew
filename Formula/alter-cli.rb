class AlterCli < Formula
  desc "CLI tool for blockchain address classification and analysis"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.28" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.28/alter-cli-macos-arm64.tar.gz"
      sha256 "57a3cadeacae0aedd0862fab7120ac6fa71d51037d0df315577d0cbf16bc7a5f" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
