#!/bin/bash

cd "$(dirname "$0")"

renderSticker () {
    # 1=filename 2=font-size 3=shift 4=label
    echo $@
    if [ -f "./build/$1" ]; then return; fi
    I=$(($2 * -28 / 72))
    magick "./src/$1" \
        \( -size 512x512 'xc:none' \
            -font "HelveticaNeue-BoldItalic-04.ttf" -style Italic -weight Bold \
            -pointsize $2 -interline-spacing $I -kerning 0 \
            -fill black -stroke black -strokewidth 12.5 \
            -gravity SouthEast -annotate $3 "$4" \
            -alpha Set -channel A +level 0,70% +channel \
        \) -composite -page +1+0 \
        \( -size 512x512 'xc:none' \
            -font "HelveticaNeue-BoldItalic-04.ttf" -style Italic -weight Bold \
            -pointsize $2 -interline-spacing $I -kerning 0 \
            -fill white -stroke '#FFFFFF00' \
            -gravity SouthEast -annotate $3 "$4" \
        \)  -composite \
        "./build/$1"
}

renderSticker "10-pickup-master.png"    72 +25+25 "Мастер \n Пикапа"
renderSticker "11-longer.png"           72 +25+70 "У меня\n Длиннее "
renderSticker "12-forbidden.png"        72 +35+70 "Я вам \n Запрещаю!"
renderSticker "13-angry-admin.png"      72 +25+40 "Злой\n Админ "
renderSticker "14-limuzin.png"          72 +25+70 "Лимузин"
renderSticker "15-fresh-800.png"        72 +25+25 "Свежий \n за 800к"
renderSticker "16-alive-200.png"        72 +25+65 "Живой  \n за 200к"
renderSticker "20-obvious.png"          72 +25+25 "Решение\n Очевидно "
renderSticker "21-not-obvious.png"     72 +25+25 "Решение\n Неочевидно "
renderSticker "22-toyota.png"           62 +25+55 "Божэствинная\n Тавотааа... "
renderSticker "23-kolhoz.png"           72 +35+99 "Колхоз!"
renderSticker "24-kolhozishe.png"      65 +35+99 "Колхозище!!1"
renderSticker "25-fast-n-furious.png"   72 +35+99 "Гонка!"
renderSticker "26-tracktor.png"         72 +25+99 "Трактор!"
renderSticker "27-man.png"              72 +45+99 "МужЫк!"
renderSticker "28-runover.png"          72 +45+99 "Наезд!"
renderSticker "29-rotten.png"           72 +35+99 "Трос \n Гниловат"
renderSticker "30-fast-repair.png"      66 +35+70 "Перебрал \n по-быстрому"
renderSticker "31-beka.png"             72 +35+55 "Сунул Бека \n руку в реку"
renderSticker "32-no-lift.png"          72 +25+45 "А без лифта\n встанут?  "
renderSticker "33-told-you.png"         72 +45+45 "А я же  \n говорил!"
renderSticker "34-uglydog.png"          72 +65+45 "Больной   \n Ублюдог!"
renderSticker "35-valves.png"           72 +99+40 "Ещё \n походит"
renderSticker "36-tcc.png"              62 +25+25 "Неоспоримые \n Преимущества"
renderSticker "37-clutch.png"           72 +55+30 "Меня \n клинит!"
renderSticker "38-cvt.png"              72 +99+35 "Конусà  \n в анусà"
renderSticker "39-pigeon.png"           62 +25+25 "Пижон  \n полированный"
renderSticker "40-stock.png"            72 +65+55 "А сток\n доедет? "
renderSticker "41-hardporn.png"         72 +75+80 "Hard Porn"
renderSticker "42-ass.png"              72 +35+55 "Жопа, а не \n автомобиль"
renderSticker "43-boobie.png"           72 +85+25 "Сисечка \n( . )( . )   "
renderSticker "44-boobs.png"            72 +85+25 "СИСЬКИ!"
renderSticker "45-porco.png"            72 +35+35 "Грязь \nНайдём!"
renderSticker "46-obd.png"              72 +65+60 "Ну и рожа!"
renderSticker "47-group.png"            72 +45+99 "Групповуха"
renderSticker "48-roger.png"            72 +55+25 "Приём?!"
renderSticker "49-mud.png"              72 +85+45 "Глину  \nмесишь?"
renderSticker "50-bolt-on.png"          72 +45+75 "Встанет\n болт-он    "
renderSticker "51-quadro.png"           53 +25+75 "Квадроциклисты\n сраные  "
renderSticker "52-love.png"             72 +99+35 "Лубовь!"
renderSticker "53-friends.png"          62 +40+50 "Взял друзей\n на покатушку"
renderSticker "54-softer.png"           72 +85+55 "Люблю \n помягче"
renderSticker "55-harder.png"           72 +65+25 "Люблю  \n пожёстче"
renderSticker "56-thin-ice.png"         64 +25+25 "Вы ходите\n по офигенно\n тонкому льду"
renderSticker "57-wheely.png"           72 +25+45 "Колёсики \n от шкафа"
renderSticker "58-chain.png"            72 +25+45 "У самурая   \n нет цепи"
renderSticker "59-full-a-boss-race.png" 72 +45+75 "Full   \n a boss race"
renderSticker "60-bite.png"             72 +45+75 "Укушу       \nза бочок!"
renderSticker "61-snow.png"             72 +45+55 "А где снег?"
renderSticker "62-red-long-bent.png"    52 +165+75 "Красный,      \nдлинный    \nи кривой!"
renderSticker "63-vzhuh.png"            72 +140+65 "ВЖУХ"
renderSticker "64-exor.png"             52 +60+30 "Пора вызывать\n экзорциста       "
cp -v    ./src/65-dead-or-alive.png     ./build/65-dead-or-alive.png
renderSticker "66-single.png"           52 +60+30 "Да я тут   \nна 2wd проеду"
cp -v    ./src/98-mud-lover.png         ./build/98-mud-lover.png
cp -v    ./src/99-12-5-1.png            ./build/99-12-5-1.png
