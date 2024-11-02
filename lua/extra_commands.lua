-- vim.api.nvim_create_user_command(
--   'Run',
--   function()
--     -- Get the current file path and extension
--     local current_file = vim.fn.expand('%')
--     local file_extension = vim.fn.expand('%:e')
--
--     -- Check file extension and run appropriate command
--     if file_extension == 'cpp' then
--       -- Compile C++ file
--       vim.cmd('!g++ ' .. current_file .. ' -o output -Wextra -O3 && ./output')
--     elseif file_extension == 'py' then
--       -- Run Python file
--       vim.cmd('!python3 ' .. current_file)
--     else
--       print("Unsupported file type: " .. file_extension)
--     end
--   end,
--   { nargs = 0 }  -- No arguments required for this command
-- )


vim.api.nvim_create_user_command(
  'Run',
  function()
    -- Get the current file path and extension
    local current_file = vim.fn.expand('%')
    local file_extension = vim.fn.expand('%:e')

    -- Check file extension and run appropriate command in a new terminal buffer
    if file_extension == 'cpp' then
      -- Compile C++ file and run it in a terminal
      vim.cmd('vsplit | term g++ ' .. current_file .. ' -o output -std=c++20 -Wextra -O3 && ./output')
    elseif file_extension == 'py' then
      -- Run Python file in a terminal
      vim.cmd('vsplit | term python3 ' .. current_file)
    else
      print("Unsupported file type: " .. file_extension)
    end
  end,
  { nargs = 0 }  -- No arguments required for this command
)

