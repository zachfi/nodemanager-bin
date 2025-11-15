{
  local this = self,

  kind: 'pipeline',
  name: 'ci',
  steps: [
    {
      name: 'build',
      image: 'reg.dist.svc.cluster.znet:5000/zachfi/shell',
      pull: 'always',
      commands: [
        'sudo chown -R makepkg .',
        'make check',
      ],
    },
  ],
  trigger: {
    branch: ['main'],
  },
}
