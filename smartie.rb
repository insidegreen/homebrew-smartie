# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smartie < Formula
  desc "Smartie"
  homepage "https://github.com/insidegreen/smartie"
  url "https://github.com/insidegreen/smartie/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "cb496061c5014d9f9de1b22c332ea2cc6c93f4e7dc1cd39461fa5b48ec478ff4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), buildpath/"cmd/mac-charger/main.go"
  end

  service do
    run opt_bin/"smartie"
  end

end
