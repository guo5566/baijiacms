<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'weixinsources';

if ($operation == 'weixinsources') {
    $type='voice';
   $soucelist=$this->weixinSoucesQuery($type,0,10);
    //print_r($soucelist);
    
    include page('weixinsources');
}




if ($operation == 'saveweixinsources') {
    $mid=$_GP['id'];
    //echo "测试".$mid;
    $this->saveweixinSources($mid);
   
}
