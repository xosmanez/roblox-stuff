-- RussianWare / build: Dev 

--[[
  Changelog: 
  * Added more kill says
  * Fixed Kill all
  * Fixed Auto wall
  * Added Anti Aims

]]


if getgenv().russianware then
    return
  end
  getgenv().rware = {}
  getgenv().rware.loaded = false
  
  if not game:IsLoaded() then
    game.Loaded:Wait()
  end
  
  hookfunction(game.Stats.GetMemoryUsageMbForTag, function() -- fckin memory bypass
    coroutine.yield()
  end)
  
  local loadstart = tick()
  
 local lplr = game.Players.LocalPlayer

local function IsAlive(player)
    if player and player.Character and player.Character.FindFirstChild(player.Character, "Humanoid") and player.Character.Humanoid.Health > 0 then
        return true
    end

    return false -- hallo nigger
end

local waiting = Drawing.new("Text")
waiting.Visible = true
waiting.Transparency = 1
waiting.Color = Color3.fromRGB(255, 255, 255)
waiting.Size = 32
waiting.Text = "Welcome to RussianWare"
waiting.Center = true
waiting.Outline = true
waiting.OutlineColor = Color3.fromRGB(0, 0, 0)
waiting.Font = 3
waiting.Position = Vector2.new(200,100)

wait(5)
waiting:Remove()

local waiting = Drawing.new("Text")
waiting.Visible = true
waiting.Transparency = 1
waiting.Color = Color3.fromRGB(255, 255, 255)
waiting.Size = 32
waiting.Text = "Loading script..."
waiting.Center = true
waiting.Outline = true
waiting.OutlineColor = Color3.fromRGB(0, 0, 0)
waiting.Font = 3
waiting.Position = Vector2.new(200,100)

wait(5)
waiting:Remove()

while wait(3) do
hookfunction(print, warn) -- KILL HIM
print("Varyshka")
game.ReplicatedStorage.Events.Spawnme:FireServer()
end

  
  -- variables
  local uis = game:GetService("UserInputService")
  local rs = game:GetService("RunService")
  local ts = game:GetService("TweenService")
  local plrs = game:GetService("Players")
  local cas = game:GetService("ContextActionService")
  local stats = game:GetService("Stats")
  local lplr = game.Players.LocalPlayer
  local TweenGoal1 = {Transparency = 0}
  local TweenGoal2 = {Transparency = 1}
  local TweenGoal3 = {Color = Color3.fromRGB(161, 196, 140)}
  local TweenGoal4 = {Color = Color3.fromRGB(31, 128, 29)}
  local TweenGoal5 = {Color = Color3.fromRGB(255, 176, 0)}
  local TweenGoal6 = {Color = Color3.fromRGB(231, 231, 236)}
  
  local AdService
  local AnalyticsService
  local AssetService
  local BadgeService
  local ChangeHistoryService
  local Chat
  local CollectionService
  local ContentProvider
  local ContextActionService
  local CookiesService
  local CoreGui
  local Debris
  local DebuggerManager
  local DraftsService
  local DraggerService
  local FilteredSelection
  local FriendService
  local GamePassService
  local GamepadService
  local Geometry
  local GroupService
  local GuiService
  local HSRDataContentProvider
  local HapticService
  local HttpRbxApiService
  local HttpService
  local InsertService
  local JointsService
  local LanguageService
  local Lighting
  local LocalizationService
  local LogService
  local MarketplaceService
  local MemStorageService
  local MeshContentProvider
  local NotificationService
  local PermissionsService
  local PhysicsService
  local Players
  local PluginDebugService
  local PluginGuiService
  local PointsService
  local PolicyService
  local ProcessInstancePhysicsService
  local ReplicatedFirst
  local ReplicatedStorage
  local RunService
  local Scriptontext
  local Selection
  local ServerScriptService
  local ServerStorage
  local SolidModelContentProvider
  local SoundService
  local StarterGui
  local StarterPack
  local StarterPlayer
  local Stats
  local StudioService
  local Teams
  local TeleportService
  local TestService
  local TextService
  local TouchInputService
  local TweenService
  local VRService
  local VirtualInputManager
  local Visit
  local Workspace
  
  -- what
  
  
  local textBoxLetters = {
      "A",
      "B",
      "C",
      "D",
      "E",
      "F",
      "G",
      "H",
      "I",
      "J",
      "K",
      "L",
      "M",
      "N",
      "O",
      "P",
      "Q",
      "R",
      "S",
      "T",
      "U",
      "V",
      "W",
      "X",
      "Y",
      "Z",
  }
  local keyNames = {
      One = "1",
      Two = "2",
      Three = "3",
      Four = "4",
      Five = "5",
      Six = "6",
      Seven = "7",
      Eight = "8",
      Nine = "9",
      Zero = "0",
      LeftBracket = "[",
      RightBracket = "]",
      Semicolon = ";",
      BackSlash = "\\",
      Slash = "/",
      Minus = "-",
      Equals = "=",
      Return = "Enter",
      Backquote = "`",
      CapsLock = "Caps",
      LeftShift = "LShift",
      RightShift = "RShift",
      LeftControl = "LCtrl",
      RightControl = "RCtrl",
      LeftAlt = "LAlt",
      RightAlt = "RAlt",
      Backspace = "Back",
      Plus = "+",
      Multiplaye = "x",
      PageUp = "PgUp",
      PageDown = "PgDown",
      Delete = "Del",
      Insert = "Ins",
      NumLock = "NumL",
      Comma = ",",
      Period = ".",
  }
  local colemak = {
      E = "F",
      R = "P",
      T = "G",
      Y = "J",
      U = "L",
      I = "U",
      O = "Y",
      P = ";",
      S = "R",
      D = "S",
      F = "T",
      G = "D",
      J = "N",
      K = "E",
      L = "I",
      [";"] = "O",
      N = "K",
  }
  local keymodifiernames = {
      ["`"] = "~",
      ["1"] = "!",
      ["2"] = "@",
      ["3"] = "#",
      ["4"] = "$",
      ["5"] = "%",
      ["6"] = "^",
      ["7"] = "&",
      ["8"] = "*",
      ["9"] = "(",
      ["0"] = ")",
      ["-"] = "_",
      ["="] = "+",
      ["["] = "{",
      ["]"] = "}",
      ["\\"] = "|",
      [";"] = ":",
      ["'"] = '"',
      [","] = "<",
      ["."] = ".",
      ["/"] = "?",
  }
  local invalidfilekeys = {
      ["\\"] = true,
      ["/"] = true,
      [":"] = true,
      ["*"] = true,
      ["?"] = true,
      ['"'] = true,
      ["<"] = true,
      [">"] = true,
      ["|"] = true,
  }
  local emojis = {
      [":clown:"] = utf8.char(129313);
      [":cold_face:"] = utf8.char(129398);
      [":neutral:"] = utf8.char(128528);
  }
  -- variables end
  
  -- library and some other shit
  local killsey = {  ---Slava rossie
  -- lio
 '😏made by nixus and xosmane🙄', 
 "'mhm stOp PaStiNg StOrmY😡' - J.",
 'xosmane one love😂', 
 '😪loving wall', 
 '"у вас скрипт не стреляет, идиоты🤣" - никсус',
 'pups🤗' ,
 'ᓚᘏᗢbbot on top', 
 'flopawawr(^///^)', 
 'moded penಠ_ಠ',
 '1 🥳fps media', 
 'roblox hvh😨', 
 '"да ьука хуьисосина ты еьбаньая" - банан',
 '"КОГО ТЫ БЬЛ@ТЬ П@З@ДАНУЛ" - банан',
 '"😎бектрек кривой огузки" - поап',
 '"😚их дядя путин на хвх еьбьать будет" - поап',
 '"молодост🤩ь ь@ять была ахьуеная" - поап',
 '"вот раньше на фейкдаках леон как пиьдарас сидел🪑" - поап',
 '"ты чо не здох💀" - поап',
 '"газпром одобряет🌌" - поап',
 '"ВОТ ТЫ ПьИздьабол ь@ять" - поап',
 '"сосать!" - поап🆘',
 '"бананньегр" - поап',
 '"слоник🥺" - поап',
 '"я ем детей.. 🤡жареными" - лио',
 '"пьизда tebe шлю(☞ﾟヮﾟ)☞а ты еьбьаная" - поап',
 '"пьизьдаблятина" - поап🖤',
 '"щя еьбьать будем" - поап🎧',
 '🏪я куплю шторми и буду садить леона на кнайф - банан',
 '🌍🌎🌏вот если бы небыло инвадеда и шиппи мы бы уже на другой планете были бы - банан😆',
 'весел😂о',
 'linoria sucks💹',
 'boredddddddddddddddddddddddddddd😪',
 '😏',
 '1\'d😭',
 'Ahhh~😍',
 'vru',
 'pep🎞si on top',
 '🧨plug and play or die and pay',
 'Hexago(┬┬﹏┬┬) de carlo',
 'ta🎃ppino',
 'el tappo',
 'papini d😼chki',
 'mamkina mogila tebya shdet💩',
 'pastim pastim🍕',
 's koreshami v voice➿',
 'stixica j tapnet - banan🧈',
 'just say others im russian🎒',
 'pen fr fr🔏',
 'он ПЕРЕСТАЛ стрелять - никсус👌🏿',
 'бысьрей пленти🛐 пока он не сломал тебе айпи адрес',
 'устал пастить🍝',
 'бед америка | гуд раша🏈',
 'You were 🦵kicked from this experience: Noclipping',
 '👤seere user',
 '🧔🏿beanbot paste fr fr',
 'get real emo📖',
 'i love ©🅿',
 'emo boyyy👨‍👩‍👧‍👦',
 'fr 11️⃣',
 'ccccccccccccccccccccccccccccccccc📸',
 'PON🐎',
 'ME🐎GA PON',
 'NE PON🚫🈵🚫',
 'MEG🐎A NE PON',
 'ULTRA PON🐎',
 'ULTRA NE PON🐎',
 '🈵havai🈵 ',
 'fqfqfqegarehaerghweg🈵🈵🈵🈵🈵🈵',
 '[RussianWare] - succesfully tapped!👏🏿',
 '❔❓⁉❔❓stix che za pi3da❔❓⁉❔❓',
    -- nixus
     "p100",
     "hitting big p",
     "ez kills",
     "ez wins",
     "1",
     "1'd",
     "u mad??",
     "nn dead",
     "who.ru",
     "UID issue",
     "IQ issue",
     "are you gonna inject??",
     "mad?",
     "did you even execute??",
     "gimmie ur watermelons",
     "a rat with a hdmi port is typing this",	
     "It looks like your face caught on fire and someone tried to put it out with a fork.",
     "Don't you love nature, despite what it did to you?",
     "Well, that happend.",
     "OOF",
     "Ouchies.",
     "u mad?",
     "Practice makes perfect.",
     "Did you mean to do that?",
     "Don't do that again.",
     "Bada ba ba ba, I'm lovin' it.",
     "How'd that happen?",
     "SÊ‡od Ê‡Êá´‰sÊ‡á´‰uÆƒ ÊŽonÉ¹ É¥ÇÉpË™",
     "Well, that happend.",
     "yeah ok",
     "Tip : stop made this",
     "Tip : This button doesn't relieve rage, for some reason.",
     "Tip : Don't be rage.",
     "Mada mada.",
     "VCMYXC1RiQVoUHWoKPSROQ==",
     "Hack the game",
     "Error 404 : Rage quit not found.",
     "Sweet rage bro!!",
     "Whos that behind you?",
     "Oh, So close!",
     "Nope.",
     "Undo!",
     "Is that a jojo reference?",
     "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHH...",
     "Stop screwing around!",
     "useless button rite",
     "?????",
     "That wasn't the plan.",
     "???????????",
     "nice one",
     "whats 4 squared?",
     "you can get everything you want",
     "Don't lose your head.",
     "Stimulate your senses.",
     "Don't clip that.",
     "Kappa.",
     "O Wuts dis?", 
     "Try again.", 
     "Game over!",
     "Why?", 
     "Stop rage quitting",
     "Are you angry yet?",
     "I've got 99 problems, This cheat aint one",
     "Huh? What happend?",
     "Where'd you go?",
     "Don't be rage again.",
     "Did you rage quit again?",
     "Fuck off, fuck off...",
     "Hello, depression",
     "I hear your message",
     "Still don't understand",
     "I know we're hurting",
     "Drugging and doping",
     "Death by our own hands",
     "I'm sorry that I couldn't be the one",
     "The end has come",
     "Hello, my mental",
     "You think I should but",
     "I can't read your mind",
     "Admit we fuck up",
     "Our wounds are healing",
     "Some can't heal with time",
     "Cause we can't run",
     "ur my fan",
     "you cried trying to report me",
     "u has no parents Imaoo",
     "are u having a bad time?",
     "u lost to C0VVID",
     "negro",
     "so trash OMEGALUL",
     "random",
     "i know ur location LOL",
     "LLLLLLLLL",
     "clipped",
     "emo lokin stupid 12yo",
     "u trying to be me so hard",
     "you waant to sjjck my djcick",
     "clip me clipping owning u",
     "ur black",
     "stay mad",
     "You're adopted kid",
     "kill pyourself",
     "special kid",
     "get ratio'ed",
     "i can buy ur life",
     "Ð”ÐµÑ€Ð¶Ð¸ âœˆ Ð¸ Ð»ÐµÑ‚Ð¸ Ð½Ð°Ñ…ÑƒÐ¹ !",
     "Hexagon is the best!",
     "missed shot due to umm i forgor",
     "[gamesense] Missed shot due to ?",
     "game:Shutdown()",
     "pls give me hexadecimal",
     "-ur life",
     "owl hub'ed",
     "LOL 9 Y.O. KID WITH FREE HACKS!11111",
     "get resolver nn boy????????????????????????????????????????????????????",
     "???????????????????????? stop pasting meme????????????????????????????????????????",
     "????????????????  dumpware wining ?????????????????????????????",
     "??????????????????????  whu.ru? whu.ru? whu.ru? whu.ru? whu.ru? whu.ru? ????????????????????????",
     "p1000????????????????????????????????????",
     "????????????????????cuteware really p100 cuteware really p100 cuteware really p100 cuteware really p100????????????????",
     "sit nn dog????????????????????",
     "???????????? can i rec media ???????????????? stop use mega tap rage????????????????",
     "LEON X FEEL =????????????????????????????????????",
     "????????????????????????  stix bad stix bad stix bad stix bad stix bad??????????????????????????????",
     -- xosmane
     'ne95gr2: Я СЕБЕ ШТАНЫ НАМОЧИЛ',
     'XxMonster130xX: ТЫ МЕШАЕШЬ НОРМАЛЬНЫМ ЧЕЛАМ ЖИТЬ',
     'ne95gr2: У НЕГО ЕЩЁ СПИДРАН ВКЛЮЧЁН КИК ЕГО УЖЕ',
     'RASADATOR: аим+навотка',
     'пхITLER SISTERO??!??!?!&$&"&-;@;@',
     '"у меня не стреляет😭😭" - хосмане',
     '"э кудаа леон на гуро аьа💹ьаьаь" - бананнегр',
     'moto moto 1120',
     'gg/4NmWfzvMPx',
     'HEY WHATS SCRIPT IS THAT??',
     'RUSSIANWARE',
     'russia on top yessssss',
     'how are you',
     'gg/4NmWfzvMPx join',
     'ахаха лысый поспи',
     '1 бу рашнвар',
     'ты кстати мне co|сешь ща',
     'никсус ван лав❤️',
     '"хасманя лысый гном" - никсус',
     'овнед бу рашнвар',
     'SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DONT CARE', -- битчбот v2 дааа
     'Free Roblox Script Silent Aim Rapid Fire God Mode',
     'Artiljerija! Bosanac sam bekrija.',
     '😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴',
     '😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎',
     '"на на получай черный" - хосмане',
     -- acidtech neverlose
     "что ты сделал",
     "?",
     "найс мув",
     "пьиьздец ты конч",
     "найс подловил",
     "без дт не может",
     "просто +в",
     "на подпике",
     "еле убил",
     "почти хорошо",
     "оправдай мув",
     "ну",
     "gbpltw",
     ",kznm",
     "тупой",
     "МЕНЯ ТПХНУЛО",
     "я стрельнул?",
     "яя в муте?",
     "ну тиммейт федука давит",
     "кердык",
     "что за вонь убила",
     "ты дт отжал?",
     "у меня одново серв лаг?",
     "найс автопик+миндмг",
     "бекшут?",
     "ты с соткой встал?",
     "ну ты зверь",
     "сидит предиктит",
     "онли боди чьурка",
     "не потей",
     "ты с миндамагом пикнул?",
     "у тебя пинк спайк?",
     "как ты дамаг выбил?",
     "ну фристендинг же не сработает",
     "чит делеит",
     "ну нет",
     "сразу видно iq 14к юида",
     "S[DF[F[DF[SDF[SD[FSD[FDS[F[F[F[F",
     -- sleepcord nixware
     "1 dog",
     "1",
     "я сплю",
     "никсвар топ",
     "ребятки sleepcord на никс качаем, топ луашка!",
     "фуууу ботек ИЗИЧКА фууууу",
     "я поспал и хс'аю тебя",
     "не плачь",
     "neverlose user fell to nix|ware with sl|eepcord",
     "что то ты падаешь много",
     "в консоли miss, а в голове пусто",
}

