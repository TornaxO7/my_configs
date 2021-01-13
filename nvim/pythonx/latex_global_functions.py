# ========================================
# Global functions for latex snippets 
# ========================================
from pynvim import attach
vim = attach('child', argv=["/bin/env", "nvim", "--embed", "--headless"])

texMathZones = [
	'texMathZone' + x for x in [
		'A',
		'AS',
		'B',
		'BS',
		'C',
		'CS',
		'D',
		'DS',
		'E',
		'ES',
		'F',
		'FS',
		'G',
		'GS',
		'H',
		'HS',
		'I',
		'IS',
		'J',
		'JS',
		'K',
		'KS',
		'L',
		'LS',
		'DS',
		'V',
		'W',
		'X',
		'Y',
		'Z',
		'AmsA',
		'AmsB',
		'AmsC',
		'AmsD',
		'AmsE',
		'AmsF',
		'AmsG',
		'AmsAS',
		'AmsBS',
		'AmsCS',
		'AmsDS',
		'AmsES',
		'AmsFS',
		'AmsGS' 
		]
	]
texIgnoreMathZones = ['texMathText']
texMathZoneIds = vim.eval('map(' + str(texMathZones) + ", 'hlID(v:val)')")
texIgnoreMathZoneIds = vim.eval('map('+str(texIgnoreMathZones)+", 'hlID(v:val)')")

ignore = texIgnoreMathZoneIds[0]

def math():
	synstackids = vim.eval("synstack(line('.'), col('.') - (col('.')>=2 ? 1 : 0))")
	try:
		first = next(i for i in reversed(synstackids) if i in texIgnoreMathZoneIds or i in texMathZoneIds)
		return first != ignore
	except StopIteration:
		return False
