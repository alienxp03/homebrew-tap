# typed: false
# frozen_string_literal: true

class Kesh < Formula
  desc "Keyboard-driven Kitty workspace manager"
  homepage "https://github.com/alienxp03/kesh"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alienxp03/kesh/releases/download/v0.1.1/kesh_0.1.1_darwin_amd64.tar.gz"
      sha256 "c09a9aa33a6146c8aa9db2f214e2e343134b304d8667ffac03cbc7ddba2b352d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alienxp03/kesh/releases/download/v0.1.1/kesh_0.1.1_darwin_arm64.tar.gz"
      sha256 "b5e37460ad6e86efd84b7312ebd77233042d2f5831ca0eebb6508ab9162f5fe1"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/alienxp03/kesh/releases/download/v0.1.1/kesh_0.1.1_linux_amd64.tar.gz"
      sha256 "098b0d0085f7ed3ed78ef7446ddda31b552bcd4adad3afbe0c1d6818df0ba988"
    end
  end

  def install
    bin.install "kesh"
  end

  test do
    assert_predicate "#{bin}/kesh", :executable?
  end
end