local killsey = {  ---Slava rossie
-- lio
'😏made by nixus and xosmane🙄', 
"'mhm stOp PaStiNg StOrmY😡' - J.",
'xosmane one love😂', 
'😪loving wall', 
'"у вас скрипт не стреляет, идиоты🤣" - никсус',
'pups🤗' ,
'ᓚᘏᗢbbot on top', 
'flopawawr(^///^)', 
'moded penಠ_ಠ',
'1 🥳fps media', 
'roblox hvh😨', 
'"да ьука хуьисосина ты еьбаньая" - банан',
'"КОГО ТЫ БЬЛ@ТЬ П@З@ДАНУЛ" - банан',
'"😎бектрек кривой огузки" - поап',
'"😚их дядя путин на хвх еьбьать будет" - поап',
'"молодост🤩ь ь@ять была ахьуеная" - поап',
'"вот раньше на фейкдаках леон как пиьдарас сидел🪑" - поап',
'"ты чо не здох💀" - поап',
'"газпром одобряет🌌" - поап',
'"ВОТ ТЫ ПьИздьабол ь@ять" - поап',
'"сосать!" - поап🆘',
'"бананньегр" - поап',
'"слоник🥺" - поап',
'"я ем детей.. 🤡жареными" - лио',
'"пьизда tebe шлю(☞ﾟヮﾟ)☞а ты еьбьаная" - поап',
'"пьизьдаблятина" - поап🖤',
'"щя еьбьать будем" - поап🎧',
'🏪я куплю шторми и буду садить леона на кнайф - банан',
'🌍🌎🌏вот если бы небыло инвадеда и шиппи мы бы уже на другой планете были бы - банан😆',
'весел😂о',
'linoria sucks💹',
'boredddddddddddddddddddddddddddd😪',
'😏',
'1\'d😭',
'Ahhh~😍',
'vru',
'pep🎞si on top',
'🧨plug and play or die and pay',
'Hexago(┬┬﹏┬┬) de carlo',
'ta🎃ppino',
'el tappo',
'papini d😼chki',
'mamkina mogila tebya shdet💩',
'pastim pastim🍕',
's koreshami v voice➿',
'stixica j tapnet - banan🧈',
'just say others im russian🎒',
'pen fr fr🔏',
'он ПЕРЕСТАЛ стрелять - никсус👌🏿',
'бысьрей пленти🛐 пока он не сломал тебе айпи адрес',
'устал пастить🍝',
'бед америка | гуд раша🏈',
'You were 🦵kicked from this experience: Noclipping',
'👤seere user',
'🧔🏿beanbot paste fr fr',
'get real emo📖',
'i love ©🅿',
'emo boyyy👨‍👩‍👧‍👦',
'fr 11️⃣',
'ccccccccccccccccccccccccccccccccc📸',
'PON🐎',
'ME🐎GA PON',
'NE PON🚫🈵🚫',
'MEG🐎A NE PON',
'ULTRA PON🐎',
'ULTRA NE PON🐎',
'🈵havai🈵 ',
'fqfqfqegarehaerghweg🈵🈵🈵🈵🈵🈵',
'[RussianWare] - succesfully tapped!👏🏿',
'❔❓⁉❔❓stix che za pi3da❔❓⁉❔❓',
}
local nixus = {
-- nixus
"p100",
"hitting big p",
"ez kills",
"ez wins",
"1",
"1'd",
"u mad??",
"nn dead",
"who.ru",
"UID issue",
"IQ issue",
"are you gonna inject??",
"mad?",
"did you even execute??",
"gimmie ur watermelons",
"a rat with a hdmi port is typing this",	
"It looks like your face caught on fire and someone tried to put it out with a fork.",
"Don't you love nature, despite what it did to you?",
"Well, that happend.",
"OOF",
"Ouchies.",
"u mad?",
"Practice makes perfect.",
"Did you mean to do that?",
"Don't do that again.",
"Bada ba ba ba, I'm lovin' it.",
"How'd that happen?",
"SÊ‡od Ê‡Êá´‰sÊ‡á´‰uÆƒ ÊŽonÉ¹ É¥ÇÉpË™",
"Well, that happend.",
"yeah ok",
"Tip : stop made this",
"Tip : This button doesn't relieve rage, for some reason.",
"Tip : Don't be rage.",
"Mada mada.",
"VCMYXC1RiQVoUHWoKPSROQ==",
"Hack the game",
"Error 404 : Rage quit not found.",
"Sweet rage bro!!",
"Whos that behind you?",
"Oh, So close!",
"Nope.",
"Undo!",
"Is that a jojo reference?",
"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHHHHHHHHHHHHHHH...",
"Stop screwing around!",
"useless button rite",
"?????",
"That wasn't the plan.",
"???????????",
"nice one",
"whats 4 squared?",
"you can get everything you want",
"Don't lose your head.",
"Stimulate your senses.",
"Don't clip that.",
"Kappa.",
"O Wuts dis?", 
"Try again.", 
"Game over!",
"Why?", 
"Stop rage quitting",
"Are you angry yet?",
"I've got 99 problems, This cheat aint one",
"Huh? What happend?",
"Where'd you go?",
"Don't be rage again.",
"Did you rage quit again?",
"Fuck off, fuck off...",
"Hello, depression",
"I hear your message",
"Still don't understand",
"I know we're hurting",
"Drugging and doping",
"Death by our own hands",
"I'm sorry that I couldn't be the one",
"The end has come",
"Hello, my mental",
"You think I should but",
"I can't read your mind",
"Admit we fuck up",
"Our wounds are healing",
"Some can't heal with time",
"Cause we can't run",
"ur my fan",
"you cried trying to report me",
"u has no parents Imaoo",
"are u having a bad time?",
"u lost to C0VVID",
"negro",
"so trash OMEGALUL",
"random",
"i know ur location LOL",
"LLLLLLLLL",
"clipped",
"emo lokin stupid 12yo",
"u trying to be me so hard",
"you waant to sjjck my djcick",
"clip me clipping owning u",
"ur black",
"stay mad",
"You're adopted kid",
"kill pyourself",
"special kid",
"get ratio'ed",
"i can buy ur life",
"Ð”ÐµÑ€Ð¶Ð¸ âœˆ Ð¸ Ð»ÐµÑ‚Ð¸ Ð½Ð°Ñ…ÑƒÐ¹ !",
"Hexagon is the best!",
"missed shot due to umm i forgor",
"[gamesense] Missed shot due to ?",
"game:Shutdown()",
"pls give me hexadecimal",
"-ur life",
"owl hub'ed",
"LOL 9 Y.O. KID WITH FREE HACKS!11111",
"get resolver nn boy????????????????????????????????????????????????????",
"???????????????????????? stop pasting meme????????????????????????????????????????",
"????????????????  dumpware wining ?????????????????????????????",
"??????????????????????  whu.ru? whu.ru? whu.ru? whu.ru? whu.ru? whu.ru? ????????????????????????",
"p1000????????????????????????????????????",
"????????????????????cuteware really p100 cuteware really p100 cuteware really p100 cuteware really p100????????????????",
"sit nn dog????????????????????",
"???????????? can i rec media ???????????????? stop use mega tap rage????????????????",
"LEON X FEEL =????????????????????????????????????",
"????????????????????????  stix bad stix bad stix bad stix bad stix bad??????????????????????????????",
}
local xosmane = {
-- xosmane
'ne95gr2: Я СЕБЕ ШТАНЫ НАМОЧИЛ',
'XxMonster130xX: ТЫ МЕШАЕШЬ НОРМАЛЬНЫМ ЧЕЛАМ ЖИТЬ',
'ne95gr2: У НЕГО ЕЩЁ СПИДРАН ВКЛЮЧЁН КИК ЕГО УЖЕ',
'RASADATOR: аим+навотка',
'пхITLER SISTERO??!??!?!&$&"&-;@;@',
'"у меня не стреляет😭😭" - хосмане',
'"э кудаа леон на гуро аьа💹ьаьаь" - бананнегр',
'moto moto 1120',
'gg/4NmWfzvMPx',
'HEY WHATS SCRIPT IS THAT??',
'RUSSIANWARE',
'russia on top yessssss',
'how are you',
'gg/4NmWfzvMPx join',
'ахаха лысый поспи',
'1 бу рашнвар',
'ты кстати мне co|сешь ща',
'никсус ван лав❤️',
'"хасманя лысый гном" - никсус',
'овнед бу рашнвар',
'SORRY I HURT YOUR ROBLOX EGO BUT LOOK -> 🤏 I DONT CARE', -- битчбот v2 дааа
'Free Roblox Script Silent Aim Rapid Fire God Mode',
'Artiljerija! Bosanac sam bekrija.',
'😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴😴',
'😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎',
'"на на получай черный" - хосмане',
"рашнвар беттер!",
"донт сри май бебе герл",
"shootware'd",
"ay look at me",
"try kick me",
'"ВАТАФЬАК АР Ю ДУИНГ😡" - хосмане',
'look12space: KICK NEFOR',
'"а сам та наьхьуй ебьантяй😏" - банан',
'"Я тебя агрить буду когда стоять крутить⛳ тебя на вертеле и ржать🤣" - стикс',
'"Ты меня заеьбпл,🙁" - никсус',
'"я тебя понял😥" - хосмане',
'"Da, vse, nahйui vash cb, ya livaem v undertale" - никсус',
'"ты чо суьчка сам ты петух😡😡" - никсус',
"russianware",
"nachos.codes",
"m+9 kick hacker",
"kick him he hacking",
"stop hacking noob",
"imagine hacking in roblox",
"russianware on top",
"$$$ nachos.codes $$$",
"1'ed",
"stop hacking!!!",
"m+9 kick",
"$$$$$$$$$$$",
"russianware was here",
"oopsie",
"missclick'ed",
"how to buy gun",
"stop hacking!! its against the rules!!",
"bro cheating to be good",
"you dont mom",
"stop this please",
}
local csgo = {
-- acidtech neverlose
"что ты сделал",
"?",
"найс мув",
"пьиьздец ты конч",
"найс подловил",
"без дт не может",
"просто +в",
"на подпике",
"еле убил",
"почти хорошо",
"оправдай мув",
"ну",
"gbpltw",
",kznm",
"тупой",
"МЕНЯ ТПХНУЛО",
"я стрельнул?",
"яя в муте?",
"ну тиммейт федука давит",
"кердык",
"что за вонь убила",
"ты дт отжал?",
"у меня одново серв лаг?",
"найс автопик+миндмг",
"бекшут?",
"ты с соткой встал?",
"ну ты зверь",
"сидит предиктит",
"онли боди чьурка",
"не потей",
"ты с миндамагом пикнул?",
"у тебя пинк спайк?",
"как ты дамаг выбил?",
"ну фристендинг же не сработает",
"чит делеит",
"ну нет",
"сразу видно iq 14к юида",
"S[DF[F[DF[SDF[SD[FSD[FDS[F[F[F[F",
-- sleepcord nixware
"1 dog",
"1",
"я сплю",
"никсвар топ",
"ребятки sleepcord на никс качаем, топ луашка!",
"фуууу ботек ИЗИЧКА фууууу",
"я поспал и хс'аю тебя",
"не плачь",
"neverlose user fell to nix|ware with sl|eepcord",
"что то ты падаешь много",
"в консоли miss, а в голове пусто",
}
local china = {
        -- japanese
        "武器 esp aimbot 的最佳腳本",
        "損壞修改器崩潰服務器後門專業版roll angle 免費作弊未付費",
        "新的最佳付費腳本破解繞過方法速度",
        "利用飛行模式上帝模式眼鏡未檢測到的軟件",
        "大頭不付費教程 100% 私人 xp hack",
        "工作程序 hack bunny hop 免費不付費 哈哈",
        "hitbox extender源垃圾郵件聊天惡意軟件",
        "武器免費黑客瞄準船和牆壁黑客無限彈藥上帝模式",
        "作弊 ai 模式支付最佳腳本開發者 hack",
        "釋放拖釣作弊瞄準機器人無聲破解無限跳躍",
        "免費作弊利用武器 roblox 遊戲 xray 無剪輯",
        "神速作弊武器 ro blocks 所有槍支解鎖器",
        "bunny hop cheat破解2023方法免費源碼",
        "史萊姆城堡破壞者免費欺騙破解 minecraft 破解",
        "免費作弊模式銅色類別創意破解繞過esp",
        "誰騙你玩不了哈哈喵喵破解版",
        "停止作弊哈哈我是合法的職業球瞄準船牆黑客",
        "免費破解我的專業作弊 aimbot wallhack 不付費變壞",
        "大頭預測漏洞利用方法免費繞過破解",
        "你是怎麼得到這個的請回答 fake lag",
        "印度尼西亞使用 hacking 免費作弊 ",
        "兔子跳自動牆技巧 lifehack 禁令繞過",
        "免費手榴彈繞過作弊工作 roblox aimbot 瞄準無聲目標繞過 2023 工作真正免費下載和使用",
        "你好青蟲我討厭你傻媽媽傻媽媽青蟲",
        "抱著毀滅性的神經沉重的繁榮遊行臉紅青銅類創意案例",
        "此服務器上的開發者請幫助我免費且非常易於使用的手榴彈 2023 繞過",
        "去觸摸草地哈哈遊戲椅哈哈太有趣了我瘋了我笑得太厲害了",
        "踢他請按F1兄弟為什麼你不踢他哈哈去觸摸黑客",
        "垃圾郵件這麼難容易破解免費粘貼 bin 繞過",
        "水晶創意玻璃頭眼睛喵喵貓狗鸚鵡手隨機文字芝士漢堡怎麼做",
        "破解菜單解鎖所有槍支付費方法無限彈藥",
        "擁有最好的作弊容易哭更多沒有名字哈哈",
        "因黑客攻擊而被禁止武器開發者哭得很厲害",
        "讓生活更輕鬆的生活小竅門只需洗碗便便便可獲利",
        "隨機文本是的為什麼你讀這個我是中國人我發誓我沒有使用翻譯器",
        "被最好的騙子控制大聲笑哭我的朋友擁有踢被撞毀",
        "俄羅斯穿頂盤灰色塊兩塊立體聲揚聲器你好隨機文本",
}
local random = {
        -- random text
        "cheat code hvh anti aim legit hack trickshot maker",
        "no virus mediafire link exploit hitting p debug menu",
        "teleport not paid hack meme all clean",
        "server backdoor cookie logger chams aim bot",
        "big head rapid fire cheat op verified",
        "hitbox extender source spam chat malware",
        "cheat crack tp hack method free esp",
        "no ban bypass download desync not leaked",
        "kill all hacks no leaked silent aim hacks",
        "fly mode script gun hack no clip tutorial",
        "esp no anti-cheat detect for free no linkvertise",
        "exploit hack free damage modifier free btools",
        "undetected full 100% free private hack unlimited wallbang",
        "cb free hack aim boat and wall hack infinite ammo god mode",
        "roblox mod menu with hack super jump fly",
        "god speed cheat cbro roblox all gun unlocker",
        "software free sniper gun hack trolling owns all program",
        "free cheat exploit cb roblox games xray no clip",
        "working program hack esp chams bunny hop xp hack",
        "cheating ai mode paid best script developers hack",
        "bypass anti-cheat fire rate speed cheat",
        "infinite damage for free encrypted cracked roblox",
        "release trolling cheat aim bot silent crack infinite jump",
        "speed cheat troll pause game cb desync",
        "big head not paid tutorial 100% private xp hack",
}
local facts = {
        -- facts (ru)
        "Несмотря на все свое население, в китае используется всего около 200 фамилий.",
        "Существует растение, которое называют цветком смеха. Оно вызывает беспричинный смех на полчаса.",
        "Люди с голубыми глазами лучше видят в темноте.",
        "Среднестатистическая женщина за свою жизнь успевает посидеть на 32 диетах.",
        "Самый старый обнаруженный рецепт супа датируется 6000 годом до нашей эры. Главный ингредиент — мясо бегемота.",
        "Жирафы в целях самозащиты действуют головой как молотком.",
        "В Швейцарии выпустили детские презервативы.",
        "Чихание при взгляде на солнце — это аутосомно-доминантный непроизвольный гелио-глазной синдром взрыва.",
        "Потребление йогурта в мире возросло за последние 12 лет в четыре раза.",
        "На территории Японии 17 действующих вулканов.",
        "В Саудовской Аравии нет ни одной реки.",
        "Как минимум три часа в день мы бездельничаем.",
        "В большинстве реклам время показываемое на часах – 10:10, чтобы не закрывать марку часов.",
        "Имя шейха Хамада написано на Земле километровыми буквами и видно из космоса.",
        "В Албании кивание головой значит «нет», и наоборот.",
        "В Алабаме запрещено водить машину необутым. Закон, однако, позволяет ездить по встречной полосе, если включить фары.",
        "Комары могут летать во время дождя.",
        "У человека меньше мyскyлов, чем y гyсеницы.",
        "Браки, в которых жены плохо спят, имеют гораздо больше шансов развалиться.",
        "При сильной рвоте у человека могут лопнуть сосуды в глазах.",
        "За пол века овощи стали менее полезны.",
        "Япония — последняя страна в мире, формально сохранившая титул Империи.",
        "Бильярд, так же как и шахматы, имеет очень древнее происхождение, а его родиной является Азия.",
        "В Антарктиде банкоматов в 2 раза больше, чем постоянных жителей.",
        "Пизанская башня никогда не была прямой!",
        "Полярная крачка — единственная птица, которая мигрирует с одного полюса на другой.",
        "Самые большие в мире сластены - немцы и швeйцарцы: Cогласно статистике, в год каждый из них съедает по 10-11 кг шоколада.",
        "Каждый американец имеет, в среднем, 7 пар джинсов.",
        "Самая распространенная скальная порода на земле — это базальт.",
        "ДНК человека и банана совпадают на 50%.",
        "При ярком свете человек съедает намного меньше, чем с приглушённым тусклым освещением.",
        "Горькие напитки делают людей критичнее и строже.",
        "Гречка очищает желудок от жвачек.",
        "Лечебные свойства зелёного чая — это миф",
        "Лингвисты утверждают, что в любом языке есть слово, обозначающее подхалима.",
        "Длина самого длинного лимузина в мире — 30,5 метров",
        "На холоде насекомые дрожат, как и человек.",
        "Змея может спать в течение 3 лет.",
        "На Гавайях серфинг включен в школьную программу.",
        "В Швейцарии запрещено смывать воду в туалете после 10 часов вечера.",
        "Стрекозы в буквальном смысле до смерти боятся рыб.",
        "Женские сердца бьются быстрее, чем у мужчин.",
        "Три силовых занятия в неделю дают наибольший эффект.",
        "Каучук – один из ингредиентов жевательной резинки. Благодаря ему мы можем надувать пузыри.",
        "Аисты могут засыпать в полете на 10-15 минут.",
        "По статистике 66% людей закрывают глаза во время поцелуя.",
        "Виадук Мийо - самый высокий мост в мире!",
        "В центре Мадрида есть отель из мусора.",
        "Пчелы никогда не спят. Пчела замирает на соте лишь на несколько секунд в течение суток.",
        "Пожилых людей больше всего в Швеции (24%) и меньше всего в Кувейте (2%).",
        "Булемия - это неукротимый аппетит.",
        "Лысых людей не выгоняют из церкви, потому что гонять лысого - грех.","Чаще всего, самые тихие люди - немые.","Если долго смотреть на огонь, то тебя уволят из МЧС.","Не покупай вентиляторы - это деньги на ветер.","Девушки как кредит, кому-то дают, а кому-то нет.","Что не так с рестораном на Луне? Блюда изысканные, но нет атмосферы.","Горчицу знаешь? Я огорчил.","Когда говоришь, что думаешь , думай что говоришь.","Проблем по жизни будет много, но выбор за нами. Либо ныть, либо попу мыть.","Каждый может кинуть камень в волка , но не каждый может кинуть волка в камень.",
}
local reine = {
 "поколение пауков моя тима вся в ryodan'e🕷",
 "🔥обожаю playboi carti😎😎✌ и все что с ним связано💓💓",
 "бойцовский клуб редан, задыхаешься цепями⛓",
 "Порву-За-Братву",
 "🥦 Vegan living healthy",
 "Горжусь Z 🥰🇷🇺",
 "ты думаешь что ты шаришь?🤣🤣🤣🤣🤣🤣 ахаха.",
 "Доброе времени суток ! Идёт набор в клан standoff 2 Anime Win Team ",
 "доброе время суток идет набор в клан по игре коунтер блокс",
 "Роблокс игра сиреноголовий💓",
 "комфортный чатик для тебя по роблоксу",
 "Господи, как же хочется украиночку... ",
 "👏👏👍👍👍👍КЛАСС!!!!!😁😁😁",
 "На вечер для вас эта потрясная красотка с клевыми формами 😻",
 "💥💥💥Любители по фигачить клубами пара☁️",
 "Мяу! Я милая кошкодевочка. У меня пушистое меховое пальто насыщенного цвета.",
 "🤯Видео нe для слабонервных!",
}
  
  
local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local CoreGui = game:GetService('CoreGui');
local Teams = game:GetService('Teams');
local Players = game:GetService('Players');
local RunService = game:GetService('RunService')
local TweenService = game:GetService('TweenService');
local RenderStepped = RunService.RenderStepped;
local LocalPlayer = Players.LocalPlayer;
local Mouse = LocalPlayer:GetMouse();

local ProtectGui = protectgui or (syn and syn.protect_gui) or (function() end);

local ScreenGui = Instance.new('ScreenGui');
ProtectGui(ScreenGui);

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global;
ScreenGui.Parent = CoreGui;

local Toggles = {};
local Options = {};

getgenv().Toggles = Toggles;
getgenv().Options = Options;

local Library = {
    Registry = {};
    RegistryMap = {};

    HudRegistry = {};

    FontColor = Color3.fromRGB(255, 255, 255);
    MainColor = Color3.fromRGB(28, 28, 28);
    BackgroundColor = Color3.fromRGB(20, 20, 20);
    AccentColor = Color3.fromRGB(0, 85, 255);
    OutlineColor = Color3.fromRGB(50, 50, 50);
    RiskColor = Color3.fromRGB(255, 50, 50),

    Black = Color3.new(0, 0, 0);
    Font = Enum.Font.Code,

    OpenedFrames = {};
    DependencyBoxes = {};

    Signals = {};
    ScreenGui = ScreenGui;
};

local RainbowStep = 0
local Hue = 0

table.insert(Library.Signals, RenderStepped:Connect(function(Delta)
    RainbowStep = RainbowStep + Delta

    if RainbowStep >= (1 / 60) then
        RainbowStep = 0

        Hue = Hue + (1 / 400);

        if Hue > 1 then
            Hue = 0;
        end;

        Library.CurrentRainbowHue = Hue;
        Library.CurrentRainbowColor = Color3.fromHSV(Hue, 0.8, 1);
    end
end))

local function GetPlayersString()
    local PlayerList = Players:GetPlayers();

    for i = 1, #PlayerList do
        PlayerList[i] = PlayerList[i].Name;
    end;

    table.sort(PlayerList, function(str1, str2) return str1 < str2 end);

    return PlayerList;
