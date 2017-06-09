<?php

namespace app\models;

use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class AddForm extends Model
{
    public $emails;

    /**
     * @return array the validation rules.
     */
    public function rules()
    {
        return [
            ['emails', 'required'],
        ];
    }

    /**
     * @return array customized attribute labels
     */
    public function attributeLabels()
    {
        return [
            'emails' => 'E-mails',
        ];
    }
}
