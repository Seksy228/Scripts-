gg.alert("Введите пароль")
password = '999'
Result = gg.prompt({'Password-999'},nil,{'number','number'})
if Result[1] == password then
gg.alert('Successfully logged in') 
else
gg.alert('incorrect password')
return
end

function home()
HM = gg.choice({
"MENU",
"AUTHOR",
"EXIT",
},nil,"FaRdYn")
if HM == 1 then funmenu() end
if HM == 2 then create() end
if HM == 3 then exit() end
HOMEDM = -1
end

function funmenu()
FMM = gg.multiChoice({
"NIGHT VISION [DARKER]",
"Jumping to the left and right",
"ANTENNA HACK [LOWERED]",
},nil,'FaRdYn')
if FMM == nil then else
if FMM[1] == true then nightvision() end
if FMM[2] == true then seeinwall() end
if FMM[3] == true then antennahack() end
end
end

function nightvision()
-- main code
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber("1,048,576,000;1,056,964,608:9", gg.TYPE_QWORD)
gg.refineNumber("1,056,964,608", gg.TYPE_QWORD)
gg.getResults(100)
gg.editAll("1,097,859,072", gg.TYPE_QWORD)
gg.clearResults()
gg.searchNumber("4,715,268,810,989,305,856;1,097,859,072::5", gg.TYPE_QWORD)
gg.refineNumber("1,097,859,072", gg.TYPE_QWORD)
gg.getResults(100)
gg.editAll("1,000,000,000", gg.TYPE_QWORD)
gg.toast("Включен")
end

function seeinwall()
-- main code
gg.searchNumber("0.07", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.1", gg.TYPE_FLOAT)
gg.setVisible(false)
gg.clearResults()
gg.toast("Включен")
end

function antennahack()
gg.searchNumber("953210820", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.processResume()
revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1084227584", gg.TYPE_DWORD)

gg.searchNumber("1.0;2.0;3.0;10.0::", gg.TYPE_FLOAT)
gg.refineNumber("10.0", gg.TYPE_FLOAT)
local heightResults = gg.getResults(100)
if heightResults ~= nil then
    for i, v in ipairs(heightResults) do
        v.value = 5.5
        v.freeze = true
    end
    gg.setValues(heightResults)
    gg.addListItems(heightResults)
end

gg.clearResults()
gg.toast("ANTENNA HACK")
end

function exit()
os.exit()
gg.toast("Спасибо за использование ")
end

function create()
gg.alert("SCRIPT AUTHOR FaRdYn Channel @ClumsyFaR")
gg.toast("🔥скрипт @ClumsyFaR🔥")
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
end

while true do
if gg.isVisible(false) then
HOMEDM = 1
gg.setVisible(false)
end
if HOMEDM == 1 then home() end
end

if XGCK == 1 then
START()
end
end