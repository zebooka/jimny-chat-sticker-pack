#!/bin/bash

cd "$(dirname "$0")"

renderSticker () {
    # 1=filename 2=font-size 3=shift 4=label
    echo $@
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

renderSticker "20-pickup-master.png"  72 +25+25 "Мастер \n Пикапа"
renderSticker "21-longer.png"         72 +25+70 "У меня\n Длиннее "
renderSticker "30-forbidden.png"      72 +35+70 "Я вам \n Запрещаю!"
renderSticker "31-angry-admin.png"    72 +25+40 "Злой\n Админ "
renderSticker "32-limuzin.png"        72 +25+70 "Лимузин"
renderSticker "33-fresh-800.png"      72 +25+25 "Свежий \n за 800к"
renderSticker "34-alive-200.png"      72 +25+65 "Живой  \n за 200к"
renderSticker "35-obvious.png"        72 +25+25 "Решение\n Очевидно "
renderSticker "36-toyota.png"         62 +25+55 "Божэствинная\n Тавотааа... "
renderSticker "37-kolhoz.png"         72 +35+99 "Колхоз!"
renderSticker "38-fast-n-furious.png" 72 +35+99 "Гонка!"
renderSticker "39-tracktor.png"       72 +25+99 "Трактор!"
renderSticker "40-man.png"            72 +45+99 "МужЫк!"
renderSticker "41-runover.png"        72 +45+99 "Наезд!"
renderSticker "42-rotten.png"         72 +35+99 "Трос \n Гниловат"
renderSticker "43-fast-repair.png"    66 +35+70 "Перебрал \n по-быстрому"
renderSticker "44-beka.png"           72 +35+55 "Сунул Бека \n руку в реку"
renderSticker "45-no-lift.png"        72 +25+45 "А без лифта\n встанут?  "
renderSticker "46-told-you.png"       72 +45+45 "А я же  \n говорил!"
renderSticker "47-uglydog.png"        72 +65+45 "Больной   \n Ублюдог!"
renderSticker "48-valves.png"         72 +99+40 "Ещё \n походит"
renderSticker "49-tcc.png"            62 +25+25 "Неоспоримые \n Преимущества"
renderSticker "50-clutch.png"         72 +55+30 "Меня \n клинит!"
renderSticker "51-cvt.png"            72 +99+35 "Конусà  \n в анусà"
renderSticker "52-pigeon.png"         62 +25+25 "Пижон  \n полированный"
renderSticker "53-stock.png"          72 +65+55 "А сток\n доедет? "
renderSticker "54-hardporn.png"       72 +75+80 "Hard Porn"
renderSticker "55-ass.png"            72 +35+55 "Жопа, а не \n автомобиль"
renderSticker "56-boobie.png"         72 +85+25 "Сисечка \n( . )( . )   "
renderSticker "57-boobs.png"          72 +85+25 "СИСЬКИ!"
renderSticker "58-porco.png"          72 +35+35 "Грязь \nНайдём!"
renderSticker "59-obd.png"            72 +65+60 "Ну и рожа!"
renderSticker "60-group.png"          72 +45+99 "Групповуха"
renderSticker "61-roger.png"          72 +55+25 "Приём?!"
renderSticker "62-mud.png"            72 +85+45 "Глину  \nмесишь?"
renderSticker "63-bolt-on.png"        72 +45+75 "Встанет\n болт-он    "
renderSticker "64-quadro.png"         53 +25+75 "Квадроциклисты\n сраные  "
renderSticker "65-love.png"           72 +99+35 "Лубовь!"
renderSticker "66-friends.png"        62 +40+50 "Взял друзей\n на покатушку"
renderSticker "67-softer.png"         72 +85+55 "Люблю \n по-мягче"
renderSticker "68-harder.png"         72 +65+25 "Люблю  \n по-жестче"
renderSticker "69-thin-ice.png"       64 +25+25 "Вы ходите\n по офигенно\n тонкому льду"
renderSticker "70-wheely.png"         72 +25+45 "Колёсики \n от шкафа"
renderSticker "71-chain.png"         72 +25+45 "У самурая   \n нет цепи"
cp -v    ./src/98-mud-lover.png       ./build/98-mud-lover.png
cp -v    ./src/99-12-5-1.png          ./build/99-12-5-1.png
