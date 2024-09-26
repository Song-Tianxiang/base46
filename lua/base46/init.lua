local M = {}

M.get_theme_tb = function(name, type)
  local present, theme = pcall(require, "base46.themes." .. name)

  if present then
    return theme[type]
  else
    error "No such theme!"
  end
end

return M
