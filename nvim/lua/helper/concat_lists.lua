local function concat_lists(list1, list2)
    local t = {}

    for _, v in pairs(list1) do
        table.insert(t, v)
    end

    for _, v in pairs(list2) do
        table.insert(t, v)
    end

    return t
end

return concat_lists
