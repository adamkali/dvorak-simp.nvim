local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

local simp_builtin = {
    { name = "CTRL", mapping = "<C-++>" },
    { name = "ALT",  mapping = "<A-++>" },
    { name = "CTLT", mapping = "<C-A-++>" },
}

local function simp(selleader, seltype, selactuation, remap)
    local leader = selleader:gsub("++", "")
    local mapping = leader .. seltype .. selactuation
    map("n", mapping, remap, opts)
end

local function simp_replace(leader)
    local returnable_leader = leader
    for name, mapping in pairs(simp_builtin) do
        if leader == name then
            returnable_leader = mapping
        end
    end
    return returnable_leader
end

local function setup_leaders(leaders)
    vim.g.simp_leader = simp_replace(leaders.minor or "ALT")
    vim.g.simp_major_leader = simp_replace(leaders.major or "CTLT")
end

local function setup_better_writes()
    map("n", "<C-a>", ":wa<CR>", opts)
    map("n", "<C-q>", ":bd!<CR>", opts)
end

local function setup_semicolon_hack()
    map("n", ";", ":", opts)
end

local function setup_copy_leader()
    map("n", "Y", '"+y', opts)
    map("v", "Y", '"+y', opts)
end

local function setup_yank_selection_shortcuts()
    local min = vim.g.simp_leader
    local maj = vim.g.simp_major_leader

    -- Yank -----------------------
    simp(min, "y", "[", "yi[") -- Yank inside square brackets in normal mode
    simp(min, "y", "{", "yi{") -- Yank inside curly braces in normal mode
    simp(min, "y", "(", "yi(") -- Yank inside parentheses in normal mode
    simp(min, "y", "B", "yiB") -- Yank inside block (including whitespace) in normal mode
    simp(min, "y", "p", "yip") -- Yank inside paragraph in normal mode
    simp(min, "y", "'", "yi'") -- Yank inside single quotes in normal mode
    simp(min, "y", '"', 'yi"') -- Yank inside double quotes in normal mode

    simp(maj, "y", "[", "ya[") -- Yank around square brackets in normal mode
    simp(maj, "y", "{", "ya{") -- Yank around curly braces in normal mode
    simp(maj, "y", "(", "ya(") -- Yank around parentheses in normal mode
    simp(maj, "y", "B", "yaB") -- Yank around block (including whitespace) in normal mode
    simp(maj, "y", "p", "yap") -- Yank around paragraph in normal mode
    simp(maj, "y", "'", "ya'") -- Yank around single quotes in normal mode
    simp(maj, "y", '"', 'ya"') -- Yank around double quotes in normal mode
end

local function setup_copy_selection_shortcuts()
    local min = vim.g.simp_leader
    local maj = vim.g.simp_major_leader

    -- Copy into register ----------
    simp(min, "Y", "[", '"+yi[')          -- Copy inside square brackets in normal mode             
    simp(min, "Y", "{", '"+yi{')          -- Copy inside curly braces in normal mode
    simp(min, "Y", "(", '"+yi(')          -- Copy inside parentheses in normal mode
    simp(min, "Y", "B", '"+yiB')          -- Copy inside block (including whitespace) in normal modein normal mode
    simp(min, "Y", "p", '"+yip')          -- Copy inside paragraph in normal mode
    simp(min, "Y", "'", [["+yi"]])        -- Copy inside single quotes in normal mode
    simp(min, "Y", '"', [["+yi"]])        -- Copy inside double quotes in normal mode
    simp(maj, "Y", "[", '"+ya[')          -- Copy around square brackets in normal mode             
    simp(maj, "Y", "{", '"+ya{')          -- Copy around curly braces in normal mode
    simp(maj, "Y", "(", '"+ya(')          -- Copy around parentheses in normal mode
    simp(maj, "Y", "B", '"+yaB')          -- Copy around block (including whitespace) in normal modein normal mode
    simp(maj, "Y", "p", '"+yap')          -- Copy around paragraph in normal mode
    simp(maj, "Y", "'", [["+ya"]])        -- Copy around single quotes in normal mode
    simp(maj, "Y", '"', [["+ya"]])        -- Copy around double quotes in normal mode
end

