# Generated with JReleaser 1.13.1 at 2024-07-16T21:52:23.419142683Z

class Convert < Formula
  desc "Convert your data files"
  homepage "https://github.com/ghokun/convert"
  version "0.2.0"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.2.0/convert-0.2.0-linux-x86_64.zip"
    sha256 "b6692e4dcfaa2868c7a4f0f6678c3edc643f900c7a282b6623ab7ee196877133"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ghokun/convert/releases/download/v0.2.0/convert-0.2.0-darwin-aarch64.zip"
    sha256 "25852b95b068b61e0f71a7cf386c28b53fd7827392b9b10fdc3baeae548e71d5"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.2.0/convert-0.2.0-darwin-x86_64.zip"
    sha256 "a4734bd9570b7941906f869a89d7da91bd001a4bbf263f36ab67e082c2f59396"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/convert" => "convert"
  end

  test do
    output = shell_output("#{bin}/convert --version")
    assert_match "0.2.0", output
  end
end
