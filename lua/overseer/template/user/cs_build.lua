return {
  name = 'dotnetbuild',
  params = {
    configuration = {
      type = 'enum',
      desc = 'Debug or Release',
      choices = { 'Debug', 'Release' },
      -- default = 'Release',
    },
  },
  builder = function(params)
    return {
      cmd = { 'dotnet' },
      args = { 'build', '-c', params.configuration },
    }
  end,
  condition = {
    filetype = { 'cs' },
  },
}
