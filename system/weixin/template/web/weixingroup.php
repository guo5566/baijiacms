<?php defined('SYSTEM_IN') or exit('Access Denied');?>
<?php  include page('header');?>
<script type="text/javascript">
function addGroup(){


	
}
</script>
<h3 class="header smaller lighter blue">微信用户列表</h3>
		<table class="table table-striped table-bordered table-hover">
			<thead >
				<tr>
				    <th style="text-align:center;min-width:30px;">序号</th>
					<th style="text-align:center;min-width:150px;">微信分组名称</th>
					<th style="text-align:center; min-width:60px;">人数</th>
					<th style="text-align:center; min-width:60px;">操作</th>
					
				</tr>
			</thead>
			<tbody>
				<?php  $num=1;
				 if(is_array($weixinGroup)) { foreach($weixinGroup as $item) { 
				   
				    ?>
				<tr>
				    <td style="text-align:center;">
					 <?php  echo $num++;?>
					
					</td>
					<td style="text-align:center;">
					<?php  echo $item['name'];?>
					
					</td>
				   <td style="text-align:center;">
					<?php  echo $item['count'];?>	
						
					</td>
					
					  <td style="text-align:center;">
					<a class="btn btn-xs btn-info"  href="<?php  echo web_url('weixingroup', array('op'=>'updateweixingroup','id'=>$item['id'],'groupname'=>urlencode($item['name'])))?>"><i class="icon-edit">修改</i></a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="btn btn-xs btn-info"  href="<?php  echo web_url('weixingroup', array('op'=>'delweixingroup','id'=>$item['id']))?>"><i class="icon-edit">删除</i></a>	
						
					</td>
					
				</tr>
				<?php  } } ?>
			</tbody>
		</table>


		
		
		<table class="table">
			<tbody>
				<tr>
					<td>
						<a class="btn btn-warning span3"  href="<?php  echo web_url('weixingroup', array('op'=>'addweixingroup'))?>"><i class="icon-edit">+添加分组</i></a>
					</td>
				</tr>
	
		
			</tbody>
		</table>








<?php  include page('footer');?>



