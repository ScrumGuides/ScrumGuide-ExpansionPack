-- Convert Hugo/Obsidian-style callouts inside blockquotes to Divs:
-- > [!HIGHLIGHT] Title
-- > Body...
--
-- Output:
-- ::: {.callout .highlight data-title="Title"}
--   Body...
-- :::

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

function BlockQuote(el)
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

  -- Remove the marker paragraph, keep the rest as body
  local body_blocks = {}
  for i = 2, #el.content do
    table.insert(body_blocks, el.content[i])
  end

  local classes = { "callout", callout_type:lower() }
  local attrs = {}
  if title ~= "" then
    attrs["data-title"] = title
  end

  return pandoc.Div(body_blocks, pandoc.Attr("", classes, attrs))
end
