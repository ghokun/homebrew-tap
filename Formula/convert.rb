# Generated with JReleaser 1.4.0 at 2023-02-13T22:39:55.668485249Z
class Convert < Formula
  desc "Convert your data files"
  homepage "https://github.com/ghokun/convert"
  version "0.0.2"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ghokun/convert/releases/download/v0.0.2/convert-0.0.2-linux-aarch64.zip"
    sha256 "f9109f9001ad19f2fc83a7dfd9daf81e476ad5995b0871081350ab72df483764"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.2/convert-0.0.2-linux-x86_64.zip"
    sha256 "472d3e47985ebd96018a8a6319280a28e2b477ae3960385e88aab9ce45630674"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ghokun/convert/releases/download/v0.0.2/convert-0.0.2-darwin-aarch64.zip"
    sha256 "33364a9d2f4a94a7abb8d4f8e3131720b96dc61cc234f920eb69ad519c578a57"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.2/convert-0.0.2-darwin-x86_64.zip"
    sha256 "dde4d34876eca1f78ca308be309421eb00f1829d55feba5cc977c0b670186ad6"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/convert" => "convert"
  end

  test do
    output = shell_output("#{bin}/convert --version")
    assert_match "0.0.2", output
  end
end
