<div class="acp-page-container">
	<!-- IMPORT admin/partials/settings/header.tpl -->

	<div class="row m-0">
		<div id="spy-container" class="col-12 col-md-8 px-0 mb-4" tabindex="0">
			<form role="form" class="support-forum-settings">
				<div class="mb-3">
					<label for="cid">Category</label>
					<select id="cid" name="cid" class="form-control">
						<option value="">None</option>
						<!-- BEGIN categories -->
						<option value="{categories.cid}">{categories.name}</option>
						<!-- END categories -->
					</select>
					<p class="form-text">
						Designating a forum as a support forum will restrict access to that category's topics to only admit admins and the original topic creator. Please ensure that you have also set the "# of Recent Replies" value to "0" in this category's settings.
					</p>
				</div>
				<div class="mb-3">
					<label for="ownOnly">
						<input type="checkbox" name="ownOnly" id="ownOnly">
						Non-admins see only their own topics listed
					</label>
					<p class="form-text">
						If checked, users without administrative privileges will see only their own topics listed in a support forum.
					</p>
				</div>
			</form>
		</div>

		<!-- IMPORT admin/partials/settings/toc.tpl -->
	</div>
</div>
