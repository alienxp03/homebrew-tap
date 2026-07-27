# typed: false
# frozen_string_literal: true

class Kesh < Formula
  desc "Keyboard-driven Kitty workspace manager for zoxide projects, SSH hosts, and agents."
  homepage "https://github.com/alienxp03/kesh"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/alienxp03/kesh/releases/download/v0.1.0/kesh_0.1.0_darwin_amd64.tar.gz"
      sha256 "40c6e3a83da635c3bdfae2686b2b0eee88d53af95c6cd60c7792233760c08a3f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/alienxp03/kesh/releases/download/v0.1.0/kesh_0.1.0_darwin_arm64.tar.gz"
      sha256 "831ecf499b5fabd97a6f2070b81dcea337fd81b7fd1cafeeb33fc9a1866f5e07"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/alienxp03/kesh/releases/download/v0.1.0/kesh_0.1.0_linux_amd64.tar.gz"
      sha256 "c42cbb7c0e0cd6bba87ef457edde694e617e66ec6fae72600e9c22f694c09da0"
    end
  end

  def install
    bin.install "kesh"
  end

  test do
    assert_predicate "#{bin}/kesh", :executable?
  end
end
