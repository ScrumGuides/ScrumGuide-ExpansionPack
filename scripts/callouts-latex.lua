-- Convert Hugo/Obsidian-style callouts to LaTeX tcolorbox for PDF output
-- > [!HIGHLIGHT] Title
-- > Body...
--
-- Output: LaTeX environment with tcolorbox

local function starts_with_callout_marker(inlines)
  if not inlines or #inlines == 0 then return nil end
  if inlines[1].t ~= "Str" then return nil end

  local s = inlines[1].text
  local t = s:match("^%[!([A-Za-z0-9_-]+)%]$")
  if t then return t end

  -- Handle "[!TYPE]" as prefix in same Str (rare but possible)
  t = s:match("^%[!([A-Za-z0-9_-]+)%]")
  return t
end

local function inline_text(inlines)
  return pandoc.utils.stringify(inlines or {})
end

-- Map callout types to colors and icons (matching Bootstrap alerts)
local callout_styles = {
  note = {color = "cyan!5", frame = "cyan!50!blue", icon = "ℹ️", title = "Note"},
  tip = {color = "green!5", frame = "green!50!black", icon = "💡", title = "Tip"},
  important = {color = "yellow!10", frame = "yellow!50!orange", icon = "⚠️", title = "Important"},
  warning = {color = "orange!10", frame = "orange!50!red", icon = "⚠️", title = "Warning"},
  caution = {color = "red!10", frame = "red!50!black", icon = "🚨", title = "Caution"},
  highlight = {color = "gray!5", frame = "gray!30", icon = "", title = ""}
}

function BlockQuote(el)
  -- Only process if we're outputting to LaTeX/PDF
  if FORMAT ~= "latex" then
    return nil
  end

  if not el.content or #el.content == 0 then return nil end

  local first = el.content[1]
  if first.t ~= "Para" then return nil end

  local callout_type = starts_with_callout_marker(first.content)
  if not callout_type then return nil end

  -- Extract title from the remainder of the first paragraph
  local title_inlines = {}
  for i = 2, #first.content do
    table.insert(title_inlines, first.content[i])
  end
  local title = inline_text(title_inlines):gsub("^%s+", ""):gsub("%s+$", "")

  -- Get style for this callout type (default to note if unknown)
  local type_lower = callout_type:lower()
  local style = callout_styles[type_lower] or callout_styles.note
  
  -- Use custom title if provided, otherwise use default
  local display_title = ""
  if title ~= "" then
    display_title = title
  elseif style.title ~= "" then
    display_title = style.title
  end

  -- Remove the marker paragraph, keep the rest as body
  local body_blocks = {}
  for i = 2, #el.content do
    table.insert(body_blocks, el.content[i])
  end
  
  -- Remove trailing empty paragraphs
  while #body_blocks > 0 do
    local last = body_blocks[#body_blocks]
    if last.t == "Para" and #last.content == 0 then
      table.remove(body_blocks)
    else
      break
    end
  end

  -- Escape special LaTeX characters in title
  display_title = display_title:gsub("([\\{}$&#_%%])", "\\%1")

  -- Handle HIGHLIGHT specially (like content-highlight div)
  if type_lower == "highlight" then
    -- Create a Div with RawBlock wrappers
    local blocks = {pandoc.RawBlock("latex", "\\begin{tcolorbox}[colback=gray!5,colframe=gray!30,boxrule=0.5pt,sharp corners,left=10pt,right=10pt,top=5pt,bottom=5pt,before skip=10pt,after skip=10pt")}
    
    if display_title ~= "" then
      blocks[1] = pandoc.RawBlock("latex", "\\begin{tcolorbox}[colback=gray!5,colframe=gray!30,boxrule=0.5pt,sharp corners,left=10pt,right=10pt,top=5pt,bottom=5pt,before skip=10pt,after skip=10pt,title={" .. display_title .. "}]")
    else
      blocks[1] = pandoc.RawBlock("latex", "\\begin{tcolorbox}[colback=gray!5,colframe=gray!30,boxrule=0.5pt,sharp corners,left=10pt,right=10pt,top=5pt,bottom=5pt,before skip=10pt,after skip=10pt]")
    end
    
    -- Add body blocks
    for _, block in ipairs(body_blocks) do
      table.insert(blocks, block)
    end
    
    table.insert(blocks, pandoc.RawBlock("latex", "\\end{tcolorbox}"))
    
    return blocks
  end

  -- Start building LaTeX for alert-style callouts
  local latex_open = string.format(
    "\\begin{tcolorbox}[colback=%s,colframe=%s,boxrule=0.8pt,sharp corners,left=10pt,right=10pt,top=8pt,bottom=5pt,before skip=10pt,after skip=10pt",
    style.color,
    style.frame
  )
  
  -- Add title with icon if present
  if display_title ~= "" and style.icon ~= "" then
    latex_open = latex_open .. string.format(",title={%s %s}]", style.icon, display_title)
  elseif display_title ~= "" then
    latex_open = latex_open .. string.format(",title={%s}]", display_title)
  elseif style.icon ~= "" then
    latex_open = latex_open .. string.format(",title={%s}]", style.icon)
  else
    latex_open = latex_open .. "]"
  end

  -- Build blocks array
  local blocks = {pandoc.RawBlock("latex", latex_open)}
  
  for _, block in ipairs(body_blocks) do
    table.insert(blocks, block)
  end
  
  table.insert(blocks, pandoc.RawBlock("latex", "\\end{tcolorbox}"))
  
  return blocks
end

