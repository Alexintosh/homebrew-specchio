# typed: true
# frozen_string_literal: true

class Specchio < Formula
  desc "Interactive setup CLI for Specchio iOS development environment"
  homepage "https://github.com/Alexintosh/specchio-cli"
  url "https://github.com/Alexintosh/specchio-cli/archive/refs/tags/v1.0.7.tar.gz"
  sha256 "5f6dc42277bfd00702271415bf9b50b94dda86df72d829740fe626cc92ab737c"
  version "1.0.7"
  license "MIT"

  def install
    arm64 = "https://github.com/Alexintosh/specchio-cli/releases/download/v#{version}/specchio-arm64"
    x64 = "https://github.com/Alexintosh/specchio-cli/releases/download/v#{version}/specchio-x64"

    if Hardware::CPU.arm?
      system "curl", "-fSL", "-o", "specchio-bin", arm64
    else
      system "curl", "-fSL", "-o", "specchio-bin", x64
    end

    chmod 0755, "specchio-bin"
    bin.install "specchio-bin" => "specchio"
  end

  test do
    assert_match "specchio v", shell_output("#{bin}/specchio --version")
  end
end
