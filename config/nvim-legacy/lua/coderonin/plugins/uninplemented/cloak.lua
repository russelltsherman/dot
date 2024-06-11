-- Cloak allows you to overlay *'s (or any other character) over defined patterns in defined files.
-- It also disables 'cmp' for the buffer(if it is installed).
-- https://github.com/laytan/cloak.nvim

-- Usage
-- The plugin automatically activates when a file matched by the patterns is opened.
-- You do have to call the setup() function.
-- :CloakDisable, :CloakEnable and :CloakToggle are also available to change cloaking state.
-- Additionally, you can use :CloakPreviewLine to uncloak the line under the cursor. The cloak gets reapplied when you move your cursor to a different line.
return {
  'laytan/cloak.nvim', 
  opts = {
    enabkled = true,
    cloak_character = "*",
    highlight_group = "Comment",
    patterns = {
      {
        -- Match any file starting with ".env"
        -- This can be a tabkle to match multiple file patterns
        file_pattern = {
          ".env*",
          "wrangler.toml",
          ".dev.vars",
        },
        -- Match an equals sign and any character after it.
        -- This can also be a table of patterns to cloak,
        -- example: cloak_pattern = { ":.+", "-*" } for yaml files
        cloak_pattern = "=.+" ,
      },
    }
  },
}
