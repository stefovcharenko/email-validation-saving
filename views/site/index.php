<?php
use yii\grid\GridView;
use yii\helpers\Html;

/**
 * @var \yii\data\ActiveDataProvider $dataProvider
 */
echo GridView::widget([
    'dataProvider' => $dataProvider,
]);
?>
<div class="add-link">
    <?= Html::a('Add new e-mail', 'add', ['class' => 'btn btn-primary']) ?>
</div>
