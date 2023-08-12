# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coyote < Formula
  desc "Coyote is a RabbitMQ message sink."
  homepage "https://github.com/ghokun/coyote"
  version "0.9.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ghokun/coyote/releases/download/v0.9.1/coyote_Darwin_x86_64.tar.gz"
      sha256 "d72c0e0f98a16ed6576e8ed8ff9b6a2256d360f8884bd1a7f7b76291edc5bedb"

      def install
        bin.install "coyote"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ghokun/coyote/releases/download/v0.9.1/coyote_Darwin_arm64.tar.gz"
      sha256 "c770ec10d0a85de2ac46a8707645389561f513051601f45232d034dbaefd8fa4"

      def install
        bin.install "coyote"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ghokun/coyote/releases/download/v0.9.1/coyote_Linux_arm64.tar.gz"
      sha256 "67e43c9f3445689df81c0d3460c9a7c786eb83d43dc0baa9cd57536db241c290"

      def install
        bin.install "coyote"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ghokun/coyote/releases/download/v0.9.1/coyote_Linux_x86_64.tar.gz"
      sha256 "a946e7b4bdf6833b077e1ac10286e5457f2d97eb458e416885560478152164b2"

      def install
        bin.install "coyote"
      end
    end
  end
end
