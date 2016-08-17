<?php defined('SYSTEM_IN') or exit('Access Denied');?><?php  include page('header');?>
<form action="" method="post" class="form-horizontal" enctype="multipart/form-data" >
    <h3 class="header smaller lighter blue">新增链接信息</h3>
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" > 链接名称：</label>

    <div class="col-sm-9">
    <input type="text" name="urlname"  class="col-xs-10 col-sm-2" />
    </div>
    </div>
    	
    <div class="form-group">
    <label class="col-sm-2 control-label no-padding-left" for="form-field-1"> URL链接信息：</label>

    <div class="col-sm-9">
    <input type="text"  name="urlstr"  class="col-xs-10 col-sm-2" />
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