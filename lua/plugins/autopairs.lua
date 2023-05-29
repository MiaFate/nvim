--return {
--  "windwp/nvim-autopairs",
--  lazy = true,
--  config = true,
--}
return {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
}
