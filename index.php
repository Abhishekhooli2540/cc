<?php include('head.php'); ?>

<body id="page1">
<div class="body1">
	<div class="main">
<!--header -->
<?php include('header.php'); ?>
<!-- / header -->
<!-- content -->
	</div>
</div>
<div class="body2">
	<div class="main">
		<article id="content2">
			<div class="wrapper">
				<section class="col2">
					<b><h2> About Pet <span>Care</span></h2></b>
					<div class="testimonials">
						<p class="quot">“PET CARE” is a application to build a “Customer relationship management” helps in easy management of pet care products and the tips given based on pet care and usage products as well as the admin for a better relations with the customer by advertising their products.<img src="images/quot2.png" alt=""></p>
					</div>

				</section>


				<section class="col3 pad_left2">
					<h2>Our Products</h2>
			<marquee direction="up" scrollamount="4" height="200">		
								<?php include('dbconnection.php');?>
			
			<?php $sql="select * from product limit 5 ";
			$res=mysql_query($sql);
			while($row=mysql_fetch_array($res))
			{
//			$id=$row['m_id'];

			?>
					
					
					<div class="wrapper pad_top1">
						<figure class="left marg_right1"><img src="vetadmin/Admin/files/<?php echo $row['image']; ?>" width="90" height="90" alt=""></figure>
						<p><span class="font1 color2"><?php echo $row['product_name']; ?></span><br>
							
						</p>
					</div>
				<?php
				}
				?>	
				</marquee>
				</section>
			</div>
		</article>
<!-- / content -->
	</div>
</div>


<?php include('footer.php'); ?>