end;

local function GetTeamsString()
    local TeamList = Teams:GetTeams();

    for i = 1, #TeamList do
        TeamList[i] = TeamList[i].Name;
    end;

    table.sort(TeamList, function(str1, str2) return str1 < str2 end);
    
    return TeamList;
end;

function Library:SafeCallback(f, ...)
    if (not f) then
        return;
    end;

    if not Library.NotifyOnError then
        return f(...);
    end;

    local success, event = pcall(f, ...);

    if not success then
        local _, i = event:find(":%d+: ");

        if not i then
            return Library:Notify(event);
        end;

        return Library:Notify(event:sub(i + 1), 3);
    end;
end;

function Library:AttemptSave()
    if Library.SaveManager then
        Library.SaveManager:Save();
    end;
end;

function Library:Create(Class, Properties)
    local _Instance = Class;

    if type(Class) == 'string' then
        _Instance = Instance.new(Class);
    end;

    for Property, Value in next, Properties do
        _Instance[Property] = Value;
    end;

    return _Instance;
end;

function Library:ApplyTextStroke(Inst)
    Inst.TextStrokeTransparency = 1;

    Library:Create('UIStroke', {
        Color = Color3.new(0, 0, 0);
        Thickness = 1;
        LineJoinMode = Enum.LineJoinMode.Miter;
        Parent = Inst;
    });
end;

function Library:CreateLabel(Properties, IsHud)
    local _Instance = Library:Create('TextLabel', {
        BackgroundTransparency = 1;
        Font = Library.Font;
        TextColor3 = Library.FontColor;
        TextSize = 16;
        TextStrokeTransparency = 0;
    });

    Library:ApplyTextStroke(_Instance);

    Library:AddToRegistry(_Instance, {
        TextColor3 = 'FontColor';
    }, IsHud);

    return Library:Create(_Instance, Properties);
end;

function Library:MakeDraggable(Instance, Cutoff)
    Instance.Active = true;

    Instance.InputBegan:Connect(function(Input)
        if Input.UserInputType == Enum.UserInputType.MouseButton1 then
            local ObjPos = Vector2.new(
                Mouse.X - Instance.AbsolutePosition.X,
                Mouse.Y - Instance.AbsolutePosition.Y
            );

            if ObjPos.Y > (Cutoff or 40) then
                return;
            end;

            while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                Instance.Position = UDim2.new(
                    0,
                    Mouse.X - ObjPos.X + (Instance.Size.X.Offset * Instance.AnchorPoint.X),
                    0,
                    Mouse.Y - ObjPos.Y + (Instance.Size.Y.Offset * Instance.AnchorPoint.Y)
                );

                RenderStepped:Wait();
            end;
        end;
    end)
end;

function Library:AddToolTip(InfoStr, HoverInstance)
    local X, Y = Library:GetTextBounds(InfoStr, Library.Font, 14);
    local Tooltip = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor,
        BorderColor3 = Library.OutlineColor,

        Size = UDim2.fromOffset(X + 5, Y + 4),
        ZIndex = 100,
        Parent = Library.ScreenGui,

        Visible = false,
    })

    local Label = Library:CreateLabel({
        Position = UDim2.fromOffset(3, 1),
        Size = UDim2.fromOffset(X, Y);
        TextSize = 14;
        Text = InfoStr,
        TextColor3 = Library.FontColor,
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = Tooltip.ZIndex + 1,

        Parent = Tooltip;
    });

    Library:AddToRegistry(Tooltip, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    Library:AddToRegistry(Label, {
        TextColor3 = 'FontColor',
    });

    local IsHovering = false

    HoverInstance.MouseEnter:Connect(function()
        if Library:MouseIsOverOpenedFrame() then
            return
        end

        IsHovering = true

        Tooltip.Position = UDim2.fromOffset(Mouse.X + 15, Mouse.Y + 12)
        Tooltip.Visible = true

        while IsHovering do
            RunService.Heartbeat:Wait()
            Tooltip.Position = UDim2.fromOffset(Mouse.X + 15, Mouse.Y + 12)
        end
    end)

    HoverInstance.MouseLeave:Connect(function()
        IsHovering = false
        Tooltip.Visible = false
    end)
end

function Library:OnHighlight(HighlightInstance, Instance, Properties, PropertiesDefault)
    HighlightInstance.MouseEnter:Connect(function()
        local Reg = Library.RegistryMap[Instance];

        for Property, ColorIdx in next, Properties do
            Instance[Property] = Library[ColorIdx] or ColorIdx;

            if Reg and Reg.Properties[Property] then
                Reg.Properties[Property] = ColorIdx;
            end;
        end;
    end)

    HighlightInstance.MouseLeave:Connect(function()
        local Reg = Library.RegistryMap[Instance];

        for Property, ColorIdx in next, PropertiesDefault do
            Instance[Property] = Library[ColorIdx] or ColorIdx;

            if Reg and Reg.Properties[Property] then
                Reg.Properties[Property] = ColorIdx;
            end;
        end;
    end)
end;

function Library:MouseIsOverOpenedFrame()
    for Frame, _ in next, Library.OpenedFrames do
        local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;

        if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
            and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then

            return true;
        end;
    end;
end;

function Library:IsMouseOverFrame(Frame)
    local AbsPos, AbsSize = Frame.AbsolutePosition, Frame.AbsoluteSize;

    if Mouse.X >= AbsPos.X and Mouse.X <= AbsPos.X + AbsSize.X
        and Mouse.Y >= AbsPos.Y and Mouse.Y <= AbsPos.Y + AbsSize.Y then

        return true;
    end;
end;

function Library:UpdateDependencyBoxes()
    for _, Depbox in next, Library.DependencyBoxes do
        Depbox:Update();
    end;
end;

function Library:MapValue(Value, MinA, MaxA, MinB, MaxB)
    return (1 - ((Value - MinA) / (MaxA - MinA))) * MinB + ((Value - MinA) / (MaxA - MinA)) * MaxB;
end;

function Library:GetTextBounds(Text, Font, Size, Resolution)
    local Bounds = TextService:GetTextSize(Text, Size, Font, Resolution or Vector2.new(1920, 1080))
    return Bounds.X, Bounds.Y
end;

function Library:GetDarkerColor(Color)
    local H, S, V = Color3.toHSV(Color);
    return Color3.fromHSV(H, S, V / 1.5);
end;
Library.AccentColorDark = Library:GetDarkerColor(Library.AccentColor);

function Library:AddToRegistry(Instance, Properties, IsHud)
    local Idx = #Library.Registry + 1;
    local Data = {
        Instance = Instance;
        Properties = Properties;
        Idx = Idx;
    };

    table.insert(Library.Registry, Data);
    Library.RegistryMap[Instance] = Data;

    if IsHud then
        table.insert(Library.HudRegistry, Data);
    end;
end;

function Library:RemoveFromRegistry(Instance)
    local Data = Library.RegistryMap[Instance];

    if Data then
        for Idx = #Library.Registry, 1, -1 do
            if Library.Registry[Idx] == Data then
                table.remove(Library.Registry, Idx);
            end;
        end;

        for Idx = #Library.HudRegistry, 1, -1 do
            if Library.HudRegistry[Idx] == Data then
                table.remove(Library.HudRegistry, Idx);
            end;
        end;

        Library.RegistryMap[Instance] = nil;
    end;
end;

function Library:UpdateColorsUsingRegistry()
    -- TODO: Could have an 'active' list of objects
    -- where the active list only contains Visible objects.

    -- IMPL: Could setup .Changed events on the AddToRegistry function
    -- that listens for the 'Visible' propert being changed.
    -- Visible: true => Add to active list, and call UpdateColors function
    -- Visible: false => Remove from active list.

    -- The above would be especially efficient for a rainbow menu color or live color-changing.

    for Idx, Object in next, Library.Registry do
        for Property, ColorIdx in next, Object.Properties do
            if type(ColorIdx) == 'string' then
                Object.Instance[Property] = Library[ColorIdx];
            elseif type(ColorIdx) == 'function' then
                Object.Instance[Property] = ColorIdx()
            end
        end;
    end;
end;

function Library:GiveSignal(Signal)
    -- Only used for signals not attached to library instances, as those should be cleaned up on object destruction by Roblox
    table.insert(Library.Signals, Signal)
end

function Library:Unload()
    -- Unload all of the signals
    for Idx = #Library.Signals, 1, -1 do
        local Connection = table.remove(Library.Signals, Idx)
        Connection:Disconnect()
    end

     -- Call our unload callback, maybe to undo some hooks etc
    if Library.OnUnload then
        Library.OnUnload()
    end

    ScreenGui:Destroy()
end

function Library:OnUnload(Callback)
    Library.OnUnload = Callback
end

Library:GiveSignal(ScreenGui.DescendantRemoving:Connect(function(Instance)
    if Library.RegistryMap[Instance] then
        Library:RemoveFromRegistry(Instance);
    end;
end))

local BaseAddons = {};

do
    local Funcs = {};

    function Funcs:AddColorPicker(Idx, Info)
        local ToggleLabel = self.TextLabel;
        -- local Container = self.Container;

        assert(Info.Default, 'AddColorPicker: Missing default value.');

        local ColorPicker = {
            Value = Info.Default;
            Transparency = Info.Transparency or 0;
            Type = 'ColorPicker';
            Title = type(Info.Title) == 'string' and Info.Title or 'Color picker',
            Callback = Info.Callback or function(Color) end;
        };

        function ColorPicker:SetHSVFromRGB(Color)
            local H, S, V = Color3.toHSV(Color);

            ColorPicker.Hue = H;
            ColorPicker.Sat = S;
            ColorPicker.Vib = V;
        end;

        ColorPicker:SetHSVFromRGB(ColorPicker.Value);

        local DisplayFrame = Library:Create('Frame', {
            BackgroundColor3 = ColorPicker.Value;
            BorderColor3 = Library:GetDarkerColor(ColorPicker.Value);
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(0, 28, 0, 14);
            ZIndex = 6;
            Parent = ToggleLabel;
        });

        -- Transparency image taken from https://github.com/matas3535/SplixPrivateDrawingLibrary/blob/main/Library.lua cus i'm lazy
        local CheckerFrame = Library:Create('ImageLabel', {
            BorderSizePixel = 0;
            Size = UDim2.new(0, 27, 0, 13);
            ZIndex = 5;
            Image = 'http://www.roblox.com/asset/?id=12977615774';
            Visible = not not Info.Transparency;
            Parent = DisplayFrame;
        });

        -- 1/16/23
        -- Rewrote this to be placed inside the Library ScreenGui
        -- There was some issue which caused RelativeOffset to be way off
        -- Thus the color picker would never show

        local PickerFrameOuter = Library:Create('Frame', {
            Name = 'Color';
            BackgroundColor3 = Color3.new(1, 1, 1);
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.fromOffset(DisplayFrame.AbsolutePosition.X, DisplayFrame.AbsolutePosition.Y + 18),
            Size = UDim2.fromOffset(230, Info.Transparency and 271 or 253);
            Visible = false;
            ZIndex = 15;
            Parent = ScreenGui,
        });

        DisplayFrame:GetPropertyChangedSignal('AbsolutePosition'):Connect(function()
            PickerFrameOuter.Position = UDim2.fromOffset(DisplayFrame.AbsolutePosition.X, DisplayFrame.AbsolutePosition.Y + 18);
        end)

        local PickerFrameInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 16;
            Parent = PickerFrameOuter;
        });

        local Highlight = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 0, 2);
            ZIndex = 17;
            Parent = PickerFrameInner;
        });

        local SatVibMapOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.new(0, 4, 0, 25);
            Size = UDim2.new(0, 200, 0, 200);
            ZIndex = 17;
            Parent = PickerFrameInner;
        });

        local SatVibMapInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18;
            Parent = SatVibMapOuter;
        });

        local SatVibMap = Library:Create('ImageLabel', {
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18;
            Image = 'rbxassetid://4155801252';
            Parent = SatVibMapInner;
        });

        local CursorOuter = Library:Create('ImageLabel', {
            AnchorPoint = Vector2.new(0.5, 0.5);
            Size = UDim2.new(0, 6, 0, 6);
            BackgroundTransparency = 1;
            Image = 'http://www.roblox.com/asset/?id=9619665977';
            ImageColor3 = Color3.new(0, 0, 0);
            ZIndex = 19;
            Parent = SatVibMap;
        });

        local CursorInner = Library:Create('ImageLabel', {
            Size = UDim2.new(0, CursorOuter.Size.X.Offset - 2, 0, CursorOuter.Size.Y.Offset - 2);
            Position = UDim2.new(0, 1, 0, 1);
            BackgroundTransparency = 1;
            Image = 'http://www.roblox.com/asset/?id=9619665977';
            ZIndex = 20;
            Parent = CursorOuter;
        })

        local HueSelectorOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.new(0, 208, 0, 25);
            Size = UDim2.new(0, 15, 0, 200);
            ZIndex = 17;
            Parent = PickerFrameInner;
        });

        local HueSelectorInner = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(1, 1, 1);
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18;
            Parent = HueSelectorOuter;
        });

        local HueCursor = Library:Create('Frame', { 
            BackgroundColor3 = Color3.new(1, 1, 1);
            AnchorPoint = Vector2.new(0, 0.5);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, 0, 0, 1);
            ZIndex = 18;
            Parent = HueSelectorInner;
        });

        local HueBoxOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.fromOffset(4, 228),
            Size = UDim2.new(0.5, -6, 0, 20),
            ZIndex = 18,
            Parent = PickerFrameInner;
        });

        local HueBoxInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 18,
            Parent = HueBoxOuter;
        });

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = HueBoxInner;
        });

        local HueBox = Library:Create('TextBox', {
            BackgroundTransparency = 1;
            Position = UDim2.new(0, 5, 0, 0);
            Size = UDim2.new(1, -5, 1, 0);
            Font = Library.Font;
            PlaceholderColor3 = Color3.fromRGB(190, 190, 190);
            PlaceholderText = 'Hex color',
            Text = '#FFFFFF',
            TextColor3 = Library.FontColor;
            TextSize = 14;
            TextStrokeTransparency = 0;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 20,
            Parent = HueBoxInner;
        });

        Library:ApplyTextStroke(HueBox);

        local RgbBoxBase = Library:Create(HueBoxOuter:Clone(), {
            Position = UDim2.new(0.5, 2, 0, 228),
            Size = UDim2.new(0.5, -6, 0, 20),
            Parent = PickerFrameInner
        });

        local RgbBox = Library:Create(RgbBoxBase.Frame:FindFirstChild('TextBox'), {
            Text = '255, 255, 255',
            PlaceholderText = 'RGB color',
            TextColor3 = Library.FontColor
        });

        local TransparencyBoxOuter, TransparencyBoxInner, TransparencyCursor;
        
        if Info.Transparency then 
            TransparencyBoxOuter = Library:Create('Frame', {
                BorderColor3 = Color3.new(0, 0, 0);
                Position = UDim2.fromOffset(4, 251);
                Size = UDim2.new(1, -8, 0, 15);
                ZIndex = 19;
                Parent = PickerFrameInner;
            });

            TransparencyBoxInner = Library:Create('Frame', {
                BackgroundColor3 = ColorPicker.Value;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 1, 0);
                ZIndex = 19;
                Parent = TransparencyBoxOuter;
            });

            Library:AddToRegistry(TransparencyBoxInner, { BorderColor3 = 'OutlineColor' });

            Library:Create('ImageLabel', {
                BackgroundTransparency = 1;
                Size = UDim2.new(1, 0, 1, 0);
                Image = 'http://www.roblox.com/asset/?id=12978095818';
                ZIndex = 20;
                Parent = TransparencyBoxInner;
            });

            TransparencyCursor = Library:Create('Frame', { 
                BackgroundColor3 = Color3.new(1, 1, 1);
                AnchorPoint = Vector2.new(0.5, 0);
                BorderColor3 = Color3.new(0, 0, 0);
                Size = UDim2.new(0, 1, 1, 0);
                ZIndex = 21;
                Parent = TransparencyBoxInner;
            });
        end;

        local DisplayLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 0, 14);
            Position = UDim2.fromOffset(5, 5);
            TextXAlignment = Enum.TextXAlignment.Left;
            TextSize = 14;
            Text = ColorPicker.Title,--Info.Default;
            TextWrapped = false;
            ZIndex = 16;
            Parent = PickerFrameInner;
        });


        local ContextMenu = {}
        do
            ContextMenu.Options = {}
            ContextMenu.Container = Library:Create('Frame', {
                BorderColor3 = Color3.new(),
                ZIndex = 14,

                Visible = false,
                Parent = ScreenGui
            })

            ContextMenu.Inner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.fromScale(1, 1);
                ZIndex = 15;
                Parent = ContextMenu.Container;
            });

            Library:Create('UIListLayout', {
                Name = 'Layout',
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = ContextMenu.Inner;
            });

            Library:Create('UIPadding', {
                Name = 'Padding',
                PaddingLeft = UDim.new(0, 4),
                Parent = ContextMenu.Inner,
            });

            local function updateMenuPosition()
                ContextMenu.Container.Position = UDim2.fromOffset(
                    (DisplayFrame.AbsolutePosition.X + DisplayFrame.AbsoluteSize.X) + 4,
                    DisplayFrame.AbsolutePosition.Y + 1
                )
            end

            local function updateMenuSize()
                local menuWidth = 60
                for i, label in next, ContextMenu.Inner:GetChildren() do
                    if label:IsA('TextLabel') then
                        menuWidth = math.max(menuWidth, label.TextBounds.X)
                    end
                end

                ContextMenu.Container.Size = UDim2.fromOffset(
                    menuWidth + 8,
                    ContextMenu.Inner.Layout.AbsoluteContentSize.Y + 4
                )
            end

            DisplayFrame:GetPropertyChangedSignal('AbsolutePosition'):Connect(updateMenuPosition)
            ContextMenu.Inner.Layout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(updateMenuSize)

            task.spawn(updateMenuPosition)
            task.spawn(updateMenuSize)

            Library:AddToRegistry(ContextMenu.Inner, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });

            function ContextMenu:Show()
                self.Container.Visible = true
            end

            function ContextMenu:Hide()
                self.Container.Visible = false
            end

            function ContextMenu:AddOption(Str, Callback)
                if type(Callback) ~= 'function' then
                    Callback = function() end
                end

                local Button = Library:CreateLabel({
                    Active = false;
                    Size = UDim2.new(1, 0, 0, 15);
                    TextSize = 13;
                    Text = Str;
                    ZIndex = 16;
                    Parent = self.Inner;
                    TextXAlignment = Enum.TextXAlignment.Left,
                });

                Library:OnHighlight(Button, Button, 
                    { TextColor3 = 'AccentColor' },
                    { TextColor3 = 'FontColor' }
                );

                Button.InputBegan:Connect(function(Input)
                    if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                        return
                    end

                    Callback()
                end)
            end

            ContextMenu:AddOption('Copy color', function()
                Library.ColorClipboard = ColorPicker.Value
                Library:Notify('Copied color!', 2)
            end)

            ContextMenu:AddOption('Paste color', function()
                if not Library.ColorClipboard then
                    return Library:Notify('You have not copied a color!', 2)
                end
                ColorPicker:SetValueRGB(Library.ColorClipboard)
            end)


            ContextMenu:AddOption('Copy HEX', function()
                pcall(setclipboard, ColorPicker.Value:ToHex())
                Library:Notify('Copied hex code to clipboard!', 2)
            end)

            ContextMenu:AddOption('Copy RGB', function()
                pcall(setclipboard, table.concat({ math.floor(ColorPicker.Value.R * 255), math.floor(ColorPicker.Value.G * 255), math.floor(ColorPicker.Value.B * 255) }, ', '))
                Library:Notify('Copied RGB values to clipboard!', 2)
            end)

        end

        Library:AddToRegistry(PickerFrameInner, { BackgroundColor3 = 'BackgroundColor'; BorderColor3 = 'OutlineColor'; });
        Library:AddToRegistry(Highlight, { BackgroundColor3 = 'AccentColor'; });
        Library:AddToRegistry(SatVibMapInner, { BackgroundColor3 = 'BackgroundColor'; BorderColor3 = 'OutlineColor'; });

        Library:AddToRegistry(HueBoxInner, { BackgroundColor3 = 'MainColor'; BorderColor3 = 'OutlineColor'; });
        Library:AddToRegistry(RgbBoxBase.Frame, { BackgroundColor3 = 'MainColor'; BorderColor3 = 'OutlineColor'; });
        Library:AddToRegistry(RgbBox, { TextColor3 = 'FontColor', });
        Library:AddToRegistry(HueBox, { TextColor3 = 'FontColor', });

        local SequenceTable = {};

        for Hue = 0, 1, 0.1 do
            table.insert(SequenceTable, ColorSequenceKeypoint.new(Hue, Color3.fromHSV(Hue, 1, 1)));
        end;

        local HueSelectorGradient = Library:Create('UIGradient', {
            Color = ColorSequence.new(SequenceTable);
            Rotation = 90;
            Parent = HueSelectorInner;
        });

        HueBox.FocusLost:Connect(function(enter)
            if enter then
                local success, result = pcall(Color3.fromHex, HueBox.Text)
                if success and typeof(result) == 'Color3' then
                    ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = Color3.toHSV(result)
                end
            end

            ColorPicker:Display()
        end)

        RgbBox.FocusLost:Connect(function(enter)
            if enter then
                local r, g, b = RgbBox.Text:match('(%d+),%s*(%d+),%s*(%d+)')
                if r and g and b then
                    ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib = Color3.toHSV(Color3.fromRGB(r, g, b))
                end
            end

            ColorPicker:Display()
        end)

        function ColorPicker:Display()
            ColorPicker.Value = Color3.fromHSV(ColorPicker.Hue, ColorPicker.Sat, ColorPicker.Vib);
            SatVibMap.BackgroundColor3 = Color3.fromHSV(ColorPicker.Hue, 1, 1);

            Library:Create(DisplayFrame, {
                BackgroundColor3 = ColorPicker.Value;
                BackgroundTransparency = ColorPicker.Transparency;
                BorderColor3 = Library:GetDarkerColor(ColorPicker.Value);
            });

            if TransparencyBoxInner then
                TransparencyBoxInner.BackgroundColor3 = ColorPicker.Value;
                TransparencyCursor.Position = UDim2.new(1 - ColorPicker.Transparency, 0, 0, 0);
            end;

            CursorOuter.Position = UDim2.new(ColorPicker.Sat, 0, 1 - ColorPicker.Vib, 0);
            HueCursor.Position = UDim2.new(0, 0, ColorPicker.Hue, 0);

            HueBox.Text = '#' .. ColorPicker.Value:ToHex()
            RgbBox.Text = table.concat({ math.floor(ColorPicker.Value.R * 255), math.floor(ColorPicker.Value.G * 255), math.floor(ColorPicker.Value.B * 255) }, ', ')

            Library:SafeCallback(ColorPicker.Callback, ColorPicker.Value);
            Library:SafeCallback(ColorPicker.Changed, ColorPicker.Value);
        end;

        function ColorPicker:OnChanged(Func)
            ColorPicker.Changed = Func;
            Func(ColorPicker.Value)
        end;

        function ColorPicker:Show()
            for Frame, Val in next, Library.OpenedFrames do
                if Frame.Name == 'Color' then
                    Frame.Visible = false;
                    Library.OpenedFrames[Frame] = nil;
                end;
            end;

            PickerFrameOuter.Visible = true;
            Library.OpenedFrames[PickerFrameOuter] = true;
        end;

        function ColorPicker:Hide()
            PickerFrameOuter.Visible = false;
            Library.OpenedFrames[PickerFrameOuter] = nil;
        end;

        function ColorPicker:SetValue(HSV, Transparency)
            local Color = Color3.fromHSV(HSV[1], HSV[2], HSV[3]);

            ColorPicker.Transparency = Transparency or 0;
            ColorPicker:SetHSVFromRGB(Color);
            ColorPicker:Display();
        end;

        function ColorPicker:SetValueRGB(Color, Transparency)
            ColorPicker.Transparency = Transparency or 0;
            ColorPicker:SetHSVFromRGB(Color);
            ColorPicker:Display();
        end;

        SatVibMap.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local MinX = SatVibMap.AbsolutePosition.X;
                    local MaxX = MinX + SatVibMap.AbsoluteSize.X;
                    local MouseX = math.clamp(Mouse.X, MinX, MaxX);

                    local MinY = SatVibMap.AbsolutePosition.Y;
                    local MaxY = MinY + SatVibMap.AbsoluteSize.Y;
                    local MouseY = math.clamp(Mouse.Y, MinY, MaxY);

                    ColorPicker.Sat = (MouseX - MinX) / (MaxX - MinX);
                    ColorPicker.Vib = 1 - ((MouseY - MinY) / (MaxY - MinY));
                    ColorPicker:Display();

                    RenderStepped:Wait();
                end;

                Library:AttemptSave();
            end;
        end);

        HueSelectorInner.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local MinY = HueSelectorInner.AbsolutePosition.Y;
                    local MaxY = MinY + HueSelectorInner.AbsoluteSize.Y;
                    local MouseY = math.clamp(Mouse.Y, MinY, MaxY);

                    ColorPicker.Hue = ((MouseY - MinY) / (MaxY - MinY));
                    ColorPicker:Display();

                    RenderStepped:Wait();
                end;

                Library:AttemptSave();
            end;
        end);

        DisplayFrame.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                if PickerFrameOuter.Visible then
                    ColorPicker:Hide()
                else
                    ContextMenu:Hide()
                    ColorPicker:Show()
                end;
            elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
                ContextMenu:Show()
                ColorPicker:Hide()
            end
        end);

        if TransparencyBoxInner then
            TransparencyBoxInner.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                        local MinX = TransparencyBoxInner.AbsolutePosition.X;
                        local MaxX = MinX + TransparencyBoxInner.AbsoluteSize.X;
                        local MouseX = math.clamp(Mouse.X, MinX, MaxX);

                        ColorPicker.Transparency = 1 - ((MouseX - MinX) / (MaxX - MinX));

                        ColorPicker:Display();

                        RenderStepped:Wait();
                    end;

                    Library:AttemptSave();
                end;
            end);
        end;

        Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local AbsPos, AbsSize = PickerFrameOuter.AbsolutePosition, PickerFrameOuter.AbsoluteSize;

                if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                    or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                    ColorPicker:Hide();
                end;

                if not Library:IsMouseOverFrame(ContextMenu.Container) then
                    ContextMenu:Hide()
                end
            end;

            if Input.UserInputType == Enum.UserInputType.MouseButton2 and ContextMenu.Container.Visible then
                if not Library:IsMouseOverFrame(ContextMenu.Container) and not Library:IsMouseOverFrame(DisplayFrame) then
                    ContextMenu:Hide()
                end
            end
        end))

        ColorPicker:Display();
        ColorPicker.DisplayFrame = DisplayFrame

        Options[Idx] = ColorPicker;

        return self;
    end;

    function Funcs:AddKeyPicker(Idx, Info)
        local ParentObj = self;
        local ToggleLabel = self.TextLabel;
        local Container = self.Container;

        assert(Info.Default, 'AddKeyPicker: Missing default value.');

        local KeyPicker = {
            Value = Info.Default;
            Toggled = false;
            Mode = Info.Mode or 'Toggle'; -- Always, Toggle, Hold
            Type = 'KeyPicker';
            Callback = Info.Callback or function(Value) end;
            ChangedCallback = Info.ChangedCallback or function(New) end;

            SyncToggleState = Info.SyncToggleState or false;
        };

        if KeyPicker.SyncToggleState then
            Info.Modes = { 'Toggle' }
            Info.Mode = 'Toggle'
        end

        local PickOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(0, 28, 0, 15);
            ZIndex = 6;
            Parent = ToggleLabel;
        });

        local PickInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 7;
            Parent = PickOuter;
        });

        Library:AddToRegistry(PickInner, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        local DisplayLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 1, 0);
            TextSize = 13;
            Text = Info.Default;
            TextWrapped = true;
            ZIndex = 8;
            Parent = PickInner;
        });

        local ModeSelectOuter = Library:Create('Frame', {
            BorderColor3 = Color3.new(0, 0, 0);
            Position = UDim2.fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
            Size = UDim2.new(0, 60, 0, 45 + 2);
            Visible = false;
            ZIndex = 14;
            Parent = ScreenGui;
        });

        ToggleLabel:GetPropertyChangedSignal('AbsolutePosition'):Connect(function()
            ModeSelectOuter.Position = UDim2.fromOffset(ToggleLabel.AbsolutePosition.X + ToggleLabel.AbsoluteSize.X + 4, ToggleLabel.AbsolutePosition.Y + 1);
        end);

        local ModeSelectInner = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 15;
            Parent = ModeSelectOuter;
        });

        Library:AddToRegistry(ModeSelectInner, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:Create('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = ModeSelectInner;
        });

        local ContainerLabel = Library:CreateLabel({
            TextXAlignment = Enum.TextXAlignment.Left;
            Size = UDim2.new(1, 0, 0, 18);
            TextSize = 13;
            Visible = false;
            ZIndex = 110;
            Parent = Library.KeybindContainer;
        },  true);

        local Modes = Info.Modes or { 'Always', 'Toggle', 'Hold' };
        local ModeButtons = {};

        for Idx, Mode in next, Modes do
            local ModeButton = {};

            local Label = Library:CreateLabel({
                Active = false;
                Size = UDim2.new(1, 0, 0, 15);
                TextSize = 13;
                Text = Mode;
                ZIndex = 16;
                Parent = ModeSelectInner;
            });

            function ModeButton:Select()
                for _, Button in next, ModeButtons do
                    Button:Deselect();
                end;

                KeyPicker.Mode = Mode;

                Label.TextColor3 = Library.AccentColor;
                Library.RegistryMap[Label].Properties.TextColor3 = 'AccentColor';

                ModeSelectOuter.Visible = false;
            end;

            function ModeButton:Deselect()
                KeyPicker.Mode = nil;

                Label.TextColor3 = Library.FontColor;
                Library.RegistryMap[Label].Properties.TextColor3 = 'FontColor';
            end;

            Label.InputBegan:Connect(function(Input)
                if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                    ModeButton:Select();
                    Library:AttemptSave();
                end;
            end);

            if Mode == KeyPicker.Mode then
                ModeButton:Select();
            end;

            ModeButtons[Mode] = ModeButton;
        end;

        function KeyPicker:Update()
            if Info.NoUI then
                return;
            end;

            local State = KeyPicker:GetState();

            ContainerLabel.Text = string.format('[%s] %s (%s)', KeyPicker.Value, Info.Text, KeyPicker.Mode);

            ContainerLabel.Visible = true;
            ContainerLabel.TextColor3 = State and Library.AccentColor or Library.FontColor;

            Library.RegistryMap[ContainerLabel].Properties.TextColor3 = State and 'AccentColor' or 'FontColor';

            local YSize = 0
            local XSize = 0

            for _, Label in next, Library.KeybindContainer:GetChildren() do
                if Label:IsA('TextLabel') and Label.Visible then
                    YSize = YSize + 18;
                    if (Label.TextBounds.X > XSize) then
                        XSize = Label.TextBounds.X
                    end
                end;
            end;

            Library.KeybindFrame.Size = UDim2.new(0, math.max(XSize + 10, 210), 0, YSize + 23)
        end;

        function KeyPicker:GetState()
            if KeyPicker.Mode == 'Always' then
                return true;
            elseif KeyPicker.Mode == 'Hold' then
                if KeyPicker.Value == 'None' then
                    return false;
                end

                local Key = KeyPicker.Value;

                if Key == 'MB1' or Key == 'MB2' then
                    return Key == 'MB1' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)
                        or Key == 'MB2' and InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2);
                else
                    return InputService:IsKeyDown(Enum.KeyCode[KeyPicker.Value]);
                end;
            else
                return KeyPicker.Toggled;
            end;
        end;

        function KeyPicker:SetValue(Data)
            local Key, Mode = Data[1], Data[2];
            DisplayLabel.Text = Key;
            KeyPicker.Value = Key;
            ModeButtons[Mode]:Select();
            KeyPicker:Update();
        end;

        function KeyPicker:OnClick(Callback)
            KeyPicker.Clicked = Callback
        end

        function KeyPicker:OnChanged(Callback)
            KeyPicker.Changed = Callback
            Callback(KeyPicker.Value)
        end

        if ParentObj.Addons then
            table.insert(ParentObj.Addons, KeyPicker)
        end

        function KeyPicker:DoClick()
            if ParentObj.Type == 'Toggle' and KeyPicker.SyncToggleState then
                ParentObj:SetValue(not ParentObj.Value)
            end

            Library:SafeCallback(KeyPicker.Callback, KeyPicker.Toggled)
            Library:SafeCallback(KeyPicker.Clicked, KeyPicker.Toggled)
        end

        local Picking = false;

        PickOuter.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                Picking = true;

                DisplayLabel.Text = '';

                local Break;
                local Text = '';

                task.spawn(function()
                    while (not Break) do
                        if Text == '...' then
                            Text = '';
                        end;

                        Text = Text .. '.';
                        DisplayLabel.Text = Text;

                        wait(0.4);
                    end;
                end);

                wait(0.2);

                local Event;
                Event = InputService.InputBegan:Connect(function(Input)
                    local Key;

                    if Input.UserInputType == Enum.UserInputType.Keyboard then
                        Key = Input.KeyCode.Name;
                    elseif Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        Key = 'MB1';
                    elseif Input.UserInputType == Enum.UserInputType.MouseButton2 then
                        Key = 'MB2';
                    end;

                    Break = true;
                    Picking = false;

                    DisplayLabel.Text = Key;
                    KeyPicker.Value = Key;

                    Library:SafeCallback(KeyPicker.ChangedCallback, Input.KeyCode or Input.UserInputType)
                    Library:SafeCallback(KeyPicker.Changed, Input.KeyCode or Input.UserInputType)

                    Library:AttemptSave();

                    Event:Disconnect();
                end);
            elseif Input.UserInputType == Enum.UserInputType.MouseButton2 and not Library:MouseIsOverOpenedFrame() then
                ModeSelectOuter.Visible = true;
            end;
        end);

        Library:GiveSignal(InputService.InputBegan:Connect(function(Input)
            if (not Picking) then
                if KeyPicker.Mode == 'Toggle' then
                    local Key = KeyPicker.Value;

                    if Key == 'MB1' or Key == 'MB2' then
                        if Key == 'MB1' and Input.UserInputType == Enum.UserInputType.MouseButton1
                        or Key == 'MB2' and Input.UserInputType == Enum.UserInputType.MouseButton2 then
                            KeyPicker.Toggled = not KeyPicker.Toggled
                            KeyPicker:DoClick()
                        end;
                    elseif Input.UserInputType == Enum.UserInputType.Keyboard then
                        if Input.KeyCode.Name == Key then
                            KeyPicker.Toggled = not KeyPicker.Toggled;
                            KeyPicker:DoClick()
                        end;
                    end;
                end;

                KeyPicker:Update();
            end;

            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local AbsPos, AbsSize = ModeSelectOuter.AbsolutePosition, ModeSelectOuter.AbsoluteSize;

                if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                    or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                    ModeSelectOuter.Visible = false;
                end;
            end;
        end))

        Library:GiveSignal(InputService.InputEnded:Connect(function(Input)
            if (not Picking) then
                KeyPicker:Update();
            end;
        end))

        KeyPicker:Update();

        Options[Idx] = KeyPicker;

        return self;
    end;

    BaseAddons.__index = Funcs;
    BaseAddons.__namecall = function(Table, Key, ...)
        return Funcs[Key](...);
    end;
