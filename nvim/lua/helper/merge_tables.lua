local merge_tables = function(first_table, second_table)
    local new_table = {}

    for key, value in pairs(first_table) do
        new_table[key] = value
    end

    for key, value in pairs(second_table) do
        new_table[key] = value
    end

    return new_table
end

return merge_tables
