class Shepherd < Formula
  desc "Interactive todo board backed by a markdown file"
  homepage "https://github.com/jwarykowski/shepherd"
  url "https://github.com/jwarykowski/shepherd/archive/refs/tags/v0.18.0.tar.gz"
  sha256 "81d538c441f07a50daba297793d37ab12aae576853dba2563f4b05149bf8c869"
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
