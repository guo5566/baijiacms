<?php defined('SYSTEM_IN') or exit('Access Denied');?><?php  include page('header');?>
<form action="" method="post" class="form-horizontal" enctype="multipart/form-data" >
    <h3 class="header smaller lighter blue">修改微信用户组</h3>
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" > 微信用户组名称：</label>

    <div class="col-sm-9">
    <input type="text" name="groupname"  class="col-xs-10 col-sm-2" value="<?php echo $groupname;?>" />
    <input type="hidden" name="id" class="col-xs-10 col-sm-2" value="<?php echo $id;?>" />
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