local function setup_change_selection_shortcuts()
    -- Change Selection ----------
    local min = vim.g.simp_leader
    local maj = vim.g.simp_major_leader

    simp(min, "c", "[", "ci[") -- Change inside square brackets in normal mode
    simp(min, "c", "{", "ci{") -- Change inside curly braces in normal mode
    simp(min, "c", "(", "ci(") -- Change inside parentheses in normal mode
    simp(min, "c", "B", "ciB") -- Change inside block (including whitespace) in normal mode
    simp(min, "c", "p", "cip") -- Change inside paragraph in normal mode
    simp(min, "c", "'", "ci'") -- Change inside single quotes in normal mode
    simp(min, "c", '"', 'ci"') -- Change inside double quotes in normal mode

    simp(maj, "c", "[", "ca[") -- Change around square brackets in normal mode
    simp(maj, "c", "{", "ca{") -- Change around curly braces in normal mode
    simp(maj, "c", "(", "ca(") -- Change around parentheses in normal mode
    simp(maj, "c", "B", "caB") -- Change around block (including whitespace) in normal mode
    simp(maj, "c", "p", "cap") -- Change around paragraph in normal mode
    simp(maj, "c", "'", "ca'") -- Change around single quotes in normal mode
    simp(maj, "c", '"', 'ca"') -- Change around double quotes in normal mode
end

local function setup_visual_selection_shortcuts()
    -- Visual Selection  ----------
    local min = vim.g.simp_leader
    local maj = vim.g.simp_major_leader

    simp(min, "v", "[", "vi[") -- Visual Select inside square brackets in normal mode
    simp(min, "v", "{", "vi{") -- Visual Select inside curlv braces in normal mode
    simp(min, "v", "(", "vi(") -- Visual Select inside parentheses in normal mode
    simp(min, "v", "B", "viB") -- Visual Select inside block (including whitespace) in normal mode
    simp(min, "v", "p", "vip") -- Visual Select inside paragraph in normal mode
    simp(min, "v", "'", "vi'") -- Visual Select inside single quotes in normal mode
    simp(min, "v", '"', 'vi"') -- Visual Select inside double quotes in normal mode

    simp(maj, "v", "[", "va[") -- Visual Select around square brackets in normal mode
    simp(maj, "v", "{", "va{") -- Visual Select around curlv braces in normal mode
    simp(maj, "v", "(", "va(") -- Visual Select around parentheses in normal mode
    simp(maj, "v", "B", "vaB") -- Visual Select around block (including whitespace) in normal mode
    simp(maj, "v", "p", "vap") -- Visual Select around paragraph in normal mode
    simp(maj, "v", "'", "va'") -- Visual Select around single quotes in normal mode
    simp(maj, "v", '"', 'va"') -- Visual Select around double quotes in normal mode
end

local function setup_normal_move()
    -- Normal move
    map('n', 't', 'j', opts)
    map('n', 'n', 'k', opts)
    map('n', 's', 'l', opts)
    map('n', 'k', 'n', opts)
end

local function setup_visual_move()
    -- Visual move
    map('v', 't', 'j', opts)
    map('v', 'n', 'k', opts)
    map('v', 's', 'l', opts)
    map('v', 'k', 'n', opts)
end

local function setup_shift_up()
    -- Shift move
    map("n", "H", ":wincmd h <CR>", opts)
    map("n", "T", ":wincmd j <CR>", opts)
    map("n", "N", ":wincmd k <CR>", opts)
    map("n", "S", ":wincmd l <CR>", opts)
    map('n', 'K', 'N', opts)
end

return {
    setup = function(config)
        if config ~= nil then
            setup_leaders(config.leaders)
            if config.better_writes or config.all then
                setup_better_writes()
            end
            if config.semicolon_hack or config.all then
                setup_semicolon_hack()
            end
            if config.copy_leader or config.all then
                setup_copy_leader()
            end
            if config.yank_selection_shortcuts or config.all then
                setup_yank_selection_shortcuts()
            end
            if config.copy_selection_shortcuts or config.all then
                setup_copy_selection_shortcuts()
            end
            if config.change_selection_shortcuts or config.all then
                setup_change_selection_shortcuts()
            end
            if config.visual_selection_shortcuts or config.all then
                setup_visual_selection_shortcuts()
            end
            if config.normal_move or config.all then
                setup_normal_move()
            end
            if config.visual_move or config.all then
                setup_visual_move()
            end
            if config.shift_move or config.all then
                setup_shift_up()
            end
        end
    end
}
