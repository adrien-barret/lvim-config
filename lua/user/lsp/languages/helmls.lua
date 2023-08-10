vim.filetype.add({
  extension = {
    gotmpl = 'helm',
  },
  pattern = {
    ['.*/templates/.*%.yaml'] = 'helm',
    ['.*/templates/.*%.tpl'] = 'helm',
    ['helmfile.*%.yaml'] = 'helm'
  },
})