end;

local BaseGroupbox = {};

do
    local Funcs = {};

    function Funcs:AddBlank(Size)
        local Groupbox = self;
        local Container = Groupbox.Container;

        Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 0, Size);
            ZIndex = 1;
            Parent = Container;
        });
    end;

    function Funcs:AddLabel(Text, DoesWrap)
        local Label = {};

        local Groupbox = self;
        local Container = Groupbox.Container;

        local TextLabel = Library:CreateLabel({
            Size = UDim2.new(1, -4, 0, 15);
            TextSize = 14;
            Text = Text;
            TextWrapped = DoesWrap or false,
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 5;
            Parent = Container;
        });

        if DoesWrap then
            local Y = select(2, Library:GetTextBounds(Text, Library.Font, 14, Vector2.new(TextLabel.AbsoluteSize.X, math.huge)))
            TextLabel.Size = UDim2.new(1, -4, 0, Y)
        else
            Library:Create('UIListLayout', {
                Padding = UDim.new(0, 4);
                FillDirection = Enum.FillDirection.Horizontal;
                HorizontalAlignment = Enum.HorizontalAlignment.Right;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = TextLabel;
            });
        end

        Label.TextLabel = TextLabel;
        Label.Container = Container;

        function Label:SetText(Text)
            TextLabel.Text = Text

            if DoesWrap then
                local Y = select(2, Library:GetTextBounds(Text, Library.Font, 14, Vector2.new(TextLabel.AbsoluteSize.X, math.huge)))
                TextLabel.Size = UDim2.new(1, -4, 0, Y)
            end

            Groupbox:Resize();
        end

        if (not DoesWrap) then
            setmetatable(Label, BaseAddons);
        end

        Groupbox:AddBlank(5);
        Groupbox:Resize();

        return Label;
    end;

    function Funcs:AddButton(...)
        -- TODO: Eventually redo this
        local Button = {};
        local function ProcessButtonParams(Class, Obj, ...)
            local Props = select(1, ...)
            if type(Props) == 'table' then
                Obj.Text = Props.Text
                Obj.Func = Props.Func
                Obj.DoubleClick = Props.DoubleClick
                Obj.Tooltip = Props.Tooltip
            else
                Obj.Text = select(1, ...)
                Obj.Func = select(2, ...)
            end

            assert(type(Obj.Func) == 'function', 'AddButton: `Func` callback is missing.');
        end

        ProcessButtonParams('Button', Button, ...)

        local Groupbox = self;
        local Container = Groupbox.Container;

        local function CreateBaseButton(Button)
            local Outer = Library:Create('Frame', {
                BackgroundColor3 = Color3.new(0, 0, 0);
                BorderColor3 = Color3.new(0, 0, 0);
                Size = UDim2.new(1, -4, 0, 20);
                ZIndex = 5;
            });

            local Inner = Library:Create('Frame', {
                BackgroundColor3 = Library.MainColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 1, 0);
                ZIndex = 6;
                Parent = Outer;
            });

            local Label = Library:CreateLabel({
                Size = UDim2.new(1, 0, 1, 0);
                TextSize = 14;
                Text = Button.Text;
                ZIndex = 6;
                Parent = Inner;
            });

            Library:Create('UIGradient', {
                Color = ColorSequence.new({
                    ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                    ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
                });
                Rotation = 90;
                Parent = Inner;
            });

            Library:AddToRegistry(Outer, {
                BorderColor3 = 'Black';
            });

            Library:AddToRegistry(Inner, {
                BackgroundColor3 = 'MainColor';
                BorderColor3 = 'OutlineColor';
            });

            Library:OnHighlight(Outer, Outer,
                { BorderColor3 = 'AccentColor' },
                { BorderColor3 = 'Black' }
            );

            return Outer, Inner, Label
        end

        local function InitEvents(Button)
            local function WaitForEvent(event, timeout, validator)
                local bindable = Instance.new('BindableEvent')
                local connection = event:Once(function(...)

                    if type(validator) == 'function' and validator(...) then
                        bindable:Fire(true)
                    else
                        bindable:Fire(false)
                    end
                end)
                task.delay(timeout, function()
                    connection:disconnect()
                    bindable:Fire(false)
                end)
                return bindable.Event:Wait()
            end

            local function ValidateClick(Input)
                if Library:MouseIsOverOpenedFrame() then
                    return false
                end

                if Input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                    return false
                end

                return true
            end

            Button.Outer.InputBegan:Connect(function(Input)
                if not ValidateClick(Input) then return end
                if Button.Locked then return end

                if Button.DoubleClick then
                    Library:RemoveFromRegistry(Button.Label)
                    Library:AddToRegistry(Button.Label, { TextColor3 = 'AccentColor' })

                    Button.Label.TextColor3 = Library.AccentColor
                    Button.Label.Text = 'Are you sure?'
                    Button.Locked = true

                    local clicked = WaitForEvent(Button.Outer.InputBegan, 0.5, ValidateClick)

                    Library:RemoveFromRegistry(Button.Label)
                    Library:AddToRegistry(Button.Label, { TextColor3 = 'FontColor' })

                    Button.Label.TextColor3 = Library.FontColor
                    Button.Label.Text = Button.Text
                    task.defer(rawset, Button, 'Locked', false)

                    if clicked then
                        Library:SafeCallback(Button.Func)
                    end

                    return
                end

                Library:SafeCallback(Button.Func);
            end)
        end

        Button.Outer, Button.Inner, Button.Label = CreateBaseButton(Button)
        Button.Outer.Parent = Container

        InitEvents(Button)

        function Button:AddTooltip(tooltip)
            if type(tooltip) == 'string' then
                Library:AddToolTip(tooltip, self.Outer)
            end
            return self
        end


        function Button:AddButton(...)
            local SubButton = {}

            ProcessButtonParams('SubButton', SubButton, ...)

            self.Outer.Size = UDim2.new(0.5, -2, 0, 20)

            SubButton.Outer, SubButton.Inner, SubButton.Label = CreateBaseButton(SubButton)

            SubButton.Outer.Position = UDim2.new(1, 3, 0, 0)
            SubButton.Outer.Size = UDim2.fromOffset(self.Outer.AbsoluteSize.X - 2, self.Outer.AbsoluteSize.Y)
            SubButton.Outer.Parent = self.Outer

            function SubButton:AddTooltip(tooltip)
                if type(tooltip) == 'string' then
                    Library:AddToolTip(tooltip, self.Outer)
                end
                return SubButton
            end

            if type(SubButton.Tooltip) == 'string' then
                SubButton:AddTooltip(SubButton.Tooltip)
            end

            InitEvents(SubButton)
            return SubButton
        end

        if type(Button.Tooltip) == 'string' then
            Button:AddTooltip(Button.Tooltip)
        end

        Groupbox:AddBlank(5);
        Groupbox:Resize();

        return Button;
    end;

    function Funcs:AddDivider()
        local Groupbox = self;
        local Container = self.Container

        local Divider = {
            Type = 'Divider',
        }

        Groupbox:AddBlank(2);
        local DividerOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 5);
            ZIndex = 5;
            Parent = Container;
        });

        local DividerInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = DividerOuter;
        });

        Library:AddToRegistry(DividerOuter, {
            BorderColor3 = 'Black';
        });

        Library:AddToRegistry(DividerInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Groupbox:AddBlank(9);
        Groupbox:Resize();
    end

    function Funcs:AddInput(Idx, Info)
        assert(Info.Text, 'AddInput: Missing `Text` string.')

        local Textbox = {
            Value = Info.Default or '';
            Numeric = Info.Numeric or false;
            Finished = Info.Finished or false;
            Type = 'Input';
            Callback = Info.Callback or function(Value) end;
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        local InputLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 0, 15);
            TextSize = 14;
            Text = Info.Text;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 5;
            Parent = Container;
        });

        Groupbox:AddBlank(1);

        local TextBoxOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 20);
            ZIndex = 5;
            Parent = Container;
        });

        local TextBoxInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = TextBoxOuter;
        });

        Library:AddToRegistry(TextBoxInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:OnHighlight(TextBoxOuter, TextBoxOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, TextBoxOuter)
        end

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = TextBoxInner;
        });

        local Container = Library:Create('Frame', {
            BackgroundTransparency = 1;
            ClipsDescendants = true;

            Position = UDim2.new(0, 5, 0, 0);
            Size = UDim2.new(1, -5, 1, 0);

            ZIndex = 7;
            Parent = TextBoxInner;
        })

        local Box = Library:Create('TextBox', {
            BackgroundTransparency = 1;

            Position = UDim2.fromOffset(0, 0),
            Size = UDim2.fromScale(5, 1),

            Font = Library.Font;
            PlaceholderColor3 = Color3.fromRGB(190, 190, 190);
            PlaceholderText = Info.Placeholder or '';

            Text = Info.Default or '';
            TextColor3 = Library.FontColor;
            TextSize = 14;
            TextStrokeTransparency = 0;
            TextXAlignment = Enum.TextXAlignment.Left;

            ZIndex = 7;
            Parent = Container;
        });

        Library:ApplyTextStroke(Box);

        function Textbox:SetValue(Text)
            if Info.MaxLength and #Text > Info.MaxLength then
                Text = Text:sub(1, Info.MaxLength);
            end;

            if Textbox.Numeric then
                if (not tonumber(Text)) and Text:len() > 0 then
                    Text = Textbox.Value
                end
            end

            Textbox.Value = Text;
            Box.Text = Text;

            Library:SafeCallback(Textbox.Callback, Textbox.Value);
            Library:SafeCallback(Textbox.Changed, Textbox.Value);
        end;

        if Textbox.Finished then
            Box.FocusLost:Connect(function(enter)
                if not enter then return end

                Textbox:SetValue(Box.Text);
                Library:AttemptSave();
            end)
        else
            Box:GetPropertyChangedSignal('Text'):Connect(function()
                Textbox:SetValue(Box.Text);
                Library:AttemptSave();
            end);
        end

        -- https://devforum.roblox.com/t/how-to-make-textboxes-follow-current-cursor-position/1368429/6
        -- thank you nicemike40 :)

        local function Update()
            local PADDING = 2
            local reveal = Container.AbsoluteSize.X

            if not Box:IsFocused() or Box.TextBounds.X <= reveal - 2 * PADDING then
                -- we aren't focused, or we fit so be normal
                Box.Position = UDim2.new(0, PADDING, 0, 0)
            else
                -- we are focused and don't fit, so adjust position
                local cursor = Box.CursorPosition
                if cursor ~= -1 then
                    -- calculate pixel width of text from start to cursor
                    local subtext = string.sub(Box.Text, 1, cursor-1)
                    local width = TextService:GetTextSize(subtext, Box.TextSize, Box.Font, Vector2.new(math.huge, math.huge)).X

                    -- check if we're inside the box with the cursor
                    local currentCursorPos = Box.Position.X.Offset + width

                    -- adjust if necessary
                    if currentCursorPos < PADDING then
                        Box.Position = UDim2.fromOffset(PADDING-width, 0)
                    elseif currentCursorPos > reveal - PADDING - 1 then
                        Box.Position = UDim2.fromOffset(reveal-width-PADDING-1, 0)
                    end
                end
            end
        end

        task.spawn(Update)

        Box:GetPropertyChangedSignal('Text'):Connect(Update)
        Box:GetPropertyChangedSignal('CursorPosition'):Connect(Update)
        Box.FocusLost:Connect(Update)
        Box.Focused:Connect(Update)

        Library:AddToRegistry(Box, {
            TextColor3 = 'FontColor';
        });

        function Textbox:OnChanged(Func)
            Textbox.Changed = Func;
            Func(Textbox.Value);
        end;

        Groupbox:AddBlank(5);
        Groupbox:Resize();

        Options[Idx] = Textbox;

        return Textbox;
    end;

    function Funcs:AddToggle(Idx, Info)
        assert(Info.Text, 'AddInput: Missing `Text` string.')

        local Toggle = {
            Value = Info.Default or false;
            Type = 'Toggle';

            Callback = Info.Callback or function(Value) end;
            Addons = {},
            Risky = Info.Risky,
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        local ToggleOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(0, 13, 0, 13);
            ZIndex = 5;
            Parent = Container;
        });

        Library:AddToRegistry(ToggleOuter, {
            BorderColor3 = 'Black';
        });

        local ToggleInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = ToggleOuter;
        });

        Library:AddToRegistry(ToggleInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        local ToggleLabel = Library:CreateLabel({
            Size = UDim2.new(0, 216, 1, 0);
            Position = UDim2.new(1, 6, 0, 0);
            TextSize = 14;
            Text = Info.Text;
            TextXAlignment = Enum.TextXAlignment.Left;
            ZIndex = 6;
            Parent = ToggleInner;
        });

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 4);
            FillDirection = Enum.FillDirection.Horizontal;
            HorizontalAlignment = Enum.HorizontalAlignment.Right;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = ToggleLabel;
        });

        local ToggleRegion = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(0, 170, 1, 0);
            ZIndex = 8;
            Parent = ToggleOuter;
        });

        Library:OnHighlight(ToggleRegion, ToggleOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        function Toggle:UpdateColors()
            Toggle:Display();
        end;

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, ToggleRegion)
        end

        function Toggle:Display()
            ToggleInner.BackgroundColor3 = Toggle.Value and Library.AccentColor or Library.MainColor;
            ToggleInner.BorderColor3 = Toggle.Value and Library.AccentColorDark or Library.OutlineColor;

            Library.RegistryMap[ToggleInner].Properties.BackgroundColor3 = Toggle.Value and 'AccentColor' or 'MainColor';
            Library.RegistryMap[ToggleInner].Properties.BorderColor3 = Toggle.Value and 'AccentColorDark' or 'OutlineColor';
        end;

        function Toggle:OnChanged(Func)
            Toggle.Changed = Func;
            Func(Toggle.Value);
        end;

        function Toggle:SetValue(Bool)
            Bool = (not not Bool);

            Toggle.Value = Bool;
            Toggle:Display();

            for _, Addon in next, Toggle.Addons do
                if Addon.Type == 'KeyPicker' and Addon.SyncToggleState then
                    Addon.Toggled = Bool
                    Addon:Update()
                end
            end

            Library:SafeCallback(Toggle.Callback, Toggle.Value);
            Library:SafeCallback(Toggle.Changed, Toggle.Value);
            Library:UpdateDependencyBoxes();
        end;

        ToggleRegion.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                Toggle:SetValue(not Toggle.Value) -- Why was it not like this from the start?
                Library:AttemptSave();
            end;
        end);

        if Toggle.Risky then
            Library:RemoveFromRegistry(ToggleLabel)
            ToggleLabel.TextColor3 = Library.RiskColor
            Library:AddToRegistry(ToggleLabel, { TextColor3 = 'RiskColor' })
        end

        Toggle:Display();
        Groupbox:AddBlank(Info.BlankSize or 5 + 2);
        Groupbox:Resize();

        Toggle.TextLabel = ToggleLabel;
        Toggle.Container = Container;
        setmetatable(Toggle, BaseAddons);

        Toggles[Idx] = Toggle;

        Library:UpdateDependencyBoxes();

        return Toggle;
    end;

    function Funcs:AddSlider(Idx, Info)
        assert(Info.Default, 'AddSlider: Missing default value.');
        assert(Info.Text, 'AddSlider: Missing slider text.');
        assert(Info.Min, 'AddSlider: Missing minimum value.');
        assert(Info.Max, 'AddSlider: Missing maximum value.');
        assert(Info.Rounding, 'AddSlider: Missing rounding value.');

        local Slider = {
            Value = Info.Default;
            Min = Info.Min;
            Max = Info.Max;
            Rounding = Info.Rounding;
            MaxSize = 232;
            Type = 'Slider';
            Callback = Info.Callback or function(Value) end;
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        if not Info.Compact then
            Library:CreateLabel({
                Size = UDim2.new(1, 0, 0, 10);
                TextSize = 14;
                Text = Info.Text;
                TextXAlignment = Enum.TextXAlignment.Left;
                TextYAlignment = Enum.TextYAlignment.Bottom;
                ZIndex = 5;
                Parent = Container;
            });

            Groupbox:AddBlank(3);
        end

        local SliderOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 13);
            ZIndex = 5;
            Parent = Container;
        });

        Library:AddToRegistry(SliderOuter, {
            BorderColor3 = 'Black';
        });

        local SliderInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = SliderOuter;
        });

        Library:AddToRegistry(SliderInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        local Fill = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderColor3 = Library.AccentColorDark;
            Size = UDim2.new(0, 0, 1, 0);
            ZIndex = 7;
            Parent = SliderInner;
        });

        Library:AddToRegistry(Fill, {
            BackgroundColor3 = 'AccentColor';
            BorderColor3 = 'AccentColorDark';
        });

        local HideBorderRight = Library:Create('Frame', {
            BackgroundColor3 = Library.AccentColor;
            BorderSizePixel = 0;
            Position = UDim2.new(1, 0, 0, 0);
            Size = UDim2.new(0, 1, 1, 0);
            ZIndex = 8;
            Parent = Fill;
        });

        Library:AddToRegistry(HideBorderRight, {
            BackgroundColor3 = 'AccentColor';
        });

        local DisplayLabel = Library:CreateLabel({
            Size = UDim2.new(1, 0, 1, 0);
            TextSize = 14;
            Text = 'Infinite';
            ZIndex = 9;
            Parent = SliderInner;
        });

        Library:OnHighlight(SliderOuter, SliderOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, SliderOuter)
        end

        function Slider:UpdateColors()
            Fill.BackgroundColor3 = Library.AccentColor;
            Fill.BorderColor3 = Library.AccentColorDark;
        end;

        function Slider:Display()
            local Suffix = Info.Suffix or '';

            if Info.Compact then
                DisplayLabel.Text = Info.Text .. ': ' .. Slider.Value .. Suffix
            elseif Info.HideMax then
                DisplayLabel.Text = string.format('%s', Slider.Value .. Suffix)
            else
                DisplayLabel.Text = string.format('%s/%s', Slider.Value .. Suffix, Slider.Max .. Suffix);
            end

            local X = math.ceil(Library:MapValue(Slider.Value, Slider.Min, Slider.Max, 0, Slider.MaxSize));
            Fill.Size = UDim2.new(0, X, 1, 0);

            HideBorderRight.Visible = not (X == Slider.MaxSize or X == 0);
        end;

        function Slider:OnChanged(Func)
            Slider.Changed = Func;
            Func(Slider.Value);
        end;

        local function Round(Value)
            if Slider.Rounding == 0 then
                return math.floor(Value);
            end;


            return tonumber(string.format('%.' .. Slider.Rounding .. 'f', Value))
        end;

        function Slider:GetValueFromXOffset(X)
            return Round(Library:MapValue(X, 0, Slider.MaxSize, Slider.Min, Slider.Max));
        end;

        function Slider:SetValue(Str)
            local Num = tonumber(Str);

            if (not Num) then
                return;
            end;

            Num = math.clamp(Num, Slider.Min, Slider.Max);

            Slider.Value = Num;
            Slider:Display();

            Library:SafeCallback(Slider.Callback, Slider.Value);
            Library:SafeCallback(Slider.Changed, Slider.Value);
        end;

        SliderInner.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                local mPos = Mouse.X;
                local gPos = Fill.Size.X.Offset;
                local Diff = mPos - (Fill.AbsolutePosition.X + gPos);

                while InputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
                    local nMPos = Mouse.X;
                    local nX = math.clamp(gPos + (nMPos - mPos) + Diff, 0, Slider.MaxSize);

                    local nValue = Slider:GetValueFromXOffset(nX);
                    local OldValue = Slider.Value;
                    Slider.Value = nValue;

                    Slider:Display();

                    if nValue ~= OldValue then
                        Library:SafeCallback(Slider.Callback, Slider.Value);
                        Library:SafeCallback(Slider.Changed, Slider.Value);
                    end;

                    RenderStepped:Wait();
                end;

                Library:AttemptSave();
            end;
        end);

        Slider:Display();
        Groupbox:AddBlank(Info.BlankSize or 6);
        Groupbox:Resize();

        Options[Idx] = Slider;

        return Slider;
    end;

    function Funcs:AddDropdown(Idx, Info)
        if Info.SpecialType == 'Player' then
            Info.Values = GetPlayersString();
            Info.AllowNull = true;
        elseif Info.SpecialType == 'Team' then
            Info.Values = GetTeamsString();
            Info.AllowNull = true;
        end;

        assert(Info.Values, 'AddDropdown: Missing dropdown value list.');
        assert(Info.AllowNull or Info.Default, 'AddDropdown: Missing default value. Pass `AllowNull` as true if this was intentional.')

        if (not Info.Text) then
            Info.Compact = true;
        end;

        local Dropdown = {
            Values = Info.Values;
            Value = Info.Multi and {};
            Multi = Info.Multi;
            Type = 'Dropdown';
            SpecialType = Info.SpecialType; -- can be either 'Player' or 'Team'
            Callback = Info.Callback or function(Value) end;
        };

        local Groupbox = self;
        local Container = Groupbox.Container;

        local RelativeOffset = 0;

        if not Info.Compact then
            local DropdownLabel = Library:CreateLabel({
                Size = UDim2.new(1, 0, 0, 10);
                TextSize = 14;
                Text = Info.Text;
                TextXAlignment = Enum.TextXAlignment.Left;
                TextYAlignment = Enum.TextYAlignment.Bottom;
                ZIndex = 5;
                Parent = Container;
            });

            Groupbox:AddBlank(3);
        end

        for _, Element in next, Container:GetChildren() do
            if not Element:IsA('UIListLayout') then
                RelativeOffset = RelativeOffset + Element.Size.Y.Offset;
            end;
        end;

        local DropdownOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            Size = UDim2.new(1, -4, 0, 20);
            ZIndex = 5;
            Parent = Container;
        });

        Library:AddToRegistry(DropdownOuter, {
            BorderColor3 = 'Black';
        });

        local DropdownInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 6;
            Parent = DropdownOuter;
        });

        Library:AddToRegistry(DropdownInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        Library:Create('UIGradient', {
            Color = ColorSequence.new({
                ColorSequenceKeypoint.new(0, Color3.new(1, 1, 1)),
                ColorSequenceKeypoint.new(1, Color3.fromRGB(212, 212, 212))
            });
            Rotation = 90;
            Parent = DropdownInner;
        });

        local DropdownArrow = Library:Create('ImageLabel', {
            AnchorPoint = Vector2.new(0, 0.5);
            BackgroundTransparency = 1;
            Position = UDim2.new(1, -16, 0.5, 0);
            Size = UDim2.new(0, 12, 0, 12);
            Image = 'http://www.roblox.com/asset/?id=6282522798';
            ZIndex = 8;
            Parent = DropdownInner;
        });

        local ItemList = Library:CreateLabel({
            Position = UDim2.new(0, 5, 0, 0);
            Size = UDim2.new(1, -5, 1, 0);
            TextSize = 14;
            Text = '--';
            TextXAlignment = Enum.TextXAlignment.Left;
            TextWrapped = true;
            ZIndex = 7;
            Parent = DropdownInner;
        });

        Library:OnHighlight(DropdownOuter, DropdownOuter,
            { BorderColor3 = 'AccentColor' },
            { BorderColor3 = 'Black' }
        );

        if type(Info.Tooltip) == 'string' then
            Library:AddToolTip(Info.Tooltip, DropdownOuter)
        end

        local MAX_DROPDOWN_ITEMS = 8;

        local ListOuter = Library:Create('Frame', {
            BackgroundColor3 = Color3.new(0, 0, 0);
            BorderColor3 = Color3.new(0, 0, 0);
            ZIndex = 20;
            Visible = false;
            Parent = ScreenGui;
        });

        local function RecalculateListPosition()
            ListOuter.Position = UDim2.fromOffset(DropdownOuter.AbsolutePosition.X, DropdownOuter.AbsolutePosition.Y + DropdownOuter.Size.Y.Offset + 1);
        end;

        local function RecalculateListSize(YSize)
            ListOuter.Size = UDim2.fromOffset(DropdownOuter.AbsoluteSize.X, YSize or (MAX_DROPDOWN_ITEMS * 20 + 2))
        end;

        RecalculateListPosition();
        RecalculateListSize();

        DropdownOuter:GetPropertyChangedSignal('AbsolutePosition'):Connect(RecalculateListPosition);

        local ListInner = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderColor3 = Library.OutlineColor;
            BorderMode = Enum.BorderMode.Inset;
            BorderSizePixel = 0;
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 21;
            Parent = ListOuter;
        });

        Library:AddToRegistry(ListInner, {
            BackgroundColor3 = 'MainColor';
            BorderColor3 = 'OutlineColor';
        });

        local Scrolling = Library:Create('ScrollingFrame', {
            BackgroundTransparency = 1;
            BorderSizePixel = 0;
            CanvasSize = UDim2.new(0, 0, 0, 0);
            Size = UDim2.new(1, 0, 1, 0);
            ZIndex = 21;
            Parent = ListInner;

            TopImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',
            BottomImage = 'rbxasset://textures/ui/Scroll/scroll-middle.png',

            ScrollBarThickness = 3,
            ScrollBarImageColor3 = Library.AccentColor,
        });

        Library:AddToRegistry(Scrolling, {
            ScrollBarImageColor3 = 'AccentColor'
        })

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 0);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = Scrolling;
        });

        function Dropdown:Display()
            local Values = Dropdown.Values;
            local Str = '';

            if Info.Multi then
                for Idx, Value in next, Values do
                    if Dropdown.Value[Value] then
                        Str = Str .. Value .. ', ';
                    end;
                end;

                Str = Str:sub(1, #Str - 2);
            else
                Str = Dropdown.Value or '';
            end;

            ItemList.Text = (Str == '' and '--' or Str);
        end;

        function Dropdown:GetActiveValues()
            if Info.Multi then
                local T = {};

                for Value, Bool in next, Dropdown.Value do
                    table.insert(T, Value);
                end;

                return T;
            else
                return Dropdown.Value and 1 or 0;
            end;
        end;

        function Dropdown:BuildDropdownList()
            local Values = Dropdown.Values;
            local Buttons = {};

            for _, Element in next, Scrolling:GetChildren() do
                if not Element:IsA('UIListLayout') then
                    Element:Destroy();
                end;
            end;

            local Count = 0;

            for Idx, Value in next, Values do
                local Table = {};

                Count = Count + 1;

                local Button = Library:Create('Frame', {
                    BackgroundColor3 = Library.MainColor;
                    BorderColor3 = Library.OutlineColor;
                    BorderMode = Enum.BorderMode.Middle;
                    Size = UDim2.new(1, -1, 0, 20);
                    ZIndex = 23;
                    Active = true,
                    Parent = Scrolling;
                });

                Library:AddToRegistry(Button, {
                    BackgroundColor3 = 'MainColor';
                    BorderColor3 = 'OutlineColor';
                });

                local ButtonLabel = Library:CreateLabel({
                    Active = false;
                    Size = UDim2.new(1, -6, 1, 0);
                    Position = UDim2.new(0, 6, 0, 0);
                    TextSize = 14;
                    Text = Value;
                    TextXAlignment = Enum.TextXAlignment.Left;
                    ZIndex = 25;
                    Parent = Button;
                });

                Library:OnHighlight(Button, Button,
                    { BorderColor3 = 'AccentColor', ZIndex = 24 },
                    { BorderColor3 = 'OutlineColor', ZIndex = 23 }
                );

                local Selected;

                if Info.Multi then
                    Selected = Dropdown.Value[Value];
                else
                    Selected = Dropdown.Value == Value;
                end;

                function Table:UpdateButton()
                    if Info.Multi then
                        Selected = Dropdown.Value[Value];
                    else
                        Selected = Dropdown.Value == Value;
                    end;

                    ButtonLabel.TextColor3 = Selected and Library.AccentColor or Library.FontColor;
                    Library.RegistryMap[ButtonLabel].Properties.TextColor3 = Selected and 'AccentColor' or 'FontColor';
                end;

                ButtonLabel.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                        local Try = not Selected;

                        if Dropdown:GetActiveValues() == 1 and (not Try) and (not Info.AllowNull) then
                        else
                            if Info.Multi then
                                Selected = Try;

                                if Selected then
                                    Dropdown.Value[Value] = true;
                                else
                                    Dropdown.Value[Value] = nil;
                                end;
                            else
                                Selected = Try;

                                if Selected then
                                    Dropdown.Value = Value;
                                else
                                    Dropdown.Value = nil;
                                end;

                                for _, OtherButton in next, Buttons do
                                    OtherButton:UpdateButton();
                                end;
                            end;

                            Table:UpdateButton();
                            Dropdown:Display();

                            Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
                            Library:SafeCallback(Dropdown.Changed, Dropdown.Value);

                            Library:AttemptSave();
                        end;
                    end;
                end);

                Table:UpdateButton();
                Dropdown:Display();

                Buttons[Button] = Table;
            end;

            Scrolling.CanvasSize = UDim2.fromOffset(0, (Count * 20) + 1);

            local Y = math.clamp(Count * 20, 0, MAX_DROPDOWN_ITEMS * 20) + 1;
            RecalculateListSize(Y);
        end;

        function Dropdown:SetValues(NewValues)
            if NewValues then
                Dropdown.Values = NewValues;
            end;

            Dropdown:BuildDropdownList();
        end;

        function Dropdown:OpenDropdown()
            ListOuter.Visible = true;
            Library.OpenedFrames[ListOuter] = true;
            DropdownArrow.Rotation = 180;
        end;

        function Dropdown:CloseDropdown()
            ListOuter.Visible = false;
            Library.OpenedFrames[ListOuter] = nil;
            DropdownArrow.Rotation = 0;
        end;

        function Dropdown:OnChanged(Func)
            Dropdown.Changed = Func;
            Func(Dropdown.Value);
        end;

        function Dropdown:SetValue(Val)
            if Dropdown.Multi then
                local nTable = {};

                for Value, Bool in next, Val do
                    if table.find(Dropdown.Values, Value) then
                        nTable[Value] = true
                    end;
                end;

                Dropdown.Value = nTable;
            else
                if (not Val) then
                    Dropdown.Value = nil;
                elseif table.find(Dropdown.Values, Val) then
                    Dropdown.Value = Val;
                end;
            end;

            Dropdown:BuildDropdownList();

            Library:SafeCallback(Dropdown.Callback, Dropdown.Value);
            Library:SafeCallback(Dropdown.Changed, Dropdown.Value);
        end;

        DropdownOuter.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                if ListOuter.Visible then
                    Dropdown:CloseDropdown();
                else
                    Dropdown:OpenDropdown();
                end;
            end;
        end);

        InputService.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                local AbsPos, AbsSize = ListOuter.AbsolutePosition, ListOuter.AbsoluteSize;

                if Mouse.X < AbsPos.X or Mouse.X > AbsPos.X + AbsSize.X
                    or Mouse.Y < (AbsPos.Y - 20 - 1) or Mouse.Y > AbsPos.Y + AbsSize.Y then

                    Dropdown:CloseDropdown();
                end;
            end;
        end);

        Dropdown:BuildDropdownList();
        Dropdown:Display();

        local Defaults = {}

        if type(Info.Default) == 'string' then
            local Idx = table.find(Dropdown.Values, Info.Default)
            if Idx then
                table.insert(Defaults, Idx)
            end
        elseif type(Info.Default) == 'table' then
            for _, Value in next, Info.Default do
                local Idx = table.find(Dropdown.Values, Value)
                if Idx then
                    table.insert(Defaults, Idx)
                end
            end
        elseif type(Info.Default) == 'number' and Dropdown.Values[Info.Default] ~= nil then
            table.insert(Defaults, Info.Default)
        end

        if next(Defaults) then
            for i = 1, #Defaults do
                local Index = Defaults[i]
                if Info.Multi then
                    Dropdown.Value[Dropdown.Values[Index]] = true
                else
                    Dropdown.Value = Dropdown.Values[Index];
                end

                if (not Info.Multi) then break end
            end

            Dropdown:BuildDropdownList();
            Dropdown:Display();
        end

        Groupbox:AddBlank(Info.BlankSize or 5);
        Groupbox:Resize();

        Options[Idx] = Dropdown;

        return Dropdown;
    end;

    function Funcs:AddDependencyBox()
        local Depbox = {
            Dependencies = {};
        };
        
        local Groupbox = self;
        local Container = Groupbox.Container;

        local Holder = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 0, 0);
            Visible = false;
            Parent = Container;
        });

        local Frame = Library:Create('Frame', {
            BackgroundTransparency = 1;
            Size = UDim2.new(1, 0, 1, 0);
            Visible = true;
            Parent = Holder;
        });

        local Layout = Library:Create('UIListLayout', {
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            Parent = Frame;
        });

        function Depbox:Resize()
            Holder.Size = UDim2.new(1, 0, 0, Layout.AbsoluteContentSize.Y);
            Groupbox:Resize();
        end;

        Layout:GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
            Depbox:Resize();
        end);

        Holder:GetPropertyChangedSignal('Visible'):Connect(function()
            Depbox:Resize();
        end);

        function Depbox:Update()
            for _, Dependency in next, Depbox.Dependencies do
                local Elem = Dependency[1];
                local Value = Dependency[2];

                if Elem.Type == 'Toggle' and Elem.Value ~= Value then
                    Holder.Visible = false;
                    Depbox:Resize();
                    return;
                end;
            end;

            Holder.Visible = true;
            Depbox:Resize();
        end;

        function Depbox:SetupDependencies(Dependencies)
            for _, Dependency in next, Dependencies do
                assert(type(Dependency) == 'table', 'SetupDependencies: Dependency is not of type `table`.');
                assert(Dependency[1], 'SetupDependencies: Dependency is missing element argument.');
                assert(Dependency[2] ~= nil, 'SetupDependencies: Dependency is missing value argument.');
            end;

            Depbox.Dependencies = Dependencies;
            Depbox:Update();
        end;

        Depbox.Container = Frame;

        setmetatable(Depbox, BaseGroupbox);

        table.insert(Library.DependencyBoxes, Depbox);

        return Depbox;
    end;

    BaseGroupbox.__index = Funcs;
    BaseGroupbox.__namecall = function(Table, Key, ...)
        return Funcs[Key](...);
    end;
