class Wktree < Formula
  desc "Create strict Git worktrees and open tmux workspaces"
  homepage "https://github.com/alienxp03/wktree"
  version "v0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/alienxp03/wktree/releases/download/v0.1.0/wktree-v0.1.0-darwin-arm64.tar.gz"
      sha256 "3ce09c2a27e72917271528ce78f29a39e0e8b882ee0c12572e4b779230eb6e31"
    end
    on_intel do
      url "https://github.com/alienxp03/wktree/releases/download/v0.1.0/wktree-v0.1.0-darwin-amd64.tar.gz"
      sha256 "c6366f80039d65b708f467c9caad62de28a43cec4430a53c74770b2f621b49c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alienxp03/wktree/releases/download/v0.1.0/wktree-v0.1.0-linux-arm64.tar.gz"
      sha256 "4a65f2544e6063bf9c9c6b121cddff8154534d0c28ece2cac8e5785dcfa22c40"
    end
    on_intel do
      url "https://github.com/alienxp03/wktree/releases/download/v0.1.0/wktree-v0.1.0-linux-amd64.tar.gz"
      sha256 "704668453d71ce569208386b8e5532c1f0eb25915d0b0ad4bd60d990a4dbcd91"
    end
  end

  def install
    bin.install "wktree"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wktree --version")
  end
end
