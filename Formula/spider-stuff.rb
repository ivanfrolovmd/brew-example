class SpiderStuff < Formula
  desc "SpiderStuff"
  homepage "https://example.com/TBD"
  # bump the version so that brew picks up the changes.
  url "git@github.com:ivanfrolovmd/brew-example.git", :using => :git, :branch => "master", :revision => "HEAD"
  version "1.0.0"

  bottle :unneeded

  deps = [
    "ag",
    "coreutils",
    "direnv",
    "fzf",
    "git-lfs",
    "git-secret",
    "gradle",
    "jq",
    "ncdu",
    "sl",
    "tree",
    "vim",
    "watch",
    "wget",
    "xtail"
  ]
  deps.each { |d| depends_on d }

  def install
    libexec.install Dir["bin/*"]
    (bin/"spider-setup").write <<~EOS
#!/usr/bin/env bash

set -eu
set -o pipefail

# optional set up script or other cmd-line utilities/aliases
EOS
  end
end
