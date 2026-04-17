# typed: true
# frozen_string_literal: true

class Specchio < Formula
  desc "Interactive setup CLI for Specchio iOS development environment"
  homepage "https://github.com/Alexintosh/specchio-cli"
  url "https://github.com/Alexintosh/specchio-cli/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "DUMMY_SHA256"  # This will be ignored since we use bottles
  license "MIT"

  bottle do
    root_url "https://github.com/Alexintosh/specchio-cli/releases/download/v1.0.4"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "2ca02dbcf15b30fa2c9996531bfe6ac347fdb2d6c8850d8f21d3eb1f0f0a1ed8"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "941a2aeb79166b8e9ec438864c7df76545a045dc90e70a24c6de75432544bcc3"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "941a2aeb79166b8e9ec438864c7df76545a045dc90e70a24c6de75432544bcc3"
    sha256 cellar: :any_skip_relocation, x86_64_sonoma:   "941a2aeb79166b8e9ec438864c7df76545a045dc90e70a24c6de75432544bcc3"
    sha256 cellar: :any_skip_relocation, x86_64_ventura:  "941a2aeb79166b8e9ec438864c7df76545a045dc90e70a24c6de75432544bcc3"
    sha256 cellar: :any_skip_relocation, x86_64_monterey: "941a2aeb79166b8e9ec438864c7df76545a045dc90e70a24c6de75432544bcc3"
  end

  def install
    bin.install "specchio"
  end

  test do
    assert_match "specchio v", shell_output("#{bin}/specchio --version")
    assert_match "Interactive setup CLI", shell_output("#{bin}/specchio --help")
  end
end
