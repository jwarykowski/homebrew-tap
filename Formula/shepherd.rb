class Shepherd < Formula
  desc "Interactive todo board backed by a markdown file"
  homepage "https://github.com/jwarykowski/shepherd"
  url "https://github.com/jwarykowski/shepherd/archive/refs/tags/v0.20.0.tar.gz"
  sha256 "90d7ebea7f4490cdd5dab8ab618554017be69c9e9c9b61baa687f2aa27fb8d04"
  license "MIT"
  head "https://github.com/jwarykowski/shepherd.git", branch: "master"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "filter", shell_output("#{bin}/shepherd --help 2>&1")
  end
end
