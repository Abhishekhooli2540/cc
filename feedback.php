<?php include('header1.php');  ?>


<div class="body2">
	<div class="main">
		<article id="content2">
			<h2>Customer Feedback</h2>
			<div class="wrapper">
			
<?php

include('db.php');
$sql="select * from feedback f,customer c where c.c_id=f.c_id";
$res=mysql_query($sql);
while($row=mysql_fetch_array($res))
{

?>

	
					<h2><?php echo $row['c_name']; ?> </h2>
					<div class="testimonials">
						<p class="quot"><?php echo $row['feedback_details']; ?><img src="images/quot2.png" alt=""> <br/> <?php echo $row['feedback_date']; ?></p>
					</div>

<?php
}
?>				

				</div>
			</div>
		</article>
<!-- / content -->
	</div>
</div>


<?php include('footer.php'); ?>