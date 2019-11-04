<?php

return [
    'field' => [
        'country' => [
            'label' => 'Страна',
            'chooseItem' => 'Выберите страну'
        ],
        'region' => [
            'label' => 'Регион',
            'emptyItem' => 'Выберите страну',
            'chooseItem' => 'Выберите регион'
        ],
        'city' => [
            'label' => 'Город',
            'emptyItem' => 'Выберите регион',
            'chooseItem' => 'Выберите город'
        ]
    ],
    'validate' => [
        'not_fond_country' => 'Не найдена страна с ID "%%id%%"',
        'not_fond_region' => 'Не найден регион'
    ]
];