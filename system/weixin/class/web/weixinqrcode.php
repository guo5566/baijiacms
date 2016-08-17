<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'weixinqrcode';
if ($operation == 'weixinqrcode') {
     
    $qrcodeurllist = mysqld_selectall("select * from " . table('qrcode_url'));

    include page('weixinqrcode');
}

if ($operation == 'deleteurlinfor') {
    mysqld_delete('qrcode_url', array('id'=>$_GP['id']));
    message('删除成功',refresh(),'success');
}


?>

