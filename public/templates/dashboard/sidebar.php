
<div id="sidebar-wrapper">
	<div class="sidebar-container">
		<div class="sidebar-body">
			<div class="sidebar-header">
				<div class="d-flex align-items-center">
					<i class="bi bi-app-indicator fs-2 text-white"></i>
					<h5 class="fs-5 ms-3 text-white">Dashboard</h5>
				</div>
				<button class="btn text-white" data-bs-toggle="tooltip" onclick="toogleSidebar()" data-bs-placement="right" title="Close Sidebar">
					<i class="bi bi-arrow-left-square-fill"></i>
				</button>
			</div>
			<div class="bio mx-auto px-3 pt-4 pb-2 lh-1">
				<p class="fs-6 text-yellow">Account Level</p>
				<p class="text-yellow-200">Admin</p>
			</div>

			<div class="sidebar-list">
				<div class="sidebar-menu">
					<?php require_once $this->fMenu ?>
				</div>
			</div>
		</div>
		<div class="sidebar-footer">
			<a class="btn py-3 bg-red text-white" href="<?= $this->gLink ?>LogOut" role="button"><i class="bi bi-power"></i> Logout</a>
		</div>
	</div>
</div><!-- sidebar-wrapper -->
			<!-- page-content-wrapper -->