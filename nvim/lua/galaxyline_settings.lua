-- =================
-- Requirements 
-- =================
local diagnostic = require('galaxyline.provider_diagnostic')
local vcs = require('galaxyline.provider_vcs')
local fileinfo = require('galaxyline.provider_fileinfo')
local extension = require('galaxyline.provider_extensions')
local colors = require('galaxyline.colors')
local api_buffer = require('galaxyline.provider_buffer')
local lspclient = require('galaxyline.provider_lsp')
local condition = require('galaxyline.condition')

-- =====================
-- Global variables 
-- =====================
local buffer
local git
local extensions
local diagnostics
local lsp
local my_icons

-- ====================
-- Initializsation 
-- ====================

buffer = {
   icon = api_buffer.get_buffer_type_icon,
   ft = api_buffer.get_buffer_filetype,
   lc = fileinfo.line_column,
   ff = fileinfo.get_file_format,
   fe = fileinfo.get_file_encode,
   fs = fileinfo.get_file_size,
   fi = fileinfo.get_file_icon,
   fn = fileinfo.get_current_file_name,
   lp = fileinfo.current_line_percent,
}

git = {
    branch = vcs.get_git_branch,
    add = vcs.get_diff_add,
    modified = vcs.diff_modified,
    removed = vcs.diff_remove
}

extensions = {
    scrollbar = extension.scrollbar_instance,
    vistaplugin = extension.vista_nearest,
}

diagnostics = {
    error = diagnostic.get_diagnostic_error,
    warn = diagnostic.get_diagnostic_warn,
    hint = diagnostic.get_diagnostic_hint,
    info = diagnostic.get_diagnostic_info
}

lsp = lspclient.get_lsp_client

-- get file icon color
my_icons = require('galaxyline.provider_fileinfo').define_file_icon()

condition.check_git_workspace()
