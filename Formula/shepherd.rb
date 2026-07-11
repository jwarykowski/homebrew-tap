class Shepherd < Formula
  desc "Interactive todo board backed by a markdown file"
  homepage "https://github.com/jwarykowski/shepherd"
  url "https://github.com/jwarykowski/shepherd/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "97ae2c53459af75d49a4d4ce4dbf47896c134cc86763717be9a870ac736f7c7b"
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
