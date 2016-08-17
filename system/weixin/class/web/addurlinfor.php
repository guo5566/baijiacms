<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'addurlinfor';
if ($operation == 'addurlinfor') {
    
    if(!empty($_GP['urlname'])&&!empty($_GP['urlstr'])){
    
    
    
    
        $data= array('urlname'=> $_GP['urlname'],'urlstr'=>$_GP['urlstr'],'createtime'=>date('y-m-d h:i:s',time()));
        mysqld_insert('qrcode_url', $data);
    
        message("新增链接信息成功",create_url('site', array('name' => 'weixin','do' => 'weixingrouplist')),"success");
    
    
    }else{
        include page('addurlinfor');
    }

    
}



?>
