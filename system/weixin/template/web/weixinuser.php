<?php defined('SYSTEM_IN') or exit('Access Denied');?>
<?php  include page('header');?>
<h3 class="header smaller lighter blue">微信用户列表</h3>
		<table class="table table-striped table-bordered table-hover">
			<thead >
				<tr>
				    <th style="text-align:center;min-width:30px;">序号</th>
					<th style="text-align:center;min-width:150px;">微信用户</th>
					<th style="text-align:center;min-width:150px;">微信用户组</th>
					<th style="text-align:center; min-width:60px;">操作</th>
				</tr>
			</thead>
			<tbody>
				<?php  $num=1;
				 if(is_array($weixinUsers)) { foreach($weixinUsers as $item) { 
				   
				    ?>
				<tr>
				    <td style="text-align:center;">
					 <?php  echo $num++;?>
					
					</td>
					<td style="text-align:center;">
					<img src="<?php  echo $item['headimgurl'];?>" style="width: 48px;height: 48px;"  alt="<?php if($item['remark']!=""){
					  echo $item['remark'];   
					}else{
					    echo $item['nickname'];
					} ?>" /><?php if($item['remark']!=""){
					  echo $item['remark'];   
					}else{
					    echo $item['nickname'];
					} 
					?>
					
					</td>
					<td style="text-align:center;">
					<?php  
					foreach($weixinGroup as $group){
					    if($item['groupid']==$group['id']){
					        echo $group['name'];
					    }
					}
					
					?>
					</td>
						<td style="text-align:center;">
						<a class="btn btn-xs btn-info"  href="<?php  echo web_url('weixinuser', array('op'=>'addusertogroup','openid'=>$item['openid'],'groupid'=>$item['groupid']))?>"><i class="icon-edit">设置标签</i></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="btn btn-xs btn-info"  href="<?php  echo web_url('weixinuser', array('op'=>'updateremark','openid'=>$item['openid'],'remarkname'=>urlencode($item['remark'])))?>"><i class="icon-edit">修改备注</i></a>
						
					</td>
				</tr>
				<?php  } } ?>
			</tbody>
		</table>










<?php  include page('footer');?>



