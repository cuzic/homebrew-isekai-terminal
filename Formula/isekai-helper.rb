class IsekaiHelper < Formula
  desc "Stream-level QUIC-to-TCP relay helper for isekai-terminal SSH roaming"
  homepage "https://github.com/cuzic/isekai-terminal"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    odie "isekai-helper only ships prebuilt Linux (musl) binaries; run it on a Linux SSH server"
  end

  on_arm do
    url "https://github.com/cuzic/isekai-terminal/releases/download/isekai-helper-v#{version}/isekai-helper-aarch64-unknown-linux-musl"
    sha256 "d26581b8209a99c4069ce794228d38efce325399b3764d68fb25e87f01ade61a"
  end

  on_intel do
    url "https://github.com/cuzic/isekai-terminal/releases/download/isekai-helper-v#{version}/isekai-helper-x86_64-unknown-linux-musl"
    sha256 "5d94877eaea11b63fd5f2282ef19d84e3d3f2f0a96036eeef76c939aafd4222c"
  end

  def install
    bin.install Dir["isekai-helper-*"].first => "isekai-helper"
  end

  test do
    assert_match "isekai-helper #{version}", shell_output("#{bin}/isekai-helper --version")
  end
end
