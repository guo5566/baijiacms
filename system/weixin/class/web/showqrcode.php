<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'showqrcode';
if ($operation == 'showqrcode') {

    include page('showqrcode');
}

?>
