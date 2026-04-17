# typed: true
# frozen_string_literal: true

class Specchio < Formula
  desc "Interactive setup CLI for Specchio iOS development environment"
  homepage "https://github.com/Alexintosh/specchio-cli"
  url "https://github.com/Alexintosh/specchio-cli/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "31945afa26d2fe92f791a1fbb699145bb6a3f6223b002c65dd02d403c6833da7"
  license "MIT"

  def install
    bin.install "specchio"
  end

  test do
    assert_match "specchio v", shell_output("#{bin}/specchio --version")
    assert_match "Interactive setup CLI", shell_output("#{bin}/specchio --help")
  end
end
