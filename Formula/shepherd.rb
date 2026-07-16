class Shepherd < Formula
  desc "Interactive todo board backed by a markdown file"
  homepage "https://github.com/jwarykowski/shepherd"
  url "https://github.com/jwarykowski/shepherd/archive/refs/tags/v0.14.0.tar.gz"
  sha256 "861e0cfcf998f079e1831abfbbf6911cd7a06109d034cbf02032669909450c6e"
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
