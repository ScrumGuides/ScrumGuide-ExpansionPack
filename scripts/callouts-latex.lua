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

-- Map callout types to colors and icons
local callout_styles = {
  note = {color = "blue!10", frame = "blue!50", icon = "ℹ", title = "Note"},
  tip = {color = "green!10", frame = "green!50", icon = "💡", title = "Tip"},
  important = {color = "yellow!10", frame = "yellow!50", icon = "⚠", title = "Important"},
  warning = {color = "orange!10", frame = "orange!50", icon = "⚠", title = "Warning"},
  caution = {color = "red!10", frame = "red!50", icon = "⛔", title = "Caution"},
  highlight = {color = "purple!10", frame = "purple!50", icon = "★", title = "Highlight"}
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
  if title == "" then
    title = style.title
  end

  -- Remove the marker paragraph, keep the rest as body
  local body_blocks = {}
  for i = 2, #el.content do
    table.insert(body_blocks, el.content[i])
  end

  -- Start building LaTeX
  local latex = string.format(
    "\\begin{tcolorbox}[colback=%s,colframe=%s,title={%s %s}]\n",
    style.color,
    style.frame,
    style.icon,
    title
  )

  -- Convert body blocks to LaTeX and append
  local body_doc = pandoc.Pandoc(body_blocks)
  local body_latex = pandoc.write(body_doc, "latex")
  
  latex = latex .. body_latex .. "\n\\end{tcolorbox}"

  return pandoc.RawBlock("latex", latex)
end
