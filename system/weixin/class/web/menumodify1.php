<?php
defined('SYSTEM_IN') or exit('Access Denied');
	hasrule('weixin','weixin');
			$menu=$_GP['menudate'];
			$matchrule=$_GP['matchrule'];
			//echo $matchrule;
		$return= $this->menuCreate1($menu,$matchrule);
		if($return==true)
		{
		message('修改成功', 'refresh', 'success');	
		}else
		{
						message($return);	
			}
