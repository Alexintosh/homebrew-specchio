# typed: true
# frozen_string_literal: true

class Specchio < Formula
  desc "Interactive setup CLI for Specchio iOS development environment"
  homepage "https://github.com/Alexintosh/specchio-cli"
  url "https://github.com/Alexintosh/specchio-cli.git",
      tag:      "v1.0.1",
      revision: "main"
  license "MIT"

  bottle do
    root_url "https://github.com/Alexintosh/specchio-cli/releases/download/v1.0.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "CHECKSUM_ARM64_SONOMA"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "CHECKSUM_ARM64_VENTURA"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "CHECKSUM_ARM64_MONTEREY"
    sha256 cellar: :any_skip_relocation, x86_64_sonoma:   "CHECKSUM_X64_SONOMA"
    sha256 cellar: :any_skip_relocation, x86_64_ventura:  "CHECKSUM_X64_VENTURA"
    sha256 cellar: :any_skip_relocation, x86_64_monterey: "CHECKSUM_X64_MONTEREY"
  end

  depends_on "bun"

  def install
    bin.install "specchio"
  end

  test do
    assert_match "specchio v", shell_output("#{bin}/specchio --version")
    assert_match "Interactive setup CLI", shell_output("#{bin}/specchio --help")
  end
end
