<%-- START Image Text Block --%>

	<% if $Image %>

		<div class="two-col">

			<% if $LeftAlign %>
				<div class="block-container">

					<% if $ShowTitle %>
						<div class="full">
							<h1>$Title</h1>
						</div>
					<% end_if %>

					<div class="two-col__col left">
						<img class="image-text-block__image" src="$Image.URL" alt="$Image.Title.ATT">
					</div>

					<div class="two-col__col right">
						<% if $Heading %><h1>$Heading</h1><% end_if %>
							$Copy
					</div>

				</div>

			<% else %>

				<div class="block-container image-text-reverse">

					<% if $ShowTitle %>
						<div class="full">
							<h1>$Title</h1>
						</div>
					<% end_if %>

					<div class="two-col__col left">
						<% if $Heading %><h1>$Heading</h1><% end_if %>
							$Copy
					</div>

					<div class="two-col__col right">
						<img class="image-text-block__image" src="$Image.URL" alt="$Image.Title.ATT">
					</div>

				</div>

			<% end_if %>

		</div>


	<% else %>

		<div class="one-col">
		<div class="block-container">

			<div class="one-col__col">

				<% if $Heading %><h1>$Heading</h1><% end_if %>
				$Copy

			</div>

		</div>
		</div>


	<% end_if %>



<%-- END Image Text Block --%>
