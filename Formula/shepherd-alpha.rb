class ShepherdAlpha < Formula
  desc "Shepherd alpha: the todo board, plus sending tasks to your coding agent"
  homepage "https://shepherdcli.dev"
  url "https://github.com/jwarykowski/shepherd/archive/refs/tags/v0.21.0-alpha.1.tar.gz"
  version "0.21.0-alpha.1"
  sha256 "b6b735ae685b08b7477473d85161e093603f3e6cc802d96f3cf3a1b4a8dafb7f"
  license "MIT"

  depends_on "go" => :build
  depends_on "jwarykowski/tap/drover"

  conflicts_with "shepherd", because: "both install a `shepherd` binary"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w", output: bin/"shepherd")
  end

  test do
    assert_match "0.21.0-alpha.1", shell_output("#{bin}/shepherd --version")
  end
end
