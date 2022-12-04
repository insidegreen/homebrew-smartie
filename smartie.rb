# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smartie < Formula
  desc "Smartie"
  homepage "https://github.com/insidegreen/smartie"
  url "https://github.com/insidegreen/smartie/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e35f52fc758f72a20d299ce0fd7c170bd41250f13be51c2b0dac30b905547e4f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "cmd/mac-charger/main.go", *std_go_args(ldflags: "-s -w")
  end

end
