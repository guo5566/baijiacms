<?php defined('SYSTEM_IN') or exit('Access Denied');?><?php  include page('header');?>
<form action="" method="post" class="form-horizontal" enctype="multipart/form-data" >
    <h3 class="header smaller lighter blue">微信用户设置标签</h3>
    <?php foreach($weixinGroup as $group){?>
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" > 微信用户组：</label>

    <div class="col-sm-9">
    <input type="radio" name="groupid"  class="col-xs-10 col-sm-2" value="<?php echo $group['id'];?>" 
    <?php if($group['id']==$groupid){
        echo 'checked="checked"';
    }?>
     /> <?php echo $group['name'];?>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    </div>
    </div>
     <?php }?>

								  <div class="form-group">
										<label class="col-sm-2 control-label no-padding-left" for="form-field-1"> </label>

										<div class="col-sm-9">
										 <input type="hidden" name="openid" class="col-xs-10 col-sm-2" value="<?php echo $openid;?>" />
                                         <input type="hidden" name="upmethod" class="col-xs-10 col-sm-2" value="update" />
										<input name="submit" type="submit" value="保存" class="btn btn-info"/>
										
										</div>
									</div>

    </form>
    
    
    <?php  include page('footer');?>