<?php defined('SYSTEM_IN') or exit('Access Denied');?>
<?php  include page('header');?>
<h3 class="header smaller lighter blue">微信二维码列表</h3>
		<table class="table table-striped table-bordered table-hover">
			<thead >
				<tr>
					<th style="text-align:center;min-width:150px;">序号</th>
					<th style="text-align:center;min-width:150px;">名称</th>
					<th style="text-align:center;min-width:150px;">创建时间</th>
					<th style="text-align:center; min-width:60px;">查看二维码</th>
				</tr>
			</thead>
			<tbody>
				<?php  $num=1;
				 if(is_array($qrcodeurllist)) { foreach($qrcodeurllist as $item) {
				    ?>
				<tr>
					<td style="text-align:center;"><?php  echo $num++;?></td>
					<td style="text-align:center;"><?php  echo $item['urlname'];?></td>
							<td style="text-align:center;">
									<?php  echo $item['createtime'];?></td>
						<td style="text-align:center;">
						<a class="btn btn-xs btn-info"  href="<?php  echo web_url('showqrcode', array('op'=>'showqrcode','urlstr' => $item['urlstr']))?>"><i class="icon-edit"></i>查看二维码</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="btn btn-xs btn-info"  href="<?php  echo web_url('updateurlinfor', array('op'=>'updateurlinfor','id' => $item['id']))?>"><i class="icon-edit"></i>修改</a>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a class="btn btn-xs btn-info"  href="<?php  echo web_url('designer1', array('op'=>'deleteconmenu','menuid' => $item['id']))?>"><i class="icon-edit"></i>删除</a>
					</td>
				</tr>
				<?php  } } ?>
			</tbody>
		</table>

      <table class="table">
			<tbody>
				<tr>
					<td>
						<a class="btn btn-warning span3"  href="<?php  echo web_url('addurlinfor', array('op'=>'addurlinfor'))?>"><i class="icon-edit"></i>添加链接地址</a>
						
					</td>
				</tr>
	
		
			</tbody>
		</table>








<?php  include page('footer');?>



