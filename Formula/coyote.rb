# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Coyote < Formula
  desc "Coyote is a RabbitMQ message sink."
  homepage "https://github.com/ghokun/coyote"
  version "0.7.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ghokun/coyote/releases/download/v0.7.0/coyote_Darwin_x86_64.tar.gz"
      sha256 "c546307cd3d882c99d32b22e30e498aa8dc629ac2371d94320bc979b9008bf75"

      def install
        bin.install "coyote"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ghokun/coyote/releases/download/v0.7.0/coyote_Darwin_arm64.tar.gz"
      sha256 "08391dc7643b5f1a3731057f44ee3c767bf0081501c09e0ea63649b24c2e95d1"

      def install
        bin.install "coyote"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ghokun/coyote/releases/download/v0.7.0/coyote_Linux_arm64.tar.gz"
      sha256 "a59735d5e8bfdbcb97c22e371651e053dcf11dd5d507fda192fadfe2b5eae833"

      def install
        bin.install "coyote"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/ghokun/coyote/releases/download/v0.7.0/coyote_Linux_x86_64.tar.gz"
      sha256 "1d998b709aea0f921bb169d4e3becb5f354de2802b7c3e748f9384432803fb6e"

      def install
        bin.install "coyote"
      end
    end
  end
end
