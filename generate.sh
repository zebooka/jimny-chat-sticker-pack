#!/bin/bash

cd "$(dirname "$0")"

renderSticker () {
    echo $1 $2
    magick "./src/$1" \
        \( -size 515x512 'xc:none' \
            -family "Helvetica" -style Italic -weight Bold \
            -pointsize 65 -interline-spacing -5 -kerning -2 \
            -fill black -stroke black -strokewidth 15 \
            -gravity SouthEast -annotate +25+25 "$2" \
            -alpha Set -channel A +level 0,70% +channel \
        \) -composite \
        \( -size 515x512 'xc:none' \
            -family "Helvetica" -style Italic -weight Bold \
            -pointsize 65 -interline-spacing -5 -kerning -2 \
            -fill white -stroke '#FFFFFF00' \
            -gravity SouthEast -annotate +25+25 "$2" \
        \) -composite \
        "./build/$1"
}

renderSticker "20-pickup-master.png"  "Мастер \nПикапа"
renderSticker "21-longer.png"         "У меня\n Длиннее "
renderSticker "30-forbidden.png"      "Я вам\n Запрещаю!"
renderSticker "31-angry-admin.png"    "Злой\nАдмин "
renderSticker "32-limuzin.png"        "Лимузин"
renderSticker "33-fresh-800.png"      "Свежий \nза 800к"
renderSticker "34-alive-200.png"      "Живой \nза 200к"
renderSticker "35-obvious.png"        "Решение\n Очевидно "
renderSticker "36-toyota.png"         "Божэствинная\n Тавотааа..."
renderSticker "37-kolhoz.png"         "Колхоз!"
renderSticker "38-fast-n-furious.png" "Гонка!"
renderSticker "39-tracktor.png"       "Трактор!"
renderSticker "40-man.png"            "МужЫк!"
renderSticker "41-runover.png"        "Наезд!"
renderSticker "42-rotten.png"         "Трос \nГниловат"
renderSticker "43-fast-repair.png"    "Перебрал \nпо-быстрому"
renderSticker "44-beka.png"           "Сунул Бека \nруку в реку"
renderSticker "45-no-lift.png"        "А без лифта\n встанут?  "
renderSticker "46-told-you.png"       "А я же \nговорил!"
renderSticker "47-uglydog.png"        "Больной  \nУблюдог!"
renderSticker "48-valves.png"         "Ещё \nпоходит"
renderSticker "49-tcc.png"            "Неоспоримые \nПреимущества"
renderSticker "50-clutch.png"         "Меня \nклинит!"
renderSticker "51-cvt.png"            "Конуса \nв ануса"
renderSticker "52-pigeon.png"         "Пижон \nполированный"
renderSticker "53-stock.png"          "А сток\n доедет? "
renderSticker "54-hardporn.png"       "Hard Porn"
renderSticker "55-ass.png"            "Жопа, а не \nавтомобиль"
renderSticker "56-boobie.png"         "Сисечка \n(.)(.)"
renderSticker "57-porco.png"          "Грязь \nНайдём!"
renderSticker "58-obd.png"            "Ну и рожа!"
renderSticker "59-boobs.png"          "СИСЬКИ!"
renderSticker "60-group.png"          "Групповуха"
renderSticker "61-roger.png"          "Приём?!"
renderSticker "62-mud.png"            "Глину  \nмесишь?"
renderSticker "63-bolt-on.png"        "Встанет\n болт-он  "
renderSticker "64-quadro.png"         "Квадроциклисты\n сраные  "
renderSticker "65-love.png"           "Лубовь!"
renderSticker "66-friends.png"        "Взял друзей \nна покатушку"
renderSticker "67-softer.png"         "Люблю\n по-мягче"
renderSticker "68-harder.png"         "Люблю\n по-жестче"
renderSticker "69-thin-ice.png"       "Вы ходите\n по офигенно\n тонкому льду"

cp -v old/*.png build/

