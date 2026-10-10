class Keybars < Formula
  desc "Music equaliser on your keyboard's backlight"
  homepage "https://github.com/jwarykowski/keybars"
  url "https://github.com/jwarykowski/keybars/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "50616139fbf0acc388e208415fb2d855163ea3f9abc773bd794e87c041fd6bbe"
  license "MIT"
  head "https://github.com/jwarykowski/keybars.git", branch: "main"

  depends_on "go" => :build
  depends_on "cava"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  def caveats
    <<~EOS
      keybars drives ZSA keyboards through Keymapp: start Keymapp and enable
      its API. On macOS, cava needs a loopback device such as BlackHole to
      hear what the system plays.
    EOS
  end

  test do
    assert_match "music equaliser", shell_output("#{bin}/keybars help")
  end
end
