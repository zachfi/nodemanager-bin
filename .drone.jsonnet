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
        'make check',
      ],
    },
  ],
}
