for k in pairs(package.loaded) do
    if k:match(".*forestfloor.*") then package.loaded[k] = nil end
end

require('forestfloor').setup()
require('forestfloor').colorscheme()
