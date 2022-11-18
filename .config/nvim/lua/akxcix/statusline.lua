function GitBranch()
  branch = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")

  return branch
end

function StatuslineGit()
  branchname = GitBranch()
  if (string.len(branchname) > 0) then 
      sl = '  '..branchname..' '
  else
      sl = ''
  end

  return sl
end

statusline = ""
statusline = statusline .. "%#PmenuSel#"
statusline = statusline .. "%{StatuslineGit()}"

--vim.opt.statusline = statusline
--vim.opt.laststatus = 2

