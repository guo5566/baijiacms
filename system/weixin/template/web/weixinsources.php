<?php defined('SYSTEM_IN') or exit('Access Denied');?>
<?php  include page('header');?>
<h3 class="header smaller lighter blue">微信资源列表</h3>
		<table class="table table-striped table-bordered table-hover">
			<thead >
				<tr>
				    <th style="text-align:center;min-width:30px;">序号</th>
					<th style="text-align:center;min-width:150px;">素材名称</th>
					<th style="text-align:center;min-width:150px;">MediaId</th>
					<th style="text-align:center;min-width:150px;">操作</th>
				
				</tr>
			</thead>
			<tbody>
			<?php  $num=1;
				 if(is_array($soucelist)) { foreach($soucelist as $item) { 
				   
				    ?>
				<tr>
				    <td style="text-align:center;">
					 <?php  echo $num++;?>
					
					</td>
					<td style="text-align:center;">
					 <?php  echo $item['name'];?>
					
				
					
					</td>
					<td style="text-align:center;">
					 <?php  echo $item['media_id'];?>
				     </td>
				     
				     <td style="text-align:center;">
	
					 <a class="btn btn-xs btn-info"  href="<?php  echo web_url('weixinsources', array('op'=>'saveweixinsources','id'=>$item['media_id']))?>"><i class="icon-edit">保存</i></a>
				     </td>
				</tr>
				<?php  } } ?>
			
				
			</tbody>
		</table>










<?php  include page('footer');?>
