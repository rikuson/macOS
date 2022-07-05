require 'spec_helper'

[
  'bat',
  'ffmpeg',
  'fzf',
  'ghc',
  'git',
  'gnu-sed',
  'grex',
  'hexyl',
  'htop',
  'httpie',
  'imagemagick',
  'jq',
  'lazygit',
  'lsd',
  'neofetch',
  'neovim',
  'nkf',
  'nodebrew',
  'pandoc',
  'pass',
  'pass-otp',
  'pict',
  'pinentry-mac',
  'poppler',
  'postgresql',
  'qrencode',
  'tmux',
  'universal-ctags',
  'vim',
  'w3m',
].each do |item|
  describe package(item) do
    it { should be_installed }
  end
end

[
  'ag',
  'node',
  'npm',
].each do |item|
  describe command("which #{item}") do
    its(:exit_status) { should eq 0 }
  end
end
