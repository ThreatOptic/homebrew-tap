# frozen_string_literal: true

class Threatoptic < Formula
  desc "Command-line client for the ThreatOptic security monitoring platform"
  homepage "https://github.com/ThreatOptic/CLI"
  license "MIT"

  livecheck do
    url "https://github.com/ThreatOptic/CLI.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  on_macos do
    on_arm do
      url "https://github.com/ThreatOptic/CLI/releases/download/v0.3.1/threatoptic_darwin_arm64.tar.gz"
      sha256 "05d2a17402b13565833fd520dbf7034d48101999641e27cb0728137b933b0bcc"
    end
    on_intel do
      url "https://github.com/ThreatOptic/CLI/releases/download/v0.3.1/threatoptic_darwin_amd64.tar.gz"
      sha256 "14fee259337e8f929648ba408cdc9054aed0ee501a5cc65d5a152d4dfaa6d7c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThreatOptic/CLI/releases/download/v0.3.1/threatoptic_linux_arm64.tar.gz"
      sha256 "bf09080d4fc8a11c8bef55627cd8d081f18d913d2d6117641c4b11312f4ce0ab"
    end
    on_intel do
      url "https://github.com/ThreatOptic/CLI/releases/download/v0.3.1/threatoptic_linux_amd64.tar.gz"
      sha256 "0e609d2f51b32c899e33254a54aa23f1817d41a26455aff4f15e487084fa37b0"
    end
  end

  def install
    bin.install "threatoptic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/threatoptic version")
  end
end
