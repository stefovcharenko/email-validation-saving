<?php

namespace app\controllers;

use app\models\Email;
use Yii;
use yii\web\Controller;
use yii\web\Response;
use app\models\AddForm;
use yii\data\ActiveDataProvider;

class SiteController extends Controller
{
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }

    /**
     * Displays start page.
     *
     * @return string
     */
    public function actionIndex()
    {
        $dataProvider = new ActiveDataProvider([
            'query' => Email::find(),
            'pagination' => [
                'pageSize' => 10,
            ],
            'sort' => [
                'defaultOrder' => [
                    'id' => SORT_DESC,
                ]
            ],
        ]);
        return $this->render('index', ['dataProvider' => $dataProvider]);
    }

    /**
     * Displays e-mails adding page.
     *
     * @return Response|string
     */
    public function actionAdd()
    {
        $model = new AddForm();
        if ($model->load(Yii::$app->request->post())) {
            foreach ($mailArray = explode(';', $model->emails) as $key => $mail) {
                $record = new Email();
                $record->email = $mail;
                $record->save();
            }
            return $this->goHome();
        }
        return $this->render('add', ['model' => $model]);
    }
}
