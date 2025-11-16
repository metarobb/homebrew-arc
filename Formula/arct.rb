class Arct < Formula
  desc "Interactive TUI for learning shell commands - from beginner to Arch Linux mastery"
  homepage "https://arcacademy.sh"
  url "https://github.com/metarobb/arc-academy-terminal/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "6ac0118d66368d0d35e1f661887fb40b01cc8c0e27d0457c0b8877e6bbb6d299"
  license "MIT"
  version "0.2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/arct-cli")
  end

  test do
    assert_match "arct", shell_output("#{bin}/arct --version")
  end
end
