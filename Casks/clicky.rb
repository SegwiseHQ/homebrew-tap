cask "clicky" do
  version "0.1.0"

  on_arm do
    sha256 "a194970533ea764ca23afcc77f80d60f209914e53dbe94590cde7c6e52ba2162"
    url "https://github.com/SegwiseHQ/clicky/releases/download/v#{version}/clicky-macos-arm64.zip"
  end

  on_intel do
    sha256 "56455f9a3270a489556abd1faa7e9389129c3954d13ab9135672d7c9d8db261e"
    url "https://github.com/SegwiseHQ/clicky/releases/download/v#{version}/clicky-macos-x86_64.zip"
  end

  name "Clicky"
  desc "Free, lightweight ClickHouse desktop client"
  homepage "https://github.com/SegwiseHQ/clicky"

  app "clicky.app"

  zap trash: [
    "~/Library/Application Support/clicky",
  ]
end
