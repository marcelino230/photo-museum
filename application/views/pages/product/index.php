<div class="container">
	<div class="row mt-4 mb-3">
		<div class="col-11">
			<h2 style="color:white;">List News</h2>
		</div>
		<div class="col float-right">
			<a href="<?= base_url('product/add') ?>" class="btn btn-primary btn-sm">
				<i class="fas fa-plus"></i>
				News
			</a>
		</div>
	</div>

	<?php $this->load->view('layouts/_alert') ?>

	<div class="row mt-3">
		<div class="col">
			<table class="table table-light text-center">
				<thead style="background:#292E49; color:white;">
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Date</th>
						<th>Edition</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<?php $no = 1; foreach($product as $p) : ?>
						<tr>
							<td><?= $no++ ?></td>
							<td><?= $p['name'] ?></td>
							<td><?= $p['date']?></td>
							<td><?= ucfirst($p['edition']) ?></td>
							<td>
								<a href="<?= base_url('product/edit/' . $p['id']) ?>" class="btn btn-warning btn-sm">
									<i class="fas fa-edit text-light"></i>
								</a>
								<a href="<?= base_url('product/delete/' . $p['id']) ?>" class="btn btn-danger btn-sm">
									<i class="fas fa-trash"></i>
								</a>
							</td>
						</tr>
					<?php endforeach ?>
				</tbody>
			</table>
		</div>
	</div>
</div>
