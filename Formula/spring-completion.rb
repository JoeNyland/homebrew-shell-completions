class SpringCompletion < Formula
  desc "Bash completion for Spring"
  homepage "https://github.com/JoeNyland/spring_bash_completion"
  url "https://github.com/JoeNyland/spring_bash_completion/archive/v0.0.2.tar.gz"
  sha256 "3351473ffb0a76aaabf6967757a2d84541ad34e42cfb91cca5ca57552880c92a"
  head "https://github.com/JoeNyland/spring_bash_completion.git"

  bottle :unneeded

  depends_on "rake-completion"

  def install
    bash_completion.install "spring.sh" => "spring"
  end

  test do
    assert_match "-F _spring",
      shell_output("source #{bash_completion}/spring && complete -p spring")
  end
end
