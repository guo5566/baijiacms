<?php defined('SYSTEM_IN') or exit('Access Denied');?><?php  include page('header');?>
<form action="" method="post" class="form-horizontal" enctype="multipart/form-data" >
    <h3 class="header smaller lighter blue">更新链接信息</h3>
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" > 链接名称：</label>
    <input type="hidden" name="id" class="col-xs-10 col-sm-2" value="<?php echo $qrcode_url['id'];?>" />
     <input type="hidden" name="upmethod" class="col-xs-10 col-sm-2" value="update" />
    <div class="col-sm-9">
    <input type="text" name="urlname"  class="col-xs-10 col-sm-2" value="<?php echo $qrcode_url['urlname'];?>" />
    </div>
    </div>
    	
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" for="form-field-1"> URL链接信息：</label>

    <div class="col-sm-9">
    <input type="text"  name="urlstr"  class="col-xs-10 col-sm-2" value="<?php echo $qrcode_url['urlstr'];?>" />
    </div>
    </div>
    	
    
   
									
									
								  <div class="form-group">
										<label class="col-sm-2 control-label no-padding-left" for="form-field-1"> </label>

										<div class="col-sm-9">
										<input name="submit" type="submit" value="修改" class="btn btn-info"/>
										
										</div>
									</div>

    </form>
    
    
    <?php  include page('footer');?>
