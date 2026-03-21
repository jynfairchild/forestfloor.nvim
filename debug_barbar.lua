local lines = {}
for _, hl in ipairs(vim.fn.getcompletion('*', 'highlight')) do
  local info = vim.api.nvim_get_hl(0, { name = hl })
  if next(info) and (hl:match('Added') or hl:match('Change') or hl:match('Delete') or hl:match('Diff') or hl:match('Git') or hl:match('git') or hl:match('ADDED') or hl:match('CHANGE') or hl:match('DELETE')) then
    local parts = {}
    for k, v in pairs(info) do
      if k == 'fg' or k == 'bg' or k == 'sp' then
        table.insert(parts, k .. '=#' .. string.format('%06x', v))
      else
        table.insert(parts, k .. '=' .. tostring(v))
      end
    end
    table.insert(lines, '| ' .. hl .. ' | ' .. table.concat(parts, ', ') .. ' |')
  end
end

table.insert(lines, 1, '| Group | Values |')
table.insert(lines, 2, '|---|---|')

local path = '/Users/dangercat/Documents/GitHub/forestfloor.nvim/debug_output.md'
vim.fn.writefile(lines, path)
print('Wrote ' .. #lines .. ' lines to ' .. path)
