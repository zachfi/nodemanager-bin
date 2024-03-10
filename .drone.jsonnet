{
  local this = self,

  kind: 'pipeline',
  name: 'ci',
  steps: [
    {
      name: 'build',
      image: 'zachfi/build-image',
      pull: 'always',
      commands: [
        'make check',
      ],
    },
  ],
}
