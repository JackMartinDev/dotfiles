return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    harpoon.setup({
      settings = {
        save_on_toggle = true,
      },
    })

    --Setup telescope
    vim.keymap.set("n", "<leader>h", function() harpoon:list():append() end, { desc = 'Add buffer to the [H]arpoon list' })
    vim.keymap.set("n", "<leader>l", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "[L]ist all of the harpoon buffers"})

    vim.keymap.set("n", "<leader>1", function() harpoon:list():select(1) end, {desc = "Move to harpoon buffer 1"})
    vim.keymap.set("n", "<leader>2", function() harpoon:list():select(2) end, {desc = "Move to harpoon buffer 2"})
    vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end, {desc = "Move to harpoon buffer 3"})
    vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end, {desc = "Move to harpoon buffer 4"})
    vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end, {desc = "Move to harpoon buffer 5"})
    vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end, {desc = "Move to harpoon buffer 6"})

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
    vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
  end,
}