end;

-- < Create other UI elements >
do
    Library.NotificationArea = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 0, 0, 40);
        Size = UDim2.new(0, 300, 0, 200);
        ZIndex = 100;
        Parent = ScreenGui;
    });

    Library:Create('UIListLayout', {
        Padding = UDim.new(0, 4);
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = Library.NotificationArea;
    });

    local WatermarkOuter = Library:Create('Frame', {
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 100, 0, -25);
        Size = UDim2.new(0, 213, 0, 20);
        ZIndex = 200;
        Visible = false;
        Parent = ScreenGui;
    });

    local WatermarkInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.AccentColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 201;
        Parent = WatermarkOuter;
    });

    Library:AddToRegistry(WatermarkInner, {
        BorderColor3 = 'AccentColor';
    });

    local InnerFrame = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(1, 1, 1);
        BorderSizePixel = 0;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 202;
        Parent = WatermarkInner;
    });

    local Gradient = Library:Create('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
            ColorSequenceKeypoint.new(1, Library.MainColor),
        });
        Rotation = -90;
        Parent = InnerFrame;
    });

    Library:AddToRegistry(Gradient, {
        Color = function()
            return ColorSequence.new({
                ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
                ColorSequenceKeypoint.new(1, Library.MainColor),
            });
        end
    });

    local WatermarkLabel = Library:CreateLabel({
        Position = UDim2.new(0, 5, 0, 0);
        Size = UDim2.new(1, -4, 1, 0);
        TextSize = 14;
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = 203;
        Parent = InnerFrame;
    });

    Library.Watermark = WatermarkOuter;
    Library.WatermarkText = WatermarkLabel;
    Library:MakeDraggable(Library.Watermark);



    local KeybindOuter = Library:Create('Frame', {
        AnchorPoint = Vector2.new(0, 0.5);
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 10, 0.5, 0);
        Size = UDim2.new(0, 210, 0, 20);
        Visible = false;
        ZIndex = 100;
        Parent = ScreenGui;
    });

    local KeybindInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 101;
        Parent = KeybindOuter;
    });

    Library:AddToRegistry(KeybindInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    }, true);

    local ColorFrame = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderSizePixel = 0;
        Size = UDim2.new(1, 0, 0, 2);
        ZIndex = 102;
        Parent = KeybindInner;
    });

    Library:AddToRegistry(ColorFrame, {
        BackgroundColor3 = 'AccentColor';
    }, true);

    local KeybindLabel = Library:CreateLabel({
        Size = UDim2.new(1, 0, 0, 20);
        Position = UDim2.fromOffset(5, 2),
        TextXAlignment = Enum.TextXAlignment.Left,

        Text = 'Keybinds';
        ZIndex = 104;
        Parent = KeybindInner;
    });

    local KeybindContainer = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Size = UDim2.new(1, 0, 1, -20);
        Position = UDim2.new(0, 0, 0, 20);
        ZIndex = 1;
        Parent = KeybindInner;
    });

    Library:Create('UIListLayout', {
        FillDirection = Enum.FillDirection.Vertical;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = KeybindContainer;
    });

    Library:Create('UIPadding', {
        PaddingLeft = UDim.new(0, 5),
        Parent = KeybindContainer,
    })

    Library.KeybindFrame = KeybindOuter;
    Library.KeybindContainer = KeybindContainer;
    Library:MakeDraggable(KeybindOuter);
