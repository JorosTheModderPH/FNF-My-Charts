function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.023 then
        setProperty('health', health- 0.023);
    end
end

function onStepHit()
	if curStep == 388 then --hide
		setProperty('scoreTxt.visible', false);
		setProperty('healthBar.visible', false);
		setProperty('healthBarBG.visible', false);
		setProperty('iconP1.visible', false);
		setProperty('iconP2.visible', false);
		setProperty('botplayTxt.visible', false);
		setProperty('timeBar.visible', false);
		setProperty('timeBarBG.visible', false);
		setProperty('timeTxt.visible', false);
	elseif curStep == 516 then --bring it back
		setProperty('scoreTxt.visible', true);
		setProperty('healthBar.visible', true);
		setProperty('healthBarBG.visible', true);
		setProperty('iconP1.visible', true);
		setProperty('iconP2.visible', true);
		if botPlay == true then --in case it's supposed to stay hidden
			setProperty('botplayTxt.visible', true); 
		end
		setProperty('timeBar.visible', true);
		setProperty('timeBarBG.visible', true);
		setProperty('timeTxt.visible', true);
	end
end

function onUpdate(elapsed)
notehitloltosting = tostring(notehitlol)
setTextString('cm', 'Combos: ' .. getProperty('combo'))
setTextString('sick', 'Sick!: ' .. getProperty('sicks'))
setTextString('good', 'Goods: ' .. getProperty('goods'))
setTextString('bad', 'Bads: ' .. getProperty('bads'))
setTextString('shit', 'Shits: ' .. getProperty('shits'))
setTextString('miss', 'Misses: ' .. getProperty('songMisses'))
-- start of "update", some variables weren't updated yet
-- setTextString('tnh', 'Total Notes Hit: ' + 1)
end

function onUpdate(elasped)
    makeLuaText('customText', 'you suck', 600, 330, 250)
    setTextSize('customText', 30)
    addLuaText('customText')
    setObjectCamera('customText', 'other')
    setProperty('customText.visible', false)
end

function onUpdate(elasped)
setProperty('cpuControlled', false)
end