local table_contains = function(table, value)
    for k, v in pairs(table) do
        if v == value then
            return true
        end
    end

    return false
end

return table_contains