end;

function Library:SetWatermarkVisibility(Bool)
    Library.Watermark.Visible = Bool;
end;

function Library:SetWatermark(Text)
    local X, Y = Library:GetTextBounds(Text, Library.Font, 14);
    Library.Watermark.Size = UDim2.new(0, X + 15, 0, (Y * 1.5) + 3);
    Library:SetWatermarkVisibility(true)

    Library.WatermarkText.Text = Text;
end;

function Library:Notify(Text, Time)
    local XSize, YSize = Library:GetTextBounds(Text, Library.Font, 14);

    YSize = YSize + 7

    local NotifyOuter = Library:Create('Frame', {
        BorderColor3 = Color3.new(0, 0, 0);
        Position = UDim2.new(0, 100, 0, 10);
        Size = UDim2.new(0, 0, 0, YSize);
        ClipsDescendants = true;
        ZIndex = 100;
        Parent = Library.NotificationArea;
    });

    local NotifyInner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        BorderMode = Enum.BorderMode.Inset;
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 101;
        Parent = NotifyOuter;
    });

    Library:AddToRegistry(NotifyInner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    }, true);

    local InnerFrame = Library:Create('Frame', {
        BackgroundColor3 = Color3.new(1, 1, 1);
        BorderSizePixel = 0;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 102;
        Parent = NotifyInner;
    });

    local Gradient = Library:Create('UIGradient', {
        Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
            ColorSequenceKeypoint.new(1, Library.MainColor),
        });
        Rotation = -90;
        Parent = InnerFrame;
    });

    Library:AddToRegistry(Gradient, {
        Color = function()
            return ColorSequence.new({
                ColorSequenceKeypoint.new(0, Library:GetDarkerColor(Library.MainColor)),
                ColorSequenceKeypoint.new(1, Library.MainColor),
            });
        end
    });

    local NotifyLabel = Library:CreateLabel({
        Position = UDim2.new(0, 4, 0, 0);
        Size = UDim2.new(1, -4, 1, 0);
        Text = Text;
        TextXAlignment = Enum.TextXAlignment.Left;
        TextSize = 14;
        ZIndex = 103;
        Parent = InnerFrame;
    });

    local LeftColor = Library:Create('Frame', {
        BackgroundColor3 = Library.AccentColor;
        BorderSizePixel = 0;
        Position = UDim2.new(0, -1, 0, -1);
        Size = UDim2.new(0, 3, 1, 2);
        ZIndex = 104;
        Parent = NotifyOuter;
    });

    Library:AddToRegistry(LeftColor, {
        BackgroundColor3 = 'AccentColor';
    }, true);

    pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, XSize + 8 + 4, 0, YSize), 'Out', 'Quad', 0.4, true);

    task.spawn(function()
        wait(Time or 5);

        pcall(NotifyOuter.TweenSize, NotifyOuter, UDim2.new(0, 0, 0, YSize), 'Out', 'Quad', 0.4, true);

        wait(0.4);

        NotifyOuter:Destroy();
    end);
end;

