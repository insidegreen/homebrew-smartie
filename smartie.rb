# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Smartie < Formula
  desc "Smartie"
  homepage "https://github.com/insidegreen/smartie"
  url "https://github.com/insidegreen/smartie/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "4a4d5504ed4629029c7bb1c853d86fbb580fc423b8be3f3f1920170efae68663"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), buildpath/"cmd/mac-charger/main.go"
  end

  service do
    run opt_bin/"smartie"
  end

end
