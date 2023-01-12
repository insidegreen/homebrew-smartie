# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smartie < Formula
  desc "Smartie"
  homepage "https://github.com/insidegreen/smartie"
  url "https://github.com/insidegreen/smartie/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "6e7623f70a98e6ee226f806c0cfe5285992a48a366335d04261a70415b09df22"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), buildpath/"cmd/mac-charger/main.go"
  end

  service do
    run opt_bin/"smartie"
  end

end
