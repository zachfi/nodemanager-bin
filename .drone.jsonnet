{
  local this = self,

  kind: 'pipeline',
  name: 'ci',
  steps: [
    {
      name: 'build',
      image: 'zachfi/shell',
      pull: 'always',
      commands: [
        'sudo chown -R makepkg .',
        'make check',
      ],
    },
  ],
}
