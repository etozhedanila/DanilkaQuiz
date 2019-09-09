//
//  Questions.swift
//  CoreAnimationApp
//
//  Created by Виталий Субботин on 31.01.2019.
//  Copyright © 2019 Виталий Субботин. All rights reserved.
//

import Foundation

var uselessQuestions = [
    ["question" : "Укажите Ваш примерный возраст",
     "answers" : ["до 18 лет", "18 - 25", "26 - 35", "свыше 35"],
     "image" : "thirdQuestion"
    ],
    ["question" : "Какова главная цель использования Вами нашего сервиса?",
     "answers" :
        ["Демонстрация ярких событий моей жизни перед неограниченной аудиторией", "Обмен фотографиями с друзьями и знакомыми", "Возможность заработать деньги с бизнес-аккаунтом", " Возможность использования неограниченной аудитории в целях рекламы "],
     "image" : "target"
    ],
    ["question" : "Публикации с тематикой какого рода Вы сочтете наиболее привлекательными для себя?",
     "answers" : ["Природа и животный мир", "Развлечения и спорт", "Новости и бизнес", "Наука и техника"],
     "image" : "secondUseless"
    ],
    ["question" : "К какой функции вы прибегаете чаще всего при пользовании Instagram?",
     "answers" : ["Обычная публикация", "История", "Прямой эфир", "IGTV"],
     "image" : "firstUseless"
    ],
    ["question" : "С каким аккаунтом вы взаимодействуете чаще?",
     "answers" : ["@pavlushenka_43", "@danya_prof", "@crownadii", "@im_matanya"],
     "image" : "interaction"
    ]
]


