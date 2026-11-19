class Burner < Formula
  desc "Throwaway Linux VMs on your own hardware"
  homepage "https://github.com/patrickhere/burner"
  url "https://github.com/patrickhere/burner/archive/12a8853001945edee464e073ede55df86f445735.tar.gz"
  version "0.1.1"
  sha256 "a43b04013ada3ae9afdd360649bdcb0be03829fe83055537671546d118e99ee1"
  license any_of: ["MIT", "Apache-2.0"]

  depends_on arch: :arm64
  depends_on "lima"
  depends_on :macos

  def install
    bin.install "dist/macos/burner"
    bin.install_symlink "burner" => "burner-tui"
  end

  def caveats
    <<~EOS
      burner needs linux with kvm, so on a mac it runs inside a lima VM.
      set it up once (a few minutes):
        burner setup
      needs an M3 or newer with macOS 15 or later.
    EOS
  end

  test do
    assert_match "burner setup", shell_output("#{bin}/burner --help")
  end
end
