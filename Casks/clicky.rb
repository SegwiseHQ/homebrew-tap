cask "clicky" do
  version "0.1.0"

  on_arm do
    sha256 "b90fbb9b41c7fc22eb0fc20845a9e123149d891daf27f10b697206a143c7ee07"
    url "https://github.com/SegwiseHQ/clicky/releases/download/v#{version}/clicky-macos-arm64.zip"
  end

  on_intel do
    sha256 "e4f9098416c231418f6e260d1e6c273ba517d406178da8343cfdada0c97e2049"
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
