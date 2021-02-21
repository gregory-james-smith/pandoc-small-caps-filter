
-- Strings wrapped first in emphasis and then strong is transformed into small caps
-- This would affect Markdown text that is bracketted between three asterisks or underscores e.g. ***small caps***.
function Strong(elem)
    local list = elem.c
    if count(list) == 1 then
        local content = list[1]
        if content.t == "Emph" then
            local sc = pandoc.SmallCaps(content.c)
            return sc
        end
    end
    return elem
end

function count(table)
  local count = 0
  for _ in pairs(table) do count = count + 1 end
  return count
end
