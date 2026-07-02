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
    sha256 "a31f1f92d913e418736023ec0f10959e245df3c949c21a69be883fc3b2f56742"
  end

  on_intel do
    url "https://github.com/cuzic/isekai-terminal/releases/download/isekai-helper-v#{version}/isekai-helper-x86_64-unknown-linux-musl"
    sha256 "4401574883a7e12179488cb4e5eeccb4f427d3dcdb58b210b867507348858ed9"
  end

  def install
    bin.install Dir["isekai-helper-*"].first => "isekai-helper"
  end

  test do
    assert_match "isekai-helper #{version}", shell_output("#{bin}/isekai-helper --version")
  end
end
