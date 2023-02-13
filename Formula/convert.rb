# Generated with JReleaser 1.4.0 at 2023-02-13T00:08:45.449037587Z
class Convert < Formula
  desc "Convert your data files"
  homepage "https://github.com/ghokun/convert"
  version "0.0.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-linux-aarch64.zip"
    sha256 "24ae3a8276c718d455f72683f0e45fc70d4b22be3014d0b67c97293ee41de1c1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-linux-x86_64.zip"
    sha256 "025ed8a0915fdec0f2ae48350f82db68175cfc7033abbd342c1262d762bb3fdf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-darwin-aarch64.zip"
    sha256 "cc1a60f61f6a5451ea05f8df7f6cf6c816c41528f2f2b89aad8c87a10612f77c"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-darwin-x86_64.zip"
    sha256 "0ca935c14f304bebbdeac006b3c70208e7419992a94de1bbcf1a69a2501e8a7c"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/convert" => "convert"
  end

  test do
    output = shell_output("#{bin}/convert --version")
    assert_match "0.0.1", output
  end
end
