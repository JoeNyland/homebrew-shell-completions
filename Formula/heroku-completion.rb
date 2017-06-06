class HerokuCompletion < Formula
  desc "Shell completion for Heroku CLI"
  homepage "https://github.com/JoeNyland/heroku-completion"
  url "https://github.com/JoeNyland/heroku-completion/archive/1.0.1.tar.gz"
  sha256 "044d662d2d29cc8e71a86e3a01f9ae54fb78a9ae98a0dba3c6fadcef8806d6a8"
  head "https://github.com/JoeNyland/heroku-completion.git"

  depends_on "heroku" => :run

  def install
    bash_completion.install "heroku-bash-completion.sh" => "heroku-bash-completion"
  end

  test do
    assert_match "-F _heroku_completion",
      shell_output("source #{bash_completion}/heroku-bash-completion && complete -p heroku")
  end
end
