<?php defined('SYSTEM_IN') or exit('Access Denied');
$operation = !empty($_GP['op']) ? $_GP['op'] : 'weixingrouplist';
if ($operation == 'weixingrouplist') {
     
    //$list = mysqld_selectall("select * from " . table('user'));
    
    

    $weixinGroup=$this->weixinGroupQuery();
    //echo "weixinUsers=";
    //print_r($weixinUsers);
    

    include page('weixingroup');
}


if ($operation == 'addweixingroup') {
    if(!empty($_GP['groupname'])){
        $name=$_GP['groupname'];
        $this->weixinAddGroup($name);
    }else{
        include page('addweixingroup');
        
    }
     

   
}



if ($operation == 'delweixingroup') {
    if(!empty($_GP['id'])){
        $id=$_GP['id'];
        $this->weixindelGroup($id);
    }
     

     
}



if ($operation == 'updateweixingroup') {
    if(!empty($_GP['upmethod'])&&checksubmit('submit')){
        if(!empty($_GP['id'])){
            $id=$_GP['id'];
            $groupname=urldecode($_GP['groupname']);
            $this->weixinUpdateGroup($id,$groupname);
        }
    }else{
        $id=$_GP['id'];
        $groupname=urldecode($_GP['groupname']);
        include page('updateweixingroup');
        
    }
     

     
}




?>

