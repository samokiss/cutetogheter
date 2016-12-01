<?php

/**
 * Created by PhpStorm.
 * User: Samuel
 * Date: 16-11-29
 * Time: 1:23 PM
 */
namespace AppBundle\Enum;

class DataEnum
{
    const WEDDING = 1;
    const ESPAGNE = 2;
    const MAIRIE = 3;
    const JP = 4;

    public static $data = [
        self::WEDDING => "wedding",
        self::ESPAGNE => "espagne",
        self::MAIRIE => "mairie",
        self::JP => "jp",
    ];
}