var questions = [
    ["question" : "Что для Вас самое главное в жизни?",                                                         //0
     "fullCorrectAnswer" : "Крепкий брак и благополучная семейная жизнь",
     "semiCorrectAnswer" : "Увековечивание своего имени в истории",
     "uncorrectAnswers" : ["Продолжение рода и обилие потомства", "Большие материальные накопления"],
     "image" : "glavnoe_v_jizni"
    ],
    
    ["question" : "Как Вы считаете, должен ли брак быть единственным в жизни?",                                 //1
        "fullCorrectAnswer": "Крепкий и продолжительный брак - это гарантия счастливой жизни",
        "uncorrectAnswers" : ["Долгий брак - гарантия успешно прожитой жизни, но нельзя исключать связей извне",
                              "Брак не может быть единственным, нужно брать от жизни все при любой возможности",
                              "Брак - пережиток прошлого, несмотря на все привилегии я выберу простое сожительство"
        ],
        "image" : "longMarriage"
    ],
    ["question" : "Что из нижеперечисленного Вы сочтете за измену?",                                              //2
        "fullCorrectAnswer": "Любой факт половой связи своего избранника с лицом противоположного пола",
        "uncorrectAnswers" : [" Факт поддержания любых близких связей с лицами противоположного пола", "Факт общения своего избранника со своей бывшей девушкой", "Все из перечисленного для меня будет считаться изменой"],
        "image" : "cheating"
    ],
    ["question" : "Какой вариант заключения брака Вы видите самым приемлемым?",                                 //3
        "fullCorrectAnswer": "Традиционная свадьба с приглашением всех родственников",
        "semiCorrectAnswer" : "Простое посещение ЗАГСа ",
        "uncorrectAnswers" : ["Экстравагантная свадьба", "Я против заключения брака"],
        "image" : "variantsOfMarriage"
    ],

    ["question" : "С какой песней @danya_prof ассоциирует начало ваших отношений?",                             //4
     "fullCorrectAnswer": "Artik & Asti — Неделимы",
     "uncorrectAnswers" :
        ["Адлер Коцба, Timran — Запах моей женщины", "Стас Костюшкин — Женщина, я не танцую", "Олег Митяев - Небесный калькулятор"],
     "image" : "startOfRelation"
    ],
   
    ["question" : "Укажите верное название играющего трека:",                                                   //5
     "fullCorrectAnswer": "Artik & Asti — Неделимы",
     "uncorrectAnswers" : ["Потап и Настя Каменских - Умамы ", "SEREBRO - Между нами любовь", "LOBODA - Твои глаза"],
     "image" : "musicImage",
     "musicName" :"nedelimy"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                   //6
     "fullCorrectAnswer": "Thomas Mraz - May 13",
     "uncorrectAnswers" : ["Те100стерон - Хочу любить", "Элджей - Bounce", "ЛСП - Тело"],
     "image" : "musicImage",
     "musicName" : "may_13"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                   //7
     "fullCorrectAnswer": "Camila Cabello feat. Young Thug - Havana",
     "uncorrectAnswers" : ["Nicole Scherzinger - Poison", "Katy Perry - Roulette", "LP - Lost on you"],
     "image" : "musicImage",
     "musicName" : "havana"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                   //8
     "fullCorrectAnswer": "MiyaGi & Эндшпиль feat. Amigo - Cамая",
     "uncorrectAnswers" : ["Макс Корж - Эндорфин", "HammAli & Navai - Ноты", "Эльбрус Джанмирзоев - Бродяга"],
     "image" : "musicImage",
     "musicName" : "drysnya"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                   //9
     "fullCorrectAnswer": "Keeno & Whiney - Dignity Found",
     "uncorrectAnswers" : ["Eminem - Venom", "Скриптонит - Цепи", "Баста - Скрепы"],
     "image" : "musicImage",
     "musicName" : "dignity_found"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                    //10
     "fullCorrectAnswer": "Alphavite - Мата Хари",
     "uncorrectAnswers" : ["MORGENSHTERN - Turn it on!", "Prodigy - Firestarter", "Alan Walker - Faded"],
     "image" : "musicImage",
     "musicName" : "alphavite"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                    //11
     "fullCorrectAnswer": "Скриптонит - Цепи (ft. 104)",
     "uncorrectAnswers" : ["Хаски - Панелька", "Скриптонит - Поворот", "T-Fest - Улети"],
     "image" : "musicImage",
     "musicName" : "sygyndyk"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                      //12
     "fullCorrectAnswer": "Dua Lipa - IDGAF",
     "uncorrectAnswers" : ["LP - Suspicion", "Sia - Never Give Up", "Rita Ora - Let You Love Me "],
     "image" : "musicImage",
     "musicName" : "dua_lipa"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                        //13
     "fullCorrectAnswer": "Ka-Re - Половина",
     "uncorrectAnswers" : ["CYGO - Panda E", "Хлеб - Шашлындос", "Артур Пирожков - Чика"],
     "image" : "musicImage",
     "musicName" : "polovina"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                       //14
     "fullCorrectAnswer": "Хлеб - Шашлындос",
     "uncorrectAnswers" : ["Хаски - Панелька", "Аника Далински - Дороги, дороги", "Ник Черников feat. Успешная группа - Валят тазы"],
     "image" : "musicImage",
     "musicName" : "hleb"
    ],
    ["question" : "Укажите верное название играющего трека:",                                                      //15
     "fullCorrectAnswer": "CYGO - Panda E",
     "uncorrectAnswers" : ["T-Fest feat. Баста - Скандал", "Thomas Mraz feat. Oxxxymiron - Ultraviolet", "Звонкий - Голоса"],
     "image" : "musicImage",
     "musicName" : "panda"
    ],
    
    ["question" : "Что @danya_prof больше всего привлекает в европейских странах?",                             //16
     "fullCorrectAnswer": "Футбол",
     "semiCorrectAnswer" : "Возможность отправиться туда в путешествие",
     "uncorrectAnswers" : ["Великая история", "Развитость государств"],
     "image" : "europe"
    ],
    ["question" : "Назовите год \"рождения\" зеленого коня @danya_prof?",                                              //17
     "fullCorrectAnswer": "1999",
     "uncorrectAnswers" : ["1976", "2004", "2016"],
     "image" : "jiga"
    ],
    ["question" : "Чему @danya_prof никогда не обрадуется?",                                                                //18
     "fullCorrectAnswer": "Поломке автомобиля",
     "uncorrectAnswers" : ["Увольнению из СК ", "Победе Спартака", "Сюрпризу"],
     "image" : "sad"
    ],

    ["question" : "Готовы ли Вы выйти за @danya_prof замуж?",                                                                //19
     "fullCorrectAnswer": "ДА",
     "uncorrectAnswers" : ["ДА", "ДА", "ДА"],
     "image" : "wedding"
    ]
]


