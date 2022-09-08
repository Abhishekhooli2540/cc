<?php include('header1.php');  ?>


<div class="body2">
	<div class="main">
		<article id="content2">
			<h2>Our Featured Products</h2>
			<div class="wrapper">
			<?php include('dbconnection.php');?>
			
			<?php $sql="select * from product";
			$res=mysql_query($sql);
			while($row=mysql_fetch_array($res))
			{
			$mid=$row['product_id'];
			?>
			
				<div class="cols pad_left1">
					<figure class="pad_bot2 pad_top1"><img src="vetadmin/Admin/files/<?php echo $row['image']; ?>" width="200" height="211" alt=""></figure>
					<p class="pad_bot2">
						<span class="font1 color2"><?php echo $row['product_name']; ?></span><br>
						
					</p>
					
					<?php 
					$sql2="select avg(rating) as rat from rating where product_id='$mid'";
					$res2=mysql_query($sql2);
					$row2=mysql_fetch_array($res2);
					$rat=$row2['rat'];
					?>
					<?php
					
					if($rat>'0' && $rat<='1')
					{
					?>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<?php
					}
					else if($rat>'1' && $rat<='2')
					{
					?>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<?php
					}
					else if($rat>'2' && $rat<='3')
					{
					?>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<?php
					}
					else if($rat>'3' && $rat<='4')
					{
					?>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<?php
					}
					else if($rat>'4' && $rat<='5')
					{
					?>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<a href="#" ><img src="images/rating.png" width="30" height="30"></a>
					<?php
					}
					else
					{
					 ?>
					<a href="#" >No Ratings</a>
					<?php
					}
					?>
					
					<br/><a href="vetadmin/index.php" class="link1">Buy</a>
				</div>
			<?php
			}
			?>
			</div>
		</article>
<!-- / content -->
	</div>
</div>


<?php include('footer.php'); ?>