# typed: true
# frozen_string_literal: true

class Specchio < Formula
  desc "Interactive setup CLI for Specchio iOS development environment"
  homepage "https://github.com/Alexintosh/specchio-cli"
  url "https://github.com/Alexintosh/specchio-cli/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "cc4b85010c252847ae3c8f4cd3fa84d1e24897e739208e1277d9cd5ab87c0e92"
  license "MIT"

  def install
    bin.install "specchio"
  end

  test do
    assert_match "specchio v", shell_output("#{bin}/specchio --version")
    assert_match "Interactive setup CLI", shell_output("#{bin}/specchio --help")
  end
end
