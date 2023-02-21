return function(config)
  local max = 0
  if #config.digits < config.span or config.span < 0 then error('Invalid span') end
  for i = 1, #config.digits - config.span + 1 do
    local match, num = config.digits:sub(i,i + config.span - 1), 1
    for j=1,#match do num = num * match:sub(j, j) end
    if num > max then max = num end
  end
  return max
end

