<?php
defined('SYSTEM_IN') or exit('Access Denied');
define('subscribe_key', '系统_关注事件');
define('default_key', '系统_默认回复');
class weixinAddons  extends BjSystemModule {

		public function do_rule()
	{
		$this->__web(__FUNCTION__);
	}
	
	public function do_menumodify() {
		$this->__web(__FUNCTION__);
	}
	
	public function do_menumodify1() {
	    $this->__web(__FUNCTION__);
	}
	
	public function do_designer()
	{
		$this->__web(__FUNCTION__);
	}
	
	public function do_designer1()
	{
	    $this->__web(__FUNCTION__);
	}
	
	public function do_remove()
	{
		$this->__web(__FUNCTION__);
	}
	
	public function do_remove1()
	{
	    $this->__web(__FUNCTION__);
	}
	
	public function do_refresh()
	{
		message('', 'refresh');
	}
	
	public function do_setting()
	{
		$this->__web(__FUNCTION__);
	}
	
	public function do_weixinuser()
	{
	    $this->__web(__FUNCTION__);
	}
	
	public function do_weixinsources()
	{
	    $this->__web(__FUNCTION__);    
	}
	
	public function do_weixingroup()
	{
	    $this->__web(__FUNCTION__);
	}
	
	public function do_showqrcode()
	{
	    $this->__web(__FUNCTION__);
	}
	
	public function do_weixinqrcode()
	{
	    $this->__web(__FUNCTION__);
	}
	
	public function  do_updateurlinfor(){
	    
	    $this->__web(__FUNCTION__);
	}
	
	public function do_addurlinfor(){
	    
	    $this->__web(__FUNCTION__);
	    
	}
	
	
	public function do_guanzhu()
	{
		$this->__web(__FUNCTION__);
	}
	
	
		private function menuResponseParse($content) {
		if(empty($content)) {
			return message( "接口调用失败，请重试！公众平台返回错误信息: {$content}" );
		}
		$dat = $content;
		//echo  "repons=".$content."<br/>";
		$result = @json_decode($dat, true);
		if(is_array($result) && $result['errcode'] == '0') {
			return true;
		} else {
			if(is_array($result)) {
				return  message("微信公众平台返回错误. 错误代码: {$result['errcode']} 错误信息: {$result['errmsg']} 错误描述: " . $this->error_code($result['errcode']));
			} else {
				return  message('微信公众平台未知错误');
			}
		}
	}
	
	
	