function Library:CreateWindow(...)
    local Arguments = { ... }
    local Config = { AnchorPoint = Vector2.zero }

    if type(...) == 'table' then
        Config = ...;
    else
        Config.Title = Arguments[1]
        Config.AutoShow = Arguments[2] or false;
    end

    if type(Config.Title) ~= 'string' then Config.Title = 'No title' end
    if type(Config.TabPadding) ~= 'number' then Config.TabPadding = 0 end
    if type(Config.MenuFadeTime) ~= 'number' then Config.MenuFadeTime = 0.2 end

    if typeof(Config.Position) ~= 'UDim2' then Config.Position = UDim2.fromOffset(175, 50) end
    if typeof(Config.Size) ~= 'UDim2' then Config.Size = UDim2.fromOffset(550, 600) end

    if Config.Center then
        Config.AnchorPoint = Vector2.new(0.5, 0.5)
        Config.Position = UDim2.fromScale(0.5, 0.5)
    end

    local Window = {
        Tabs = {};
    };

    local Outer = Library:Create('Frame', {
        AnchorPoint = Config.AnchorPoint,
        BackgroundColor3 = Color3.new(0, 0, 0);
        BorderSizePixel = 0;
        Position = Config.Position,
        Size = Config.Size,
        Visible = false;
        ZIndex = 1;
        Parent = ScreenGui;
    });

    Library:MakeDraggable(Outer, 25);

    local Inner = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.AccentColor;
        BorderMode = Enum.BorderMode.Inset;
        Position = UDim2.new(0, 1, 0, 1);
        Size = UDim2.new(1, -2, 1, -2);
        ZIndex = 1;
        Parent = Outer;
    });

    Library:AddToRegistry(Inner, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'AccentColor';
    });

    local WindowLabel = Library:CreateLabel({
        Position = UDim2.new(0, 7, 0, 0);
        Size = UDim2.new(0, 0, 0, 25);
        Text = Config.Title or '';
        TextXAlignment = Enum.TextXAlignment.Left;
        ZIndex = 1;
        Parent = Inner;
    });

    local MainSectionOuter = Library:Create('Frame', {
        BackgroundColor3 = Library.BackgroundColor;
        BorderColor3 = Library.OutlineColor;
        Position = UDim2.new(0, 8, 0, 25);
        Size = UDim2.new(1, -16, 1, -33);
        ZIndex = 1;
        Parent = Inner;
    });

    Library:AddToRegistry(MainSectionOuter, {
        BackgroundColor3 = 'BackgroundColor';
        BorderColor3 = 'OutlineColor';
    });

    local MainSectionInner = Library:Create('Frame', {
        BackgroundColor3 = Library.BackgroundColor;
        BorderColor3 = Color3.new(0, 0, 0);
        BorderMode = Enum.BorderMode.Inset;
        Position = UDim2.new(0, 0, 0, 0);
        Size = UDim2.new(1, 0, 1, 0);
        ZIndex = 1;
        Parent = MainSectionOuter;
    });

    Library:AddToRegistry(MainSectionInner, {
        BackgroundColor3 = 'BackgroundColor';
    });

    local TabArea = Library:Create('Frame', {
        BackgroundTransparency = 1;
        Position = UDim2.new(0, 8, 0, 8);
        Size = UDim2.new(1, -16, 0, 21);
        ZIndex = 1;
        Parent = MainSectionInner;
    });

    local TabListLayout = Library:Create('UIListLayout', {
        Padding = UDim.new(0, Config.TabPadding);
        FillDirection = Enum.FillDirection.Horizontal;
        SortOrder = Enum.SortOrder.LayoutOrder;
        Parent = TabArea;
    });

    local TabContainer = Library:Create('Frame', {
        BackgroundColor3 = Library.MainColor;
        BorderColor3 = Library.OutlineColor;
        Position = UDim2.new(0, 8, 0, 30);
        Size = UDim2.new(1, -16, 1, -38);
        ZIndex = 2;
        Parent = MainSectionInner;
    });
    

    Library:AddToRegistry(TabContainer, {
        BackgroundColor3 = 'MainColor';
        BorderColor3 = 'OutlineColor';
    });

    function Window:SetWindowTitle(Title)
        WindowLabel.Text = Title;
    end;

    function Window:AddTab(Name)
        local Tab = {
            Groupboxes = {};
            Tabboxes = {};
        };

        local TabButtonWidth = Library:GetTextBounds(Name, Library.Font, 16);

        local TabButton = Library:Create('Frame', {
            BackgroundColor3 = Library.BackgroundColor;
            BorderColor3 = Library.OutlineColor;
            Size = UDim2.new(0, TabButtonWidth + 8 + 4, 1, 0);
            ZIndex = 1;
            Parent = TabArea;
        });

        Library:AddToRegistry(TabButton, {
            BackgroundColor3 = 'BackgroundColor';
            BorderColor3 = 'OutlineColor';
        });

        local TabButtonLabel = Library:CreateLabel({
            Position = UDim2.new(0, 0, 0, 0);
            Size = UDim2.new(1, 0, 1, -1);
            Text = Name;
            ZIndex = 1;
            Parent = TabButton;
        });

        local Blocker = Library:Create('Frame', {
            BackgroundColor3 = Library.MainColor;
            BorderSizePixel = 0;
            Position = UDim2.new(0, 0, 1, 0);
            Size = UDim2.new(1, 0, 0, 1);
            BackgroundTransparency = 1;
            ZIndex = 3;
            Parent = TabButton;
        });

        Library:AddToRegistry(Blocker, {
            BackgroundColor3 = 'MainColor';
        });

        local TabFrame = Library:Create('Frame', {
            Name = 'TabFrame',
            BackgroundTransparency = 1;
            Position = UDim2.new(0, 0, 0, 0);
            Size = UDim2.new(1, 0, 1, 0);
            Visible = false;
            ZIndex = 2;
            Parent = TabContainer;
        });

        local LeftSide = Library:Create('ScrollingFrame', {
            BackgroundTransparency = 1;
            BorderSizePixel = 0;
            Position = UDim2.new(0, 8 - 1, 0, 8 - 1);
            Size = UDim2.new(0.5, -12 + 2, 0, 507 + 2);
            CanvasSize = UDim2.new(0, 0, 0, 0);
            BottomImage = '';
            TopImage = '';
            ScrollBarThickness = 0;
            ZIndex = 2;
            Parent = TabFrame;
        });

        local RightSide = Library:Create('ScrollingFrame', {
            BackgroundTransparency = 1;
            BorderSizePixel = 0;
            Position = UDim2.new(0.5, 4 + 1, 0, 8 - 1);
            Size = UDim2.new(0.5, -12 + 2, 0, 507 + 2);
            CanvasSize = UDim2.new(0, 0, 0, 0);
            BottomImage = '';
            TopImage = '';
            ScrollBarThickness = 0;
            ZIndex = 2;
            Parent = TabFrame;
        });

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 8);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            Parent = LeftSide;
        });

        Library:Create('UIListLayout', {
            Padding = UDim.new(0, 8);
            FillDirection = Enum.FillDirection.Vertical;
            SortOrder = Enum.SortOrder.LayoutOrder;
            HorizontalAlignment = Enum.HorizontalAlignment.Center;
            Parent = RightSide;
        });

        for _, Side in next, { LeftSide, RightSide } do
            Side:WaitForChild('UIListLayout'):GetPropertyChangedSignal('AbsoluteContentSize'):Connect(function()
                Side.CanvasSize = UDim2.fromOffset(0, Side.UIListLayout.AbsoluteContentSize.Y);
            end);
        end;

        function Tab:ShowTab()
            for _, Tab in next, Window.Tabs do
                Tab:HideTab();
            end;

            Blocker.BackgroundTransparency = 0;
            TabButton.BackgroundColor3 = Library.MainColor;
            Library.RegistryMap[TabButton].Properties.BackgroundColor3 = 'MainColor';
            TabFrame.Visible = true;
        end;

        function Tab:HideTab()
            Blocker.BackgroundTransparency = 1;
            TabButton.BackgroundColor3 = Library.BackgroundColor;
            Library.RegistryMap[TabButton].Properties.BackgroundColor3 = 'BackgroundColor';
            TabFrame.Visible = false;
        end;

        function Tab:SetLayoutOrder(Position)
            TabButton.LayoutOrder = Position;
            TabListLayout:ApplyLayout();
        end;

        function Tab:AddGroupbox(Info)
            local Groupbox = {};

            local BoxOuter = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 0, 507 + 2);
                ZIndex = 2;
                Parent = Info.Side == 1 and LeftSide or RightSide;
            });

            Library:AddToRegistry(BoxOuter, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });

            local BoxInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Color3.new(0, 0, 0);
                -- BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, -2, 1, -2);
                Position = UDim2.new(0, 1, 0, 1);
                ZIndex = 4;
                Parent = BoxOuter;
            });

            Library:AddToRegistry(BoxInner, {
                BackgroundColor3 = 'BackgroundColor';
            });

            local Highlight = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderSizePixel = 0;
                Size = UDim2.new(1, 0, 0, 2);
                ZIndex = 5;
                Parent = BoxInner;
            });

            Library:AddToRegistry(Highlight, {
                BackgroundColor3 = 'AccentColor';
            });

            local GroupboxLabel = Library:CreateLabel({
                Size = UDim2.new(1, 0, 0, 18);
                Position = UDim2.new(0, 4, 0, 2);
                TextSize = 14;
                Text = Info.Name;
                TextXAlignment = Enum.TextXAlignment.Left;
                ZIndex = 5;
                Parent = BoxInner;
            });

            local Container = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Position = UDim2.new(0, 4, 0, 20);
                Size = UDim2.new(1, -4, 1, -20);
                ZIndex = 1;
                Parent = BoxInner;
            });

            Library:Create('UIListLayout', {
                FillDirection = Enum.FillDirection.Vertical;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = Container;
            });

            function Groupbox:Resize()
                local Size = 0;

                for _, Element in next, Groupbox.Container:GetChildren() do
                    if (not Element:IsA('UIListLayout')) and Element.Visible then
                        Size = Size + Element.Size.Y.Offset;
                    end;
                end;

                BoxOuter.Size = UDim2.new(1, 0, 0, 20 + Size + 2 + 2);
            end;

            Groupbox.Container = Container;
            setmetatable(Groupbox, BaseGroupbox);

            Groupbox:AddBlank(3);
            Groupbox:Resize();

            Tab.Groupboxes[Info.Name] = Groupbox;

            return Groupbox;
        end;

        function Tab:AddLeftGroupbox(Name)
            return Tab:AddGroupbox({ Side = 1; Name = Name; });
        end;

        function Tab:AddRightGroupbox(Name)
            return Tab:AddGroupbox({ Side = 2; Name = Name; });
        end;

        function Tab:AddTabbox(Info)
            local Tabbox = {
                Tabs = {};
            };

            local BoxOuter = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Library.OutlineColor;
                BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, 0, 0, 0);
                ZIndex = 2;
                Parent = Info.Side == 1 and LeftSide or RightSide;
            });

            Library:AddToRegistry(BoxOuter, {
                BackgroundColor3 = 'BackgroundColor';
                BorderColor3 = 'OutlineColor';
            });

            local BoxInner = Library:Create('Frame', {
                BackgroundColor3 = Library.BackgroundColor;
                BorderColor3 = Color3.new(0, 0, 0);
                -- BorderMode = Enum.BorderMode.Inset;
                Size = UDim2.new(1, -2, 1, -2);
                Position = UDim2.new(0, 1, 0, 1);
                ZIndex = 4;
                Parent = BoxOuter;
            });

            Library:AddToRegistry(BoxInner, {
                BackgroundColor3 = 'BackgroundColor';
            });

            local Highlight = Library:Create('Frame', {
                BackgroundColor3 = Library.AccentColor;
                BorderSizePixel = 0;
                Size = UDim2.new(1, 0, 0, 2);
                ZIndex = 10;
                Parent = BoxInner;
            });

            Library:AddToRegistry(Highlight, {
                BackgroundColor3 = 'AccentColor';
            });

            local TabboxButtons = Library:Create('Frame', {
                BackgroundTransparency = 1;
                Position = UDim2.new(0, 0, 0, 1);
                Size = UDim2.new(1, 0, 0, 18);
                ZIndex = 5;
                Parent = BoxInner;
            });

            Library:Create('UIListLayout', {
                FillDirection = Enum.FillDirection.Horizontal;
                HorizontalAlignment = Enum.HorizontalAlignment.Left;
                SortOrder = Enum.SortOrder.LayoutOrder;
                Parent = TabboxButtons;
            });

            function Tabbox:AddTab(Name)
                local Tab = {};

                local Button = Library:Create('Frame', {
                    BackgroundColor3 = Library.MainColor;
                    BorderColor3 = Color3.new(0, 0, 0);
                    Size = UDim2.new(0.5, 0, 1, 0);
                    ZIndex = 6;
                    Parent = TabboxButtons;
                });

                Library:AddToRegistry(Button, {
                    BackgroundColor3 = 'MainColor';
                });

                local ButtonLabel = Library:CreateLabel({
                    Size = UDim2.new(1, 0, 1, 0);
                    TextSize = 14;
                    Text = Name;
                    TextXAlignment = Enum.TextXAlignment.Center;
                    ZIndex = 7;
                    Parent = Button;
                });

                local Block = Library:Create('Frame', {
                    BackgroundColor3 = Library.BackgroundColor;
                    BorderSizePixel = 0;
                    Position = UDim2.new(0, 0, 1, 0);
                    Size = UDim2.new(1, 0, 0, 1);
                    Visible = false;
                    ZIndex = 9;
                    Parent = Button;
                });

                Library:AddToRegistry(Block, {
                    BackgroundColor3 = 'BackgroundColor';
                });

                local Container = Library:Create('Frame', {
                    BackgroundTransparency = 1;
                    Position = UDim2.new(0, 4, 0, 20);
                    Size = UDim2.new(1, -4, 1, -20);
                    ZIndex = 1;
                    Visible = false;
                    Parent = BoxInner;
                });

                Library:Create('UIListLayout', {
                    FillDirection = Enum.FillDirection.Vertical;
                    SortOrder = Enum.SortOrder.LayoutOrder;
                    Parent = Container;
                });

                function Tab:Show()
                    for _, Tab in next, Tabbox.Tabs do
                        Tab:Hide();
                    end;

                    Container.Visible = true;
                    Block.Visible = true;

                    Button.BackgroundColor3 = Library.BackgroundColor;
                    Library.RegistryMap[Button].Properties.BackgroundColor3 = 'BackgroundColor';

                    Tab:Resize();
                end;

                function Tab:Hide()
                    Container.Visible = false;
                    Block.Visible = false;

                    Button.BackgroundColor3 = Library.MainColor;
                    Library.RegistryMap[Button].Properties.BackgroundColor3 = 'MainColor';
                end;

                function Tab:Resize()
                    local TabCount = 0;

                    for _, Tab in next, Tabbox.Tabs do
                        TabCount = TabCount + 1;
                    end;

                    for _, Button in next, TabboxButtons:GetChildren() do
                        if not Button:IsA('UIListLayout') then
                            Button.Size = UDim2.new(1 / TabCount, 0, 1, 0);
                        end;
                    end;

                    if (not Container.Visible) then
                        return;
                    end;

                    local Size = 0;

                    for _, Element in next, Tab.Container:GetChildren() do
                        if (not Element:IsA('UIListLayout')) and Element.Visible then
                            Size = Size + Element.Size.Y.Offset;
                        end;
                    end;

                    BoxOuter.Size = UDim2.new(1, 0, 0, 20 + Size + 2 + 2);
                end;

                Button.InputBegan:Connect(function(Input)
                    if Input.UserInputType == Enum.UserInputType.MouseButton1 and not Library:MouseIsOverOpenedFrame() then
                        Tab:Show();
                        Tab:Resize();
                    end;
                end);

                Tab.Container = Container;
                Tabbox.Tabs[Name] = Tab;

                setmetatable(Tab, BaseGroupbox);

                Tab:AddBlank(3);
                Tab:Resize();

                -- Show first tab (number is 2 cus of the UIListLayout that also sits in that instance)
                if #TabboxButtons:GetChildren() == 2 then
                    Tab:Show();
                end;

                return Tab;
            end;

            Tab.Tabboxes[Info.Name or ''] = Tabbox;

            return Tabbox;
        end;

        function Tab:AddLeftTabbox(Name)
            return Tab:AddTabbox({ Name = Name, Side = 1; });
        end;

        function Tab:AddRightTabbox(Name)
            return Tab:AddTabbox({ Name = Name, Side = 2; });
        end;

        TabButton.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 then
                Tab:ShowTab();
            end;
        end);

        -- This was the first tab added, so we show it by default.
        if #TabContainer:GetChildren() == 1 then
            Tab:ShowTab();
        end;

        Window.Tabs[Name] = Tab;
        return Tab;
    end;

    local ModalElement = Library:Create('TextButton', {
        BackgroundTransparency = 1;
        Size = UDim2.new(0, 0, 0, 0);
        Visible = true;
        Text = '';
        Modal = false;
        Parent = ScreenGui;
    });

    local TransparencyCache = {};
    local Toggled = false;
    local Fading = false;

    function Library:Toggle()
        if Fading then
            return;
        end;

        local FadeTime = Config.MenuFadeTime;
        Fading = true;
        Toggled = (not Toggled);
        ModalElement.Modal = Toggled;

        if Toggled then
            -- A bit scuffed, but if we're going from not toggled -> toggled we want to show the frame immediately so that the fade is visible.
            Outer.Visible = true;

            task.spawn(function()
                -- TODO: add cursor fade?
                local State = InputService.MouseIconEnabled;

                local Cursor = Drawing.new('Triangle');
                Cursor.Thickness = 1;
                Cursor.Filled = true;
                Cursor.Visible = true;

                local CursorOutline = Drawing.new('Triangle');
                CursorOutline.Thickness = 1;
                CursorOutline.Filled = false;
                CursorOutline.Color = Color3.new(0, 0, 0);
                CursorOutline.Visible = true;

                while Toggled and ScreenGui.Parent do
                    InputService.MouseIconEnabled = false;

                    local mPos = InputService:GetMouseLocation();

                    Cursor.Color = Library.AccentColor;

                    Cursor.PointA = Vector2.new(mPos.X, mPos.Y);
                    Cursor.PointB = Vector2.new(mPos.X + 16, mPos.Y + 6);
                    Cursor.PointC = Vector2.new(mPos.X + 6, mPos.Y + 16);

                    CursorOutline.PointA = Cursor.PointA;
                    CursorOutline.PointB = Cursor.PointB;
                    CursorOutline.PointC = Cursor.PointC;

                    RenderStepped:Wait();
                end;

                InputService.MouseIconEnabled = State;

                Cursor:Remove();
                CursorOutline:Remove();
            end);
        end;

        for _, Desc in next, Outer:GetDescendants() do
            local Properties = {};

            if Desc:IsA('ImageLabel') then
                table.insert(Properties, 'ImageTransparency');
                table.insert(Properties, 'BackgroundTransparency');
            elseif Desc:IsA('TextLabel') or Desc:IsA('TextBox') then
                table.insert(Properties, 'TextTransparency');
            elseif Desc:IsA('Frame') or Desc:IsA('ScrollingFrame') then
                table.insert(Properties, 'BackgroundTransparency');
            elseif Desc:IsA('UIStroke') then
                table.insert(Properties, 'Transparency');
            end;

            local Cache = TransparencyCache[Desc];

            if (not Cache) then
                Cache = {};
                TransparencyCache[Desc] = Cache;
            end;

            for _, Prop in next, Properties do
                if not Cache[Prop] then
                    Cache[Prop] = Desc[Prop];
                end;

                if Cache[Prop] == 1 then
                    continue;
                end;

                TweenService:Create(Desc, TweenInfo.new(FadeTime, Enum.EasingStyle.Linear), { [Prop] = Toggled and Cache[Prop] or 1 }):Play();
            end;
        end;

        task.wait(FadeTime);

        Outer.Visible = Toggled;

        Fading = false;
    end

    Library:GiveSignal(InputService.InputBegan:Connect(function(Input, Processed)
        if type(Library.ToggleKeybind) == 'table' and Library.ToggleKeybind.Type == 'KeyPicker' then
            if Input.UserInputType == Enum.UserInputType.Keyboard and Input.KeyCode.Name == Library.ToggleKeybind.Value then
                task.spawn(Library.Toggle)
            end
        elseif Input.KeyCode == Enum.KeyCode.RightControl or (Input.KeyCode == Enum.KeyCode.RightShift and (not Processed)) then
            task.spawn(Library.Toggle)
        end
    end))

    if Config.AutoShow then task.spawn(Library.Toggle) end

    Window.Holder = Outer;

    return Window;
end;

local function OnPlayerChange()
    local PlayerList = GetPlayersString();

    for _, Value in next, Options do
        if Value.Type == 'Dropdown' and Value.SpecialType == 'Player' then
            Value:SetValues(PlayerList);
        end;
    end;
end;

Players.PlayerAdded:Connect(OnPlayerChange);
Players.PlayerRemoving:Connect(OnPlayerChange);

getgenv().Library = Library


