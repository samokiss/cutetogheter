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
    
    public static $data = [
        self::WEDDING => "wedding",
    ];
}