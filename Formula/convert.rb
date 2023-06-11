# Generated with JReleaser 1.6.0 at 2023-06-11T13:15:12.09825915Z
class Convert < Formula
  desc "Convert your data files"
  homepage "https://github.com/ghokun/convert"
  version "0.1.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ghokun/convert/releases/download/v0.1.0/convert-0.1.0-linux-aarch64.zip"
    sha256 "a406920eac20c92502a4a2b794f09dd946e6c555f866cf0144e046be443ec748"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.1.0/convert-0.1.0-linux-x86_64.zip"
    sha256 "4a31066d71363ee6e30e0882ef5a1335632d3155266f0f38764934f4520b0fb3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ghokun/convert/releases/download/v0.1.0/convert-0.1.0-darwin-aarch64.zip"
    sha256 "fc02cd1270415cc50550486359e84ff158a7d7bdd3889aa9cbcb64604f7aa7a3"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.1.0/convert-0.1.0-darwin-x86_64.zip"
    sha256 "4d2a4647d7f31bee9086103ce154c78d89b37bc15643ea3c2fa05f2bdb083647"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/convert" => "convert"
  end

  test do
    output = shell_output("#{bin}/convert --version")
    assert_match "0.1.0", output
  end
end
