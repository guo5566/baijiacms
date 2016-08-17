<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'weixinuser';
if ($operation == 'weixinuser') {
     
    //$list = mysqld_selectall("select * from " . table('user'));
    
    

    $weixinUsers=$this->weixinUserQuery();
    $weixinGroup=$this->weixinGroupQuery();
    //echo "weixinUsers=";
    //print_r($weixinGroup);
    
    

    include page('weixinuser');
}

if($operation == 'updateremark'){
    
    if(!empty($_GP['upmethod'])&&checksubmit('submit')){
        if(!empty($_GP['openid'])){
            $openid=$_GP['openid'];
            $remarkname=urldecode($_GP['remarkname']);
            //echo $remarkname;
            $this->weixinUpdateRemark($openid,$remarkname);
        }
    }else{
        $openid=$_GP['openid'];
        $remarkname=urldecode($_GP['remarkname']);
        include page('updateremark');
    
    }
    
    
   
}



if($operation == 'addusertogroup'){

    if(!empty($_GP['upmethod'])&&checksubmit('submit')){
        if(!empty($_GP['openid'])){
            $openid=$_GP['openid'];
            $groupid=$_GP['groupid'];
           
            $this->weixinAddUserToGroup($openid,$groupid);
        }
    }else{
        $openid=$_GP['openid'];
        $groupid=$_GP['groupid'];
        $weixinGroup=$this->weixinGroupQuery();
        include page('addusertogroup');

    }


     
}

?>

