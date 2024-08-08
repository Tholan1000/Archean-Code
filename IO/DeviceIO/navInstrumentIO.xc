var $navInstrumentAlias = "navInstrument"

; Channels that can be send to the nav instrument
const $navInstrumentLocCelestialChannel = 0
const $navInstrumentDistaceChannel = 1
const $navInstrumentLocDirXChannel = 2
const $navInstrumentLocDirYChannel = 3
const $navInstrumentLocDirZChannel = 4

; Channel that cab read from the nav instrument
const $navInstrumentPitchChannel = 4
const $navInstrumentRollChannel = 5

function @setNavInstrumentAlias($alias : text)
	$navInstrumentAlias = $alias

function @sendNavLocCelestial($celestial : text)
	output_text($navInstrumentAlias, $navInstrumentLocCelestialChannel, $celestial)

function @sendNavInstrumentDistance($navDistance : number)
	output_number($navInstrumentAlias, $navInstrumentDistaceChannel, $navDistance)

function @sendNavInstrumentLocDirX($navDirection : number)
	output_number($navInstrumentAlias, $navInstrumentLocDirXChannel, $navDirection)
	
function @sendNavInstrumentLocDirY($navDirection : number)
	output_number($navInstrumentAlias, $navInstrumentLocDirYChannel, $navDirection)
	
function @sendNavInstrumentLocDirZ($navDirection : number)
	output_number($navInstrumentAlias, $navInstrumentLocDirZChannel, $navDirection)

function @readNavInstrumentPitch() : number
	input_number($navInstrumentAlias, $navInstrumentPitchChannel)

function @readNavInstrumentRoll() : number
	input_number($navInstrumentAlias, $navInstrumentRollChannel)