<!-- Carousel -->
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner">
		<?php $no = 0;?>
		<?php foreach($banners as $b) : ?>
			<?php $no++;  ?>
			<div class="carousel-item <?php if($no <= 1) { echo "active"; } ?>">
				<img src="<?= base_url() ?>images/banner/<?= $b['image'] ?>" class="d-block w-100" style="opacity:0.5">
				<div class="carousel-caption d-none d-md-block  <?= $b['text_color'] ?>">
					<h3 class="text-uppercase"><?= $b['head'] ?></h3>
					<h5 class="mt-3"> <?= $b['content'] ?></h5>
					<a href="<?= base_url('home/detail/' . $b['product_id']) ?>" class="btn btn-outline-info badge-pill mt-3" style="width:200px; background: #17a2b8; color:white">CEK SELENGKAPNYA</a>
				</div>
			</div>
		<?php endforeach ?> 
	</div>
	<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<!-- End of Carousel -->

<!-- List Item -->
<div class="container">
	<div class="row mt-5">
		<div class="col">
			<h2 class="head" style="color:white;">Latest releases</h2>
			<hr>
		</div>
	</div>

	<div class="row mb-5">
		<?php foreach($news as $new) : ?>
			<div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mt-4">
				<div class="card" style="background: #292E49">
					<img src="<?= base_url() ?>/images/news/<?= $new['image'] ?>" class="card-img-top" alt="<?= $new['name'] ?>">
					<div class="card-body">
						<h6 class="card-title font-weight-bold" style="color:white !important;"><?= $new['name'] ?></h6>
						<h6 class="text-muted" style="color:#BBD2C5 !important;"><?= ucfirst($new['edition']) ?> Edition</h6>
						<h3 class="text-warning mt-4" style="color:navajowhite !important;"><?= $new['date']; ?></h3>
						<a href="<?= base_url('home/detail/' . $new['id']) ?>" class="btn btn-outline-info btn-sm btn-block mt-3" style="width:200px; background: #17a2b8; color:white">See More</a>
					</div>
				</div>
			</div>
		<?php endforeach; ?>
	</div>
</div>
<!-- End of List Item -->

<!-- Footer -->
<?php $this->load->view('layouts/_footer') ?>
<!-- End of footer -->
