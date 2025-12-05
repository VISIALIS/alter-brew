class AlterCli < Formula
  desc "CLI tool for blockchain address classification and analysis"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.30" # Updated automatically by CD
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.30/alter-cli-macos-arm64.tar.gz"
      sha256 "1562b995bbf8455fdbd2ee92cdf19f695ee37cced2b3a08871354f0eb940c841" # Updated automatically by CD
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
