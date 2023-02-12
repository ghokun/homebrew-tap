# Generated with JReleaser 1.4.0 at 2023-02-12T22:51:45.549881689Z
class Convert < Formula
  desc "Convert your data files"
  homepage "https://github.com/ghokun/convert"
  version "0.0.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-linux-aarch64.zip"
    sha256 "687f09e6d36c6722bf92022443aa1c419a80d5fdbe8383f248a5c132c7728c7b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-linux-x86_64.zip"
    sha256 "18f16dec8c5bd3a611b2f6d1ac53196386451861fba95e2c23827fe31233d5a3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-darwin-aarch64.zip"
    sha256 "48710cc22628111f3f5160a4436189d14d03e0ae687e6a7917c640f1f78eb6f1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-darwin-x86_64.zip"
    sha256 "960600bf367d059adc169bb3cbf43431962874becd688970fbb2473590224655"
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
