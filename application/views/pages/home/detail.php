<div class="container">

	<!-- Alert -->
	<?php $this->load->view('layouts/_alert') ?>
	<!-- End of alert -->

	<style>
		.halft{
			margin-left:30px;
			color:white;
		}

	</style>

	<!-- Hero -->
	<div class="row mt-5">		
		<div class="col">
			<img src="<?= base_url() ?>/images/news/<?= $new['image'] ?>" class="card-img-top" alt="<?= $new['name'] ?>" style="width: 330px">
		</div>
		<div class="col-5">
			<h2 class="font-weight-bold halft tp" style="color:white;"><?= $new['name'] ?></h2>
			<h4 class="font-weight-normal halft tp" style=" color:white;"><?=  ucfirst($new['edition']) ?> Edition</h4>
			<br>
			<a href="#description" class="text-info font-weight-bold halft">View more</a>
			<br> <br>
			<p class="font-weight-bold halft tp">EDITION</p>
			<h5><span class="badge badge-info badge-pill p-2 halft"><?=  ucfirst($new['edition']) ?></span></h5>
		</div>
		<div class="col">
			<div class="card">
				<div class="card-body text-center">
					<!-- <h2 class="text-center text-warning price mt-4 mb-4">Rp.<?= number_format($new['price'], 2, ', ', '.'); ?></h2> -->
					<form action="<?= base_url('cart/add') ?>" method="POST">
						<input type="hidden" name="product_id" value="<?= $new['id'] ?>">
						<!-- <button type="submit" class="btn btn-large btn-success btn-block badge-pill mb-4">ADD TO CART</button> -->
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End of hero -->

	<!-- Summary -->
	<div class="row mt-5 mb-2">
		<div class="col">
			<h3 style="color:white;" id="description">Description</h3>
		</div>
	</div>
	
	<div class="row">
		<div class="col p-5" style="background:#292E49; color:white;">
			<?= $new['description'] ?>
		</div>
	</div>
	<!-- End of summary -->

	<!-- System Address -->
	<div class="row mt-5 mb-2">
		<div class="col">
			<h3 style="color:white;">Address</h3>
		</div>
	</div>
	
	<div class="row">
		<div class="col p-5" style="background:#292E49; color:white;">
			<?= $new['address'] ?>
		</div>
	</div>
	<!-- End of System Address -->
</div>

<?php $this->load->view('layouts/_footer') ?>
