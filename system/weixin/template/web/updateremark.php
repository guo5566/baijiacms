<?php defined('SYSTEM_IN') or exit('Access Denied');?><?php  include page('header');?>
<form action="" method="post" class="form-horizontal" enctype="multipart/form-data" >
    <h3 class="header smaller lighter blue">修改备注名称</h3>
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" > 微信用户备注名称：</label>

    <div class="col-sm-9">
    <input type="text" name="remarkname"  class="col-xs-10 col-sm-2" value="<?php echo $remarkname;?>" />
    <input type="hidden" name="openid" class="col-xs-10 col-sm-2" value="<?php echo $openid;?>" />
    <input type="hidden" name="upmethod" class="col-xs-10 col-sm-2" value="update" />
    </div>
    </div>

								  <div class="form-group">
										<label class="col-sm-2 control-label no-padding-left" for="form-field-1"> </label>

										<div class="col-sm-9">
										<input name="submit" type="submit" value="保存" class="btn btn-info"/>
										
										</div>
									</div>

    </form>
    
    
    <?php  include page('footer');?>