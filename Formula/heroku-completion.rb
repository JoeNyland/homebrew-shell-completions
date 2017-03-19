class HerokuCompletion < Formula
  desc "Shell completion for Heroku CLI"
  homepage "https://github.com/JoeNyland/heroku-completion"
  url "https://github.com/JoeNyland/heroku-completion/archive/1.0.0.tar.gz"
  sha256 "e0f6f16aabc6516958d7b91bd2a594beb5a86fe86d07c72b9490583f9d7fd124"
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
