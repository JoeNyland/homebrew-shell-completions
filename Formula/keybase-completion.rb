class KeybaseCompletion < Formula
  desc "Bash-Completion for keybase.io Command-line Client"
  homepage "https://github.com/dtiersch/keybase-completion"
  url "https://github.com/dtiersch/keybase-completion.git"

  def install
    bash_completion.install "keybase"
  end

  test do
    assert_match "-F _keybase",
      shell_output("source #{bash_completion}/keybase && complete -p keybase")
  end
end
