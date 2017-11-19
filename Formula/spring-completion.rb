class SpringCompletion < Formula
  desc "Bash completion for Spring"
  homepage "https://github.com/JoeNyland/spring-completion"
  url "https://github.com/JoeNyland/spring-completion/archive/v0.0.3.tar.gz"
  sha256 "942ae314a92db8298c3cee4a0b6a9523ee4b60144e80104245b22aa6287a0b84"
  head "https://github.com/JoeNyland/spring-completion.git"

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