local Window = Library:CreateWindow({
    Title = '                    russianware | best for bests',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    Rage = Window:AddTab('Aimbot'),  
    Visual = Window:AddTab('Visual'),
    Misc = Window:AddTab('Miscellaneous'),
    ['Settings'] = Window:AddTab('Settings'),
}
local Tabboxes = {
    RageTabbox = Tabs.Rage:AddLeftTabbox(),
    AATabbox = Tabs.Rage:AddRightTabbox(), -- hm?>
    MiscTabbox = Tabs.Misc:AddLeftTabbox(),
    MiscTabbox1 = Tabs.Misc:AddRightTabbox(),
    VisualTabbox = Tabs.Visual:AddLeftTabbox(),

    VisualTabbox2 = Tabs.Visual:AddRightTabbox(),
}
local Sections = {
    Rage = Tabboxes.RageTabbox:AddTab('Aim'),
    bulshit = Tabboxes.RageTabbox:AddTab('Bullet'),
    fwt = Tabboxes.RageTabbox:AddTab('Fwt'),
    backtr = Tabboxes.RageTabbox:AddTab('Backtrack'),

    Movement = Tabboxes.MiscTabbox:AddTab('Movement'),
    Tweaks = Tabboxes.MiscTabbox:AddTab('Tweaks'),
    Client = Tabboxes.MiscTabbox1:AddTab('Extra'),
    Chat = Tabboxes.MiscTabbox1:AddTab('Chat'),


    Players = Tabboxes.VisualTabbox:AddTab('Players'),
    Settings = Tabboxes.VisualTabbox:AddTab('Settings'),

    World = Tabboxes.VisualTabbox2:AddTab('World'),

    Local = Tabboxes.VisualTabbox2:AddTab('Local'),


    Other = Tabboxes.VisualTabbox2:AddTab('Other'),

    Modifers = Tabboxes.MiscTabbox:AddTab('Modifers'),
    Desyncsec = Tabboxes.AATabbox:AddTab('Desync'),
    Safetysec = Tabboxes.MiscTabbox1:AddTab('Safety')

}
local MenuGroup = Tabs['Settings']:AddRightGroupbox('Menu')
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 
MenuGroup:AddToggle('ShowKeybindMenu', {Text = 'Show Keybinds Menu', Default = true}):OnChanged(function(bool) Library.KeybindFrame.Visible = bool end)

-- RageBot [start
Sections.Rage:AddToggle('rage_enabled', {Text = 'Enable'}):AddKeyPicker('Aimbotkey', {Default = 'E', Text = 'Aimbot', Mode = 'Always'})
Sections.Rage:AddToggle('rage_teammet', {Text = 'Teammates'})
Sections.Rage:AddToggle('rage_autofire', {Text = 'Auto Shoot'})
Sections.Rage:AddToggle('rage_autowall', {Text = 'Auto wall'})
Sections.Rage:AddToggle('Resolver', {Text = 'Resolve Angles'})
Sections.Rage:AddToggle('Camera_Resolve', {Text = 'Resolve Camera'})


Sections.Rage:AddDropdown('rage_hitboxes', {Text = 'Hitboxes', Values = {'Head', 'Torso', 'Arms', 'Legs'}, Default = 1, Multi = true})
Sections.Rage:AddDropdown('Rage_Points', {Text = 'Points', Values = {'Default', 'Normal', 'Multi'}, Default = 1})
Sections.Rage:AddSlider('rage_mod', {Text = 'Penetration modifier' ,Default = 1, Min = 1, Max = 5, Rounding = 1, Compact = false})

Sections.Rage:AddToggle('HuiPart', {Text = 'HitPart'}) -- fixed 😎👿
Sections.Rage:AddToggle('NaN_Predict', {Text = 'NaN Prediction'})
Sections.Rage:AddToggle('Custom_Gun', {Text = 'Custom Kill Gun'})
Sections.Rage:AddDropdown('killgun', {Text = 'Kill Gun', Values = {'Glock', 'USP', 'CZ', 'DesertEagle', "R8", "AK47", "SG" ,"MP9", "P90", "Bizon", "Famas", "Galil", "AUG", "AWP", "Scout", "G3SG1", "CT Knife" ,"T Knife", "Banana", "Bayonet", "Butterfly Knife", "Cleaver", "Crowbar", "Falchion Knife", "Flip Knife", "Gut Knife", "Huntsman Knife", "Karambit", "Sickle"}, Default = 1, Multi = false, Tooltip = "which what gun you killing"})
Sections.Rage:AddToggle('infinity_damage', {Text = 'Inf damage'})
Sections.Rage:AddToggle('wallbang_oh', {Text = 'Wallbang Icon', Default = false, Tooltip = 'showing wallbang icon'})
Sections.Rage:AddToggle('rbm_oh', {Text = 'RBM Hit', Default = false, Tooltip = 'Hitting with right mouse button'})
-- RageBot end]

Sections.fwt:AddToggle('rage_fwt', {Text = 'Forward Track'})
Sections.fwt:AddDropdown('fwt_mode', {Text = 'Method', Values = {'new', 'old'}, Default = 1})
Sections.fwt:AddSlider('rage_fwtAmount', {Text = 'Amount' ,Default = 1, Min = 1, Max = 20, Rounding = 0, Compact = false})
Sections.fwt:AddToggle('ftrack_visualization', {Text = 'Fwt Visualization'}):AddColorPicker('ft_color', {Title = 'Color', Default = Color3.new(0,0,0)})
-- //

Sections.backtr:AddToggle('rage_backtracks', {Text = 'Backtrack'}) -- fake toggle <3
Sections.backtr:AddSlider('rage_backtrack', {Text = 'Amount' ,Default = 150, Min = 0, Max = 350, Rounding = 0, Compact = false})
Sections.backtr:AddToggle('btrack_visualization', {Text = 'visualization'}):AddColorPicker('bt_color', {Title = 'color', Default = Color3.new(0,0,0)})

-- bullshit
Sections.bulshit:AddToggle('custom_tap', {Text = 'Custom Tap'})
Sections.bulshit:AddSlider('custom_hpr', {Text = 'Amount' ,Default = 2, Min = 2, Max = 15, Rounding = 0, Compact = false})

Sections.bulshit:AddDropdown('awhitscan_met', {Text = 'Auto Wall Scan', Values = {'new', 'old'}, Default = 2})
Sections.bulshit:AddSlider('Speedz', {Text = 'Scan Speed' ,Default = 0, Min = 0, Max = 100, Rounding = 0, Compact = false})
Sections.bulshit:AddSlider('Pointsz', {Text = 'Points amount' ,Default = 0, Min = 0, Max = 100, Rounding = 0, Compact = false})

Sections.bulshit:AddToggle('Hitbox_Expander', {Text = 'Hitbox Expander'})

Sections.bulshit:AddSlider('Hitbox_Expander_X', {Text = 'X' ,Default = 0, Min = 0, Max = 60, Rounding = 0, Compact = false})
Sections.bulshit:AddSlider('Hitbox_Expander_Y', {Text = 'Y' ,Default = 0, Min = 0, Max = 60, Rounding = 0, Compact = false})
Sections.bulshit:AddSlider('Hitbox_Expander_Z', {Text = 'Z' ,Default = 0, Min = 0, Max = 60, Rounding = 0, Compact = false})

-- Misc [start
--//MOVEMENT
Sections.Movement:AddToggle('bunny_enabled', {Text = 'Bunny Hop'})
Sections.Movement:AddToggle('MovementHack', {Text = 'Walk Speed'})
Sections.Movement:AddSlider('SpeedValue', {Text = 'Speed',Default = 43,Min = 10,Max = 200,Rounding = 0,Compact = false,})
Sections.Movement:AddDropdown('SpeedType', {Text = 'Speed Method', Values = {'Velocity'}, Default = 1, Multi = false})
Sections.Movement:AddToggle('FlyHack', {Text = 'Fly Hax', Tooltip = 'same as Speed hax but with the ability to fly.'}):AddKeyPicker('FlyHackKeypicker', {Default = 'Z', Text = 'Fly Hack', Mode = 'Toggle'})
Sections.Movement:AddSlider('SpeedForFly', {Text = 'Speed for fly',Default = 43,Min = 10,Max = 200,Rounding = 0,Compact = false,})
Sections.Movement:AddToggle('Airstuck', {Text = 'Air Stuck'})
--//TWEAKS

Sections.Tweaks:AddToggle('radio_disable', {Text = 'disable radio commands'})
Sections.Tweaks:AddToggle('RemoveDmgFromFire', {Text = 'Remove Burn Damage'})
Sections.Tweaks:AddToggle('RemoveDmgFromFall', {Text = 'Remove Fall Damage'})

--//CLIENT
Sections.Client:AddToggle('InfCash', {Text = 'Infinite Cash'})
Sections.Client:AddToggle('KillAll', {Text = 'Kill All', Default = false, Risky = true, Tooltip = 'just kill all'})
Sections.Client:AddToggle('hbbriker', {Text = 'Hitbox Breaker', Default = false, Risky = true, Tooltip = 'break hitbox'})

Sections.Client:AddDropdown('killAll_type', {Text = 'Kill All Type', Values = {'xosmane\'s', 'test', 'ofc best', 'lio\'s old'}, Multi = false, Default = 'ofc best'})
Sections.Client:AddSlider('killAll_hps', {Text = 'hits amount', Default = 2, Min = 0, Max = 15, Rounding = 0})
Sections.Client:AddToggle('killAll_arg10', {Text = 'Wallbang kill', Default = false, Tooltip = 'killall with wallbang icon'})
Sections.Client:AddToggle('killAll_arg9', {Text = 'RBM kill', Default = true, Tooltip = 'killall will kill with right mouse button'})
Sections.Client:AddToggle('ShopInfTimeAndAnywhere', {Text = 'Shop Infinite Time And Anywhere'})
Sections.Client:AddToggle('KillSound', {Text = 'Kill Sound'})
Sections.Client:AddSlider('KillSound_Volume', {Text = 'Volume', Default = 5, Min = 1, Max = 10, Rounding = 1})
    

--//CHAT
Sections.Chat:AddToggle('RemoveFilter', {Text = 'Bypass Chat Filter'})
Sections.Chat:AddToggle('KillSay', {Text = 'Kill Say', Tooltip = "when you kill someone cheat will write in chat random word"})
Sections.Chat:AddDropdown('KillType', {Text = 'Say Type', Values = {'Lio', 'Nixus', 'Xosmane', 'CS:GO HvH', 'China Propaganda', 'Random Words', 'Facts', 'Reine'}, Default = 1, Multi = false})
Sections.Chat:AddToggle('ChatSpam', {Text = 'Chat Spam'})
Sections.Chat:AddDropdown('SpamType', {Text = 'Spam Type', Values = {'Kill say', 'Advertise', 'Funny'}, Default = 1, Multi = false})



--//GUN MODS
Sections.Modifers:AddToggle('InfAmmo', {Text = 'Infinite Ammo'})
Sections.Modifers:AddToggle('NoRecoil', {Text = 'Remove Recoil'})
Sections.Modifers:AddToggle('FireRate', {Text = 'FireRate', Tooltip = 'less - faster'})
Sections.Modifers:AddSlider('FireRateValue', {Text = 'FireRate',Min = 0, Max = 100, Rounding = 0, Compact = true, Default = 30, Suffix = '%'})

Sections.Modifers:AddToggle('Auto', {Text = 'Force Auto'})
Sections.Modifers:AddToggle('Range', {Text = 'Infinite Range'})

Sections.Desyncsec:AddDivider("Desync Stuff")

Sections.Desyncsec:AddToggle('desync_enabled', {Text = 'Enable'})
Sections.Desyncsec:AddToggle('desync_visualizer', {Text = 'Visualizer'}):AddColorPicker('desync_visualizer', {Title = 'vizcol', Default = Color3.new(.5,0,0), Transparency = .25})
--Sections.Desyncsec:AddToggle('desync_delay', {Text = 'Use Delay'})
Sections.Desyncsec:AddToggle('desync_fling', {Text = 'Use Fling'})

Sections.Desyncsec:AddDivider()

Sections.Desyncsec:AddDropdown('desync_mode', {Text = 'Desync Mode', Values = {'-', 'Offset', 'Random', 'Invisible', "Target"}, Multi = false, Default = 2})
Sections.Desyncsec:AddDropdown('delay_type', {Text = 'Delay Mode', Values = {'Server Pos', 'Offset', 'Random'}, Multi = false, Default = 2})
Sections.Desyncsec:AddDropdown('desync_mode_fling', {Text = 'Fling Mode', Values = {'Positive', 'Negative', 'NaN'}, Multi = false, Default = 2})
Sections.Desyncsec:AddDropdown('targetplrselected', {Text = 'Target Player', Values = GetPlayerNames(), Multi = false, Default = 2})

Sections.Desyncsec:AddDivider("Delay Manipulation")

Sections.Desyncsec:AddSlider('desync_delay_x', {Text = 'Delay Of Desync', Min = 0, Max = 100, Rounding = 0, Default = 1})
Sections.Desyncsec:AddSlider('desync_delay_min', {Text = 'Min Delay Of Desync', Min = 0, Max = 100, Rounding = 0, Default = 1})

Sections.Desyncsec:AddDivider("Target Strafe Manipulation")

Sections.Desyncsec:AddSlider('Target_Offset', {Text = 'Offset', Min = 0, Max = 100, Rounding = 0, Default = 0})
Sections.Desyncsec:AddSlider('Target_Speed', {Text = 'Speed', Min = 0, Max = 100, Rounding = 0, Default = 0})



Sections.Safetysec:AddToggle('Anti_Camera', {Text = 'Anti Camera'})
Sections.Safetysec:AddButton('Plant C4')
Sections.Safetysec:AddToggle('HookNoHead', {Text = 'Anti NoHead', Tooltip = 'makes u able to shoot nohead players in head'})
Sections.Safetysec:AddToggle('AntiFall', {Text = 'Anti Fall', Tooltip = 'Safe you from falling out of the map'})
Sections.Safetysec:AddSlider('AntiFall_dist', {Text = 'Anti Fall Distance', Min = 1, Max = 25, Rounding = 0, Default = 4})
--Exploits end]

local light = game.Lighting
--Visuals [start
Sections.Players:AddToggle('esp_enabled', {Text = 'Enabled'})
Sections.Players:AddToggle('esp_box', {Text = 'Box'}):AddColorPicker('esp_boxColor', {Title = 'Box Color', Default = Color3.new(1,1,1)})
Sections.Players:AddToggle('esp_boxFill', {Text = 'Box Fill'}):AddColorPicker('esp_boxFillColor', {Title = 'Box Fill Color', Default = Color3.new(.5,0,0), Transparency = .25})
Sections.Players:AddToggle('esp_health', {Text = 'Health Bar'}):AddColorPicker('esp_barColor', {Title = 'Health Bar Color', Default = Color3.new(0,1,0)})
Toggles.esp_health:AddColorPicker('esp_barColor2', {Title = 'Health Bar Color 2', Default = Color3.new(1,0,0)})
Sections.Players:AddToggle('esp_chams', {Text = 'Chams'}):AddColorPicker('esp_chamsColor', {Title = 'Chams Color', Default = Color3.new(0,0,1)})
Toggles.esp_chams:AddColorPicker('esp_chamsColor2', {Title = 'Chams Color 2', Default = Color3.new(0,0,0)})
Sections.Players:AddToggle('esp_name', {Text = 'Name'}):AddColorPicker('esp_nameColor', {Title = 'Name Color', Default = Color3.new(1,1,1)})
Sections.Players:AddToggle('esp_dist', {Text = 'Distance'}):AddColorPicker('esp_distColor', {Title = 'Distance Color', Default = Color3.new(1,1,1)})
Sections.Players:AddToggle('esp_healthtext', {Text = 'Health Text'}):AddColorPicker('esp_healthtextColor', {Title = 'Health Text Color', Default = Color3.new(0,1,0)})
Sections.Players:AddToggle('esp_tracer', {Text = 'Tracer'}):AddColorPicker('esp_tracerColor', {Title = 'Tracer Color', Default = Color3.new(1,1,1)})
Sections.Players:AddToggle('esp_viewangle', {Text = 'View Angle'}):AddColorPicker('esp_viewangleColor', {Title = 'Tracer Color', Default = Color3.new(1,1,1)})
Sections.Players:AddToggle('esp_OSA', {Text = 'Off Screen Arrow'}):AddColorPicker('esp_OSAColor', {Title = 'Off Screen Arrow Color', Default = Color3.new(1,1,1)})
Sections.Players:AddToggle('esp_skeleton', {Text = 'Skeleton'}):AddColorPicker('esp_skeletonColor', {Title = 'Tracer Color', Default = Color3.new(1,1,1)})

Sections.Settings:AddToggle('esp_outline', {Text = 'Outline'}):AddColorPicker('esp_outlineColor', {Title = 'Outline Color', Default = Color3.new(0,0,0)})
Sections.Settings:AddToggle('esp_maxdistance', {Text = 'Max Distance'})
Sections.Settings:AddSlider('esp_maxdistanceValue', {Min = 0, Max = 8000, Default = 250, Rounding = 0, Suffix = ' Studs', Text = 'Max Distance', Compact = true})
Sections.Settings:AddDropdown('esp_nametextSide', {Text = 'Name Position', Values = {'top', 'bottom', 'left', 'right'}, Multi = false, Default = 1})
Sections.Settings:AddDropdown('esp_healthtextSide', {Text = 'Health Text Position', Values = {'top', 'bottom', 'left', 'right'}, Multi = false, Default = 3})
Sections.Settings:AddDropdown('esp_healthSide', {Text = 'Health Bar Position', Values = {'top', 'bottom', 'left', 'right'}, Multi = false, Default = 3})
Sections.Settings:AddDropdown('esp_distancetextSide', {Text = 'Distance Position', Values = {'top', 'bottom', 'left', 'right'}, Multi = false, Default = 2})
Sections.Settings:AddSlider('esp_arrowRadius', {Min = 20, Max = 800, Default = 250, Rounding = 0, Text = 'Arrow Radius', Compact = false})
Sections.Settings:AddSlider('esp_arrowSize', {Min = 3, Max = 50, Default = 20, Rounding = 0, Text = 'Arrow Size', Compact = false})
Sections.Settings:AddSlider('esp_arrowTrans', {Min = 0, Max = 100, Default = 50, Rounding = 0, Text = 'Arrow Fill Transparency', Compact = false, Suffix = '%'})
Sections.Settings:AddSlider('esp_textFont', {Min = 1, Max = 4, Default = 2, Rounding = 0, Text = 'Text Font', Compact = false})
Sections.Settings:AddSlider('esp_textSize', {Min = 4, Max = 30, Default = 14, Rounding = 0, Text = 'Text Size', Compact = false})
Sections.Settings:AddToggle('esp_teamcheck', {Text = 'Team Check'})


Sections.Local:AddToggle('Third_Person', {Text = 'Third Person'}):AddKeyPicker('Third_Bind', {Default = 'X', Text = 'Third Person', Mode = 'Toggle'})
Sections.Local:AddSlider('Third_Distance', {Text = 'Distance', Min = 1, Max = 15, Rounding = 0, Default = 8})

Sections.Local:AddToggle('selfchamsz', {Text = 'Self Chams'}):AddColorPicker('selfchamsz_color', {Title = 'Color', Default = Color3.new(1,1,1)})
Sections.Local:AddDropdown('selfchamsz_material', {Text = 'Material', Values = {'ForceField', 'SmoothPlastic', 'Neon'}, Multi = false, Default = 1})


Sections.Local:AddToggle('VizSilentAngle', {Text = 'visualize silent angle'})
Sections.Local:AddSlider('Speed_angle', {Text = 'speed', Min = 1, Max = 10, Rounding = 0, Default = 1})


Sections.Local:AddToggle('view_w_enabled', {Text = 'Weapon Chams'}):AddColorPicker('view_w_color', {Title = 'Weapon Chams Color', Default = Color3.new(1,1,1)})
Sections.Local:AddDropdown('view_w_material', {Text = 'Weapon Chams Material', Values = {'Plastic', 'Neon', 'ForceField', 'Ghost', 'Glass'}, Default = 1})
Sections.Local:AddSlider('view_w_trans', {Text = 'Transparency', Min = 1, Max = 100, Rounding = 0, Default = 1})
Sections.Local:AddSlider('view_w_ref', {Text = 'Reflectance', Min = 1, Max = 100, Rounding = 0, Default = 1})
Sections.Local:AddSlider('view_w_speed', {Text = 'Speed', Min = 1, Max = 100, Rounding = 0, Default = 10})


Sections.Local:AddDivider("Radio Things")

Sections.Local:AddDropdown('radioflag', {Text = 'Choose Track', Values = indexListing(tracks), Multi = false, Default = 1})
Sections.Local:AddSlider('radiovolume', {Text = 'Volume', Min = 1, Max = 200, Rounding = 0, Default = 150})

Sections.Local:AddButton('Loop')
Sections.Local:AddButton('Play')
Sections.Local:AddButton('Pause')
Sections.Local:AddButton('Resume', function(val)
    for i, v in pairs(game.Workspace:GetChildren()) do
        trackshit:Resume()
    end
end)
Sections.Local:AddButton('Stop', function()
    for i, v in pairs(game.Workspace:GetChildren()) do
        trackshit:Destroy()
    end
end)


Sections.World:AddToggle('enablebettershadow', {Text = 'Better Shadow'})
Sections.World:AddDropdown('shadowtype', {Text = 'Shadow Technology', Values = {'Shadow Map', 'Future', 'Voxel'}, Default = 3})

Sections.World:AddToggle('tmchan', {Text = 'Time Changer'})
Sections.World:AddSlider('timechanger', {Min = 0, Max = 23, Default = 14, Rounding = 0, Text = 'Time', Compact = false})
Sections.World:AddToggle('ambient_world', {Text = 'Ambient'}):AddColorPicker('ambient_color1', {Title = 'Color 1', Default = Color3.new(0,0,0)})
Sections.World:AddToggle('ambient_worlddoor', {Text = 'OutdoorAmbient'}):AddColorPicker('ambient_color2', {Title = 'Color 2', Default = Color3.new(0,0,0)})
Sections.World:AddDropdown('skyboxtype', {Text = 'Choose Skybox', Values = indexListing(skyboxes), Multi = false, Default = '-'})
Sections.World:AddSlider('fov_amount', {Text = 'Field of view', Min = 60, Max = 120, Rounding = 0, Default = 75})



Sections.Other:AddToggle('enable_viewmodels', {Text = 'Enable Viewmodels'})
Sections.Other:AddSlider('vm_X', {Text = 'X', Min = -360, Max = 360, Rounding = 0, Default = 0})
Sections.Other:AddSlider('vm_Y', {Text = 'Y', Min = -360, Max = 360, Rounding = 0, Default = 0})
Sections.Other:AddSlider('vm_Z', {Text = 'Z', Min = -360, Max = 360, Rounding = 0, Default = 0})
Sections.Other:AddSlider('vm_roll', {Text = 'Roll', Min = 0, Max = 360, Rounding = 0, Default = 0})
Sections.Other:AddToggle('v_arms', {Text = 'Arms Changer'})
Sections.Other:AddSlider('v_arms_transparency', {Text = 'Arms Transparency', Min = 1, Max = 100, Rounding = 0, Default = 1})
Sections.Other:AddToggle('v_hide_gloves', {Text = 'Hide Gloves'})
Sections.Other:AddToggle('v_hide_sleeves', {Text = 'Hide Sleeves'})
--Visuals end]

Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)
SaveManager:IgnoreThemeSettings() 
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 
ThemeManager:SetFolder('RUware')
SaveManager:SetFolder('RUware/Counter Blox')
SaveManager:BuildConfigSection(Tabs['Settings']) 
ThemeManager:ApplyToTab(Tabs['Settings'])
