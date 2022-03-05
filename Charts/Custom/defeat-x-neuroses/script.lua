function onUpdate()
getProperty ('songMisses')
if getProperty ('songMisses') == 1 then
setProperty('health', 0);
end
end

--If you miss the limit, 1 miss, then death instanly, you are free to remove this script.