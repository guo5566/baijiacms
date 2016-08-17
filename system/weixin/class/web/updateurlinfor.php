<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'updateurlinfor';
if ($operation == 'updateurlinfor') {
     
    $qrcode_url = mysqld_select("SELECT * FROM " . table('qrcode_url')." where id='".intval($_GP['id'])."' " );

    include page('updateurlinfor');
    
    
    if(!empty($_GP['upmethod'])&&checksubmit('submit')){
        
        $data=array('urlname'=>
            $_GP['urlname'],'urlstr'=>
            $_GP['urlstr'],'createtime'=>date('Y-m-d H:i:s',time()));
        
        mysqld_update('qrcode_url',$data,array('id'=>$_GP['id']));
        
        //message("修改成功","refresh","success");
        message("修改链接信息成功",create_url('site', array('name' => 'weixin','do' => 'weixinqrcode')),"success");
    }
}
