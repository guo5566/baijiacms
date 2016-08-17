<?php defined('SYSTEM_IN') or exit('Access Denied');?>
<?php  include page('header');?>
<h3 class="header smaller lighter blue">微信二维</h3>
		  <center>

			
									<?php echo $_GP['urlstr'] ?>	
								  <br />	<br />	
								<div id="qrcodeTable"></div>																																																																											
			
			    
			<script>
          jQuery('#qrcodeTable').qrcode({
		  render : "table",
		   text : "<?php echo $_GP['urlstr'] ?>"
	       });	
           </script>
	
	
		</center>
		
		
		</table>










<?php  include page('footer');?>



