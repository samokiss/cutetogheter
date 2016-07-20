<?php
/**
 * Created by PhpStorm.
 * User: samuelgomis
 * Date: 19/05/15
 * Time: 22:39
 */

namespace AppBundle\Helper;


class DateHelper {
    /**
     * change english date to french date
     * @param date $date
     * @return array
     */
    public function frenchDate($date)
    {
        switch($date->format('N')){
            case 1 :
                $day = "lundi";
                break;
            case 2 :
                $day = "mardi";
                break;
            case 3 :
                $day = "mercredi";
                break;
            case 4 :
                $day = "jeudi";
                break;
            case 5 :
                $day = "vendredi";
                break;
            case 6 :
                $day = "samedi";
                break;
            case 7 :
                $day = "dimanche";
                break;
        }
        switch($date->format('n')){
            case 1 :
                $month = "janvier";
                break;
            case 2 :
                $month = "février";
                break;
            case 3 :
                $month = "mars";
                break;
            case 4 :
                $month = "avril";
                break;
            case 5 :
                $month = "mai";
                break;
            case 6 :
                $month = "juin";
                break;
            case 7 :
                $month = "juillet";
                break;
            case 8 :
                $month = "août";
                break;
            case 9 :
                $month = "septembre";
                break;
            case 10 :
                $month = "octobre";
                break;
            case 11 :
                $month = "novembre";
                break;
            case 12 :
                $month = "décembre";
                break;
        }

        return array('day' => $day,
            'month' => $month,
            'dayNumber' =>$date->format('j'),
            'year' =>$date->format('Y'),
            'fulldate' => $date->format('j').' '.$month.' '.$date->format('Y'),
            'date' => $date->format('j').'/'.$date->format('m').'/'.$date->format('y'),
        );
    }
} 