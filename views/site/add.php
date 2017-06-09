<?php
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/**
 * @var app\models\AddForm $model
 */
$form = ActiveForm::begin([
    'id' => 'email-form',
]);
echo $form->field($model, 'emails')->textarea()->hint('Please enter e-mails with ";" delimiter') ?>
    <div class="form-group">
        <div class="col-lg-offset-1 col-lg-11">
            <?= Html::submitButton('Submit', ['class' => 'btn btn-primary']) ?>
        </div>
    </div>
<?php ActiveForm::end() ?>