	private function menuResponseParse1($content) {
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！公众平台返回错误信息: {$content}" );
	    }
	    $dat = $content;
	     //echo  "repons=".$content."<br/>";
	    $result = @json_decode($dat, true);
	    if(is_array($result)) {
	        return true;
	    } else {
	        if(is_array($result)) {
	            return  message("微信公众平台返回错误. 错误代码: {$result['errcode']} 错误信息: {$result['errmsg']} 错误描述: " . $this->error_code($result['errcode']));
	        } else {
	            return  message('微信公众平台未知错误');
	        }
	    }
	}
	
	
	private function error_code($code) {
		$errors = array(
			'-1' => '系统繁忙',
			'0' => '请求成功',
			'40001' => '获取access_token时AppSecret错误，或者access_token无效',
			'40002' => '不合法的凭证类型',
			'40003' => '不合法的OpenID',
			'40004' => '不合法的媒体文件类型',
			'40005' => '不合法的文件类型',
			'40006' => '不合法的文件大小',
			'40007' => '不合法的媒体文件id',
			'40008' => '不合法的消息类型',
			'40009' => '不合法的图片文件大小',
			'40010' => '不合法的语音文件大小',
			'40011' => '不合法的视频文件大小',
			'40012' => '不合法的缩略图文件大小',
			'40013' => '不合法的APPID',
			'40014' => '不合法的access_token',
			'40015' => '不合法的菜单类型',
			'40016' => '不合法的按钮个数',
			'40017' => '不合法的按钮个数',
			'40018' => '不合法的按钮名字长度',
			'40019' => '不合法的按钮KEY长度',
			'40020' => '不合法的按钮URL长度',
			'40021' => '不合法的菜单版本号',
			'40022' => '不合法的子菜单级数',
			'40023' => '不合法的子菜单按钮个数',
			'40024' => '不合法的子菜单按钮类型',
			'40025' => '不合法的子菜单按钮名字长度',
			'40026' => '不合法的子菜单按钮KEY长度',
			'40027' => '不合法的子菜单按钮URL长度',
			'40028' => '不合法的自定义菜单使用用户',
			'40029' => '不合法的oauth_code',
			'40030' => '不合法的refresh_token',
			'40031' => '不合法的openid列表',
			'40032' => '不合法的openid列表长度',
			'40033' => '不合法的请求字符，不能包含\uxxxx格式的字符',
			'40035' => '不合法的参数',
			'40038' => '不合法的请求格式',
			'40039' => '不合法的URL长度',
			'40050' => '不合法的分组id',
			'40051' => '分组名字不合法',
			'41001' => '缺少access_token参数',
			'41002' => '缺少appid参数',
			'41003' => '缺少refresh_token参数',
			'41004' => '缺少secret参数',
			'41005' => '缺少多媒体文件数据',
			'41006' => '缺少medSYSTEM_id参数',
			'41007' => '缺少子菜单数据',
			'41008' => '缺少oauth code',
			'41009' => '缺少openid',
			'42001' => 'access_token超时',
			'42002' => 'refresh_token超时',
			'42003' => 'oauth_code超时',
			'43001' => '需要GET请求',
			'43002' => '需要POST请求',
			'43003' => '需要HTTPS请求',
			'43004' => '需要接收者关注',
			'43005' => '需要好友关系',
			'44001' => '多媒体文件为空',
			'44002' => 'POST的数据包为空',
			'44003' => '图文消息内容为空',
			'44004' => '文本消息内容为空',
			'45001' => '多媒体文件大小超过限制',
			'45002' => '消息内容超过限制',
			'45003' => '标题字段超过限制',
			'45004' => '描述字段超过限制',
			'45005' => '链接字段超过限制',
			'45006' => '图片链接字段超过限制',
			'45007' => '语音播放时间超过限制',
			'45008' => '图文消息超过限制',
			'45009' => '接口调用超过限制',
			'45010' => '创建菜单个数超过限制',
			'45015' => '回复时间超过限制',
			'45016' => '系统分组，不允许修改',
			'45017' => '分组名字过长',
			'45018' => '分组数量超过上限',
			'46001' => '不存在媒体数据',
			'46002' => '不存在的菜单版本',
			'46003' => '不存在的菜单数据',
			'46004' => '不存在的用户',
			'47001' => '解析JSON/XML内容错误',
			'48001' => 'api功能未授权',
			'50001' => '用户未授权该api',
		);
		$code = strval($code);
	if($code == '40001') {
					$rec = array();
					$rec['access_token'] = '';
         refreshSetting($rec);
			
			return '微信公众平台授权异常, 系统已修复这个错误, 请刷新页面重试.';
		}
		if($errors[$code]) {
			return $errors[$code];
		} else {
			return '未知错误';
		}
	}
	
	//系统个性化生成菜单的方法
	public function menuCreate1($domenu,$matchrule1) {
	    $mDat = $domenu;
	    $mDat = htmlspecialchars_decode($mDat);
	    $mDat=str_replace("\\\"","\"",$mDat);
	    $menu = json_decode($mDat, true);
	    
	    
	    
	    $mDat1 = htmlspecialchars_decode($matchrule1);
	    $matchrule = json_decode($mDat1,true);
	    //print_r($matchrule);
	    if(empty($matchrule)){
	        message('自定义个性化菜单结构错误！:<br/><textarea style="width:300px;height:100px">'.$matchrule1.'</textarea>');
	    }
	    $matchrule['country']=urlencode($matchrule['country']);
	    $matchrule['province']=urlencode($matchrule['province']);
	    $matchrule['city']=urlencode($matchrule['city']);
	    
	    if(empty($menu)) {
	        message('自定义个性化菜单结构错误！:<br/><textarea style="width:300px;height:100px">'.$mDat.'</textarea>');
	    }
	    foreach($menu as &$m) {
	        $m['name'] = preg_replace_callback('/\:\:([0-9a-zA-Z_-]+)\:\:/', create_function('$matches', 'return utf8_bytes(hexdec($matches[1]));'), $m['name']);
	        $m['name'] = urlencode($m['name']);
	        if(isset($m['url']) && !empty($m['url'])){
	            $m['url'] = $this->smartUrlEncode($m['url']);
	        }
	        if(is_array($m['sub_button'])) {
	            foreach($m['sub_button'] as &$s) {
	                $s['name'] = preg_replace_callback('/\:\:([0-9a-zA-Z_-]+)\:\:/', create_function('$matches', 'return utf8_bytes(hexdec($matches[1]));'), $s['name']);
	                $s['name'] = urlencode($s['name']);
	                if(!empty($s['url'])){
	                    $s['url'] = $this->smartUrlEncode($s['url']);
	                }
	            }
	        }
	    }
	    	
	    if(!is_array($menu)) {
	        message('操作非法，自定义菜单结构错误！');
	    }
	    $menus = array();
	    $menus['button'] = $menu;
	    $menus['matchrule']=$matchrule;
	    $dat = json_encode($menus);
	    $dat = urldecode($dat);
	    //echo "<br/>";
	    //echo $dat;
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/menu/addconditional?access_token={$token}";
	    $content = http_post($url, $dat);
	    return $this->menuResponseParse1($content);
	}
	
	
	
	

       //系统自带的生成菜单的方法
		public function menuCreate($domenu) {
		if($domenu==']')
		{
			return $this->menuDelete();
		}
		$mDat = $domenu;
		$mDat = htmlspecialchars_decode($mDat);
		$mDat=str_replace("\\\"","\"",$mDat);
		$menu = json_decode($mDat, true);
				if(empty($menu)) {
		message('自定义菜单结构错误！:<br/><textarea style="width:300px;height:100px">'.$mDat.'</textarea>');
	}
		foreach($menu as &$m) {
			$m['name'] = preg_replace_callback('/\:\:([0-9a-zA-Z_-]+)\:\:/', create_function('$matches', 'return utf8_bytes(hexdec($matches[1]));'), $m['name']);
			$m['name'] = urlencode($m['name']);
			if(isset($m['url']) && !empty($m['url'])){
				$m['url'] = $this->smartUrlEncode($m['url']);
			}
			if(is_array($m['sub_button'])) {
				foreach($m['sub_button'] as &$s) {
					$s['name'] = preg_replace_callback('/\:\:([0-9a-zA-Z_-]+)\:\:/', create_function('$matches', 'return utf8_bytes(hexdec($matches[1]));'), $s['name']);
					$s['name'] = urlencode($s['name']);
					if(!empty($s['url'])){
						$s['url'] = $this->smartUrlEncode($s['url']);
					}
				}
			}
		}
			
			if(!is_array($menu)) {
		message('操作非法，自定义菜单结构错误！');
	}
			$menus = array();
		$menus['button'] = $menu;
	 	$dat = json_encode($menus);
		$dat = urldecode($dat);
		$token = get_weixin_token();
		$url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token={$token}";
		$content = http_post($url, $dat);
		return $this->menuResponseParse($content);
	}
