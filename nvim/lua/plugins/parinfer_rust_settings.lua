return {
    "eraserhd/parinfer-rust",
    lazy = false,
    dependencies = { "elkowar/yuck.vim" },
    build = function() os.execute("cargo build --release") end,
}
