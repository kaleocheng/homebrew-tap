class Zz < Formula
    desc "Get the intersection and difference between multiple files"
    url "https://github.com/kaleocheng/zz.git"
    sha256 "ed6fc6e2f60aa6167b349ad300e959d11735e18b45e6de6e6bc461b0bda39358"
    head "https://github.com/kaleocheng/zz.git"
  
    depends_on "dep" => :build
    depends_on "go" => :build
  
    def install
      ENV["GOPATH"] = buildpath
      (buildpath/"src/github.com/kaleocheng/zz").install buildpath.children
      cd "src/github.com/kaleocheng/zz" do
        system "dep", "ensure"
        system "go", "build", "-o", "bin/zz", "main.go"
        bin.install "bin/zz"
      end
    end
  
    test do
      system "#{bin}/zz -v"
    end
  end
