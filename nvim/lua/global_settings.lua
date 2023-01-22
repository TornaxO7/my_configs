local project_settings = {
    project_dir = ".nvim/",
}

local function get_path(filename)
    return project_settings.project_dir .. filename
end

return {
    get_path = get_path,
}
