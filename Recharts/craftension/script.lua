function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.0 then --prevent opponent from killing by just singing too long, but no
        setProperty('health', health- 0.035); --amount to lose on normal notes
    end
end

function goodNoteHit(id, direction, noteType, isSustainNote ) --health system, if you modify this you have skill issue 
	setProperty('health', getProperty('health')+ 0.0552)
	if isSustainNote then
		setProperty('health', getProperty('health')- 0.0575)
	end
end

function noteMiss(id, direction, noteType, isSustainNote) --health system, if you modify this, you have skill issue
		setProperty('health', getProperty('health')- 0.138)
		setProperty('songScore', getProperty('songScore')- 15)
end

function noteMissPress(id, direction, noteType, isSustainNote) --health system, if you modify this, you have skill issue
		setProperty('health', getProperty('health')- 0.138)
		setProperty('songScore', getProperty('songScore')- 15)
end 