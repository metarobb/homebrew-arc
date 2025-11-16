class Arct < Formula
  desc "Interactive TUI for learning shell commands - from beginner to Arch Linux mastery"
  homepage "https://arcacademy.sh"
  url "https://github.com/metarobb/arc-academy-terminal/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "572c9d1f673fef372a66a45735f6dcab7a312e07a4d3c02517c3b92ae8d9c6a1"
  license "MIT"
  version "0.1.1"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "crates/arct-cli")
  end

  test do
    assert_match "arct", shell_output("#{bin}/arct --version")
  end
end
