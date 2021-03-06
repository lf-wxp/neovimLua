local status, harpoon = pcall(require, "harpoon")
if not status then
  vim.notify("没有找到 harpoon")
  return
end

harpoon.setup({
  mark_branch = true,
})

local status, telescope = pcall(require, "telescope")
if not status then
  vim.notify("没有找到 telescope")
  return
end
pcall(telescope.load_extension, "harpoon")