function smartUrlEncode($url){
	if (strpos($url, '=') === false) {
		return $url;
	} else {
		$urls = parse_url($url);
		parse_str($urls['query'], $queries);
		$params=array();
		if (!empty($queries)) {
			foreach ($queries as $variable => $value) {
				$params[$variable] = urlencode($value);
			}
		}
		$queryString = http_build_query($params, '', '&');
		return $urls['scheme'] . '://' . $urls['host'] . $urls['path'] . '?' . $queryString . '#' . $urls['fragment'];
	}
}
	public function menuDelete() {
		$token = get_weixin_token();
		$url = "https://api.weixin.qq.com/cgi-bin/menu/delete?access_token={$token}";
		$content = http_get($url);
		return $this->menuResponseParse($content);
	}
	
	
	public function menuDelete1($menuid) {
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/menu/delconditional?access_token={$token}";
	    $dat='{"menuid":"'.$menuid.'"}';
	   $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	     
	    message("删除个性菜单成功",create_url('site', array('name' => 'weixin','do' => 'designer1')),"success");
	}

	public function menuModify($menu) {
		return $this->menuCreate($menu);
	}

	public function menuQuery() {
		$token = get_weixin_token();
		$url = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token={$token}";
		$content = http_get($url);
		if(empty($content)) {
			return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
		}
		$dat = $content;
		$result = @json_decode($dat, true);
		//print_r($result);
		if(is_array($result) && !empty($result['menu'])) {
			return $result;
		} else {
			if($result['errcode']!='46003')
			{
				get_weixin_token(true);
			if(is_array($result)) {
				return message( "微信公众平台返回接口错误。错误信息: {$result['errmsg']} 错误描述: " . $this->error_code($result['errcode']));
			} else {
				return message( '微信公众平台未知错误');
			}
		}
		}
	}
	
	public function menuQuery1() {
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/menu/get?access_token={$token}";
	    $content = http_get($url);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	    $dat = $content;
	    $result = @json_decode($dat, true);
	    //print_r($result);
	    if(is_array($result)) {
	        return $result;
	    } else {
	        if($result['errcode']!='46003')
	        {
	            get_weixin_token(true);
	            if(is_array($result)) {
	                return message( "微信公众平台返回接口错误。错误信息: {$result['errmsg']} 错误描述: " . $this->error_code($result['errcode']));
	            } else {
	                return message( '微信公众平台未知错误');
	            }
	        }
	    }
	}
	
	//微信资源列表查询
	
	public function weixinSoucesQuery($type,$offset,$count){
	
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/material/batchget_material?access_token={$token}";
	     $dat='{
          "type":"'.$type.'",
          "offset":"'.$offset.'",
          "count":"'.$count.'"
           }';
	     //echo $dat;
	    $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	    $dat = $content;
	    $sourcerarrdata= (array)@json_decode($dat, true);
	    $sourcerarr=(array)$sourcerarrdata['item'];
	
	    return $sourcerarr;
	
	}
	
	
	public function saveweixinSources($id){
	    $token = get_weixin_token();
	    
	    $mediaid = $id;
	    $url = "https://api.weixin.qq.com/cgi-bin/material/get_material?access_token={$token}";
	    $data='{"media_id":"'.$mediaid.'"}';
	    $fileInfo = $this->downloadWeixinFile1($url,$data);
	   // echo $url."<br/>";
	   // echo $fileInfo;
	    //$filename = "/home/wwwroot/default/baijiacms/voicefiles/down123.mp3";
	    $filename = "voicefiles/down1.mp3";
	    $this->saveWeixinFile1($filename, $fileInfo["body"]);
	    //echo "download ok!!!";
	    
	    message("保存素材成功",create_url('site', array('name' => 'weixin','do' => 'weixinsources')),"success");
	     
	    
	}
	
	
	
	
	
	
	public function weixinGroupQuery(){
	     
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/groups/get?access_token={$token}";
	    $content = http_get($url);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	    $dat = $content;
	    $userarr= (array)@json_decode($dat, true);
	
	
	
	    //将返回信息进行处理并输出
	    $usergroup=(array)$userarr['groups'];
	   
	
	    return $usergroup;
	     
	}
	
	
	public function weixinAddGroup($name){
	
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/groups/create?access_token={$token}";
	    $dat='{"group":{"name":"'.$name.'"}}';
	    $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	    
	    message("新增微信用户组成功",create_url('site', array('name' => 'weixin','do' => 'weixingroup')),"success");
	}
	
	
	public function weixindelGroup($id){
	
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/groups/delete?access_token={$token}";
	    $dat='{"group":{"id":"'.$id.'"}}';
	    $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	     
	    message("删除微信用户组成功",create_url('site', array('name' => 'weixin','do' => 'weixingroup')),"success");
	}
	
	
	
	public function weixinUpdateGroup($id,$name){
	
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/groups/update?access_token={$token}";
	    $dat='{"group":{"id":'.$id.',"name":"'.$name.'"}}';
	    $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	
	    message("修改微信用户组成功",create_url('site', array('name' => 'weixin','do' => 'weixingroup')),"success");
	}
	
	//修改备注名称
	
	public function weixinUpdateRemark($openid,$remarkname){
	
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/user/info/updateremark?access_token={$token}";
	    $dat='{"openid":"'.$openid.'","remark":"'.$remarkname.'"}';
	    $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	
	    message("修改微信用户备注名称",create_url('site', array('name' => 'weixin','do' => 'weixinuser')),"success");
	}
	
	
	public  function  weixinAddUserToGroup($openid,$groupid){

	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/groups/members/update?access_token={$token}";
	    $dat='{"openid":"'.$openid.'","to_groupid":'.$groupid.'}';
	    //echo $dat;
	    $content = http_post($url, $dat);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	    
	    message("设置微信用户标签",create_url('site', array('name' => 'weixin','do' => 'weixinuser')),"success");
	    
	    
	}
	
	
	public function weixinUserQuery(){
	    
	    $token = get_weixin_token();
	    $url = "https://api.weixin.qq.com/cgi-bin/user/get?access_token={$token}";
	    $content = http_get($url);
	    if(empty($content)) {
	        return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content}" );
	    }
	    $dat = $content;
	   $userarr= (array)@json_decode($dat, true);
	   
	 
	   
	   //将返回信息进行处理并输出
	   $useropenidarr=(array)$userarr['data'];
	   $result=Array();
	   $i=0;
	   foreach ($useropenidarr['openid'] as $value) {
	       //循环获取用户基本信息
	       $infourl="https://api.weixin.qq.com/cgi-bin/user/info?access_token={$token}&openid={$value}&lang=zh_CN";
	       $content1 = http_get($infourl);
	       if(empty($content1)) {
	           return message( "接口调用失败，请重试！微信公众平台返回错误信息: {$content1}" );
	       }
	       $dat1 = $content1;
	       $infoarr=(array)@json_decode($dat1, true);
	       $result[$i++]=$infoarr;
	       //print_r($infoarr);
	       //print_r($infoarr['province']);
	       //echo "<br />";
	   }
	   
	   //$result=$useropenidarr;
	   
	    return $result;
	    
	}

	function error($code, $msg = '') {
	return array(
		'errno' => $code,
		'message' => $msg,
	);
	}
	
	
	
	
	function downloadWeixinFile1($url,$data)
	{
	   $ch = curl_init();
	   curl_setopt($ch, CURLOPT_URL, $url);
	    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
	    curl_setopt($ch, CURLOPT_HEADER, 0);
	    curl_setopt($ch, CURLOPT_NOBODY, 0);    //只取body头
	    curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
	    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
	    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
	    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
	    $package = curl_exec($ch);
	    $httpinfo = curl_getinfo($ch);
	    curl_close($ch);
	    //print_r($httpinfo);
	    //echo "httpinfo=<br/>";
	    //echo "package=".$package."<br/>";
	    $imageAll = array_merge(array('header' => $httpinfo), array('body' => $package));
	    return $imageAll;
	}
	
	
	function saveWeixinFile1($filename, $filecontent)
	{
	    $local_file = fopen($filename, 'w');
	    
	    //echo  "local_file=".$local_file;
	    
	    if (false !== $local_file){
	        if (false !== fwrite($local_file, $filecontent)) {
	            fclose($local_file);
	        }
	    }
	}
}


