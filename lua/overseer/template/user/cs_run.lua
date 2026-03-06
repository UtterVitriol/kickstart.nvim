-- dotnet_run.lua
return {
  name = 'dotnetrun',
  params = {
    configuration = {
      type = 'enum',
      desc = 'Debug or Release',
      choices = { 'Debug', 'Release' },
    },
  },
  builder = function(params)
    return {
      cmd = { 'dotnet' },
      args = { 'run', '-c', params.configuration },
      components = { { 'on_output_quickfix', open = true }, 'default' },
    }
  end,
  condition = {
    filetype = { 'cs' },
  },
}
