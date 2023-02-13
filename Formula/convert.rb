# Generated with JReleaser 1.4.0 at 2023-02-13T00:38:18.996602779Z
class Convert < Formula
  desc "Convert your data files"
  homepage "https://github.com/ghokun/convert"
  version "0.0.1"
  license "Apache-2.0"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-linux-aarch64.zip"
    sha256 "798e9a9d8c6797c0470f69be53a6cd26c95fcd9f06524d7a9abcac569d01289d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-linux-x86_64.zip"
    sha256 "d953fcec59c0a06f8baa8f49bc0a960c54b9789e56ec5894710e4554efbdda39"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-darwin-aarch64.zip"
    sha256 "f15c5c70f57302489121e334a0784ae57932759f95cb63d1df3dfd021763ed8e"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/ghokun/convert/releases/download/v0.0.1/convert-0.0.1-darwin-x86_64.zip"
    sha256 "907d8c4ee3caee3f6e0bf96eb32564c0df0b76e3094fe5b5252fbc6a117f8402"
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
