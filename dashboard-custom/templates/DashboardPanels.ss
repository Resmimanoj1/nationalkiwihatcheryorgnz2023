$showPanel(Plastyk\Dashboard\Panels\UpdatePanel)


<div class="container-fluid">
	<div class="row">
		<div class="col-12">
			$showPanel(Plastyk\Dashboard\Panels\SearchPanel)

			<h1>$SiteConfig.Title</h1>
		</div>
	</div>

	<div class="row">
		<div class="col-12">
			$showPanel(Plastyk\Dashboard\Panels\QuickLinksPanel)
		</div>
	</div>

    <div class="row">
		<div class="col-12">
			$showPanel(EditingGuidePanel)
		</div>
	</div>

	<% if $canViewPanel(Plastyk\Dashboard\Panels\RecentlyEditedPagesPanel) || $canViewPanel(Plastyk\Dashboard\Panels\UsefulLinksPanel) %>
	<div class="row">
		<div class="col-xl-4">
			$showPanel(Plastyk\Dashboard\Panels\RecentlyEditedPagesPanel)
		</div>
		<div class="col-xl-4">
			$showPanel(UsefulLinksPanel)
		</div>
	</div>
	<% end_if %>

</div>
