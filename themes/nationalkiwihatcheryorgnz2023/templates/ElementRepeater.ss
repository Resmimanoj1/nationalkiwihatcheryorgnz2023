<%-- START Repeater Block --%>
<div class="repeater-block">

	<% if $ShowTitle %>
		<div class="container">
			<div class="row">
				<div class="col-md-12 repeater-title">
					<h2>$Title</h2>
				</div>
			</div>
		</div>
	<% end_if %>


			<% if $TileStyle == 'image-slider' %>


			<div class="image-slider">

				<div class="image-slider__container js-slider">

				<% loop $Tiles %>

					<div class="image-slider__slide">

						<div class="image-slider__image">
							<img alt="$Image.Title.ATT" src="$Image.URL" />
							<div class="image-slider__shade"></div>
						</div>

						<div class="center-text">
							<span class="image-slider__lineone"><h2>$Heading</h2></span>
							<span class="image-slider__linetwo">$Copy</span>
							<span class="image-slider__buttonrow">
							  <a href="$LinkURL" class="btn trans white"><i class="fas fa-arrow-right"></i> $LinkLabel</a>
							  <a href="$ctaURL" class="btn">$ctaLabel</a>
							</span>
						</div>

					</div>

				<% end_loop %>

				</div>

			</div>

			<% else_if $TileStyle == 'three-col' %>

			<div class="three-info-blocks">
			<div class="block-container">

				<% loop $Tiles %>

					<a href="$LinkURL" class="three-info-blocks__col">

						<span class="three-info-blocks__image">
							<img class="lazy" alt="$Image.Title.ATT" data-src="$Image.URL" />
						</span>

						<span class="three-info-blocks__text">
							<h2>$Heading</h2>
							$Copy
						</span>

						<span class="btn">$LinkLabel</span>
					</a>

				<% end_loop %>

			</div>
			</div>

			<% else_if $TileStyle == 'three-col-grey' %>

			<div class="three-info-blocks grey">
			<div class="block-container">

				<% loop $Tiles %>

					<a href="$LinkURL" class="three-info-blocks__col">

						<span class="three-info-blocks__image">
							<img class="lazy" alt="$Image.Title.ATT" data-src="$Image.URL" />
						</span>

						<span class="three-info-blocks__text">
							<h2>$Heading</h2>
							$Copy
						</span>

						<span class="btn">$LinkLabel</span>
					</a>

				<% end_loop %>

			</div>
			</div>

			<% else_if $TileStyle == 'callout' %>

				<% loop $Tiles %>
				<div class="callout">

					<div class="center-text">
						<h2>$Heading</h2>
						$Copy
						<p class="btnrow">
							<% if $LinkURL %><a href="$LinkURL" class="btn trans white">$LinkLabel</a><% end_if %>
							<% if $ctaURL %><a href="$ctaURL" class="btn">$ctaLabel</a><% end_if %>
						</p>
					</div>

					<div class="callout__image">
						<img class="lazy" alt="$Image.Title.ATT" data-src="$Image.URL" />
					</div>

				</div>
				<% end_loop %>

			<% else_if $TileStyle == 'two-col' %>

			<div class="two-info-blocks">
			<div class="block-container">

				<% loop $Tiles %>

					<div class="two-info-blocks__col">

						<a href="$LinkURL" class="two-info-blocks__image">
							<img class="lazy" alt="$Image.Title.ATT" data-src="$Image.URL" />
						</a>

						<span class="two-info-blocks__text">
							<a href="#"><h2>$Heading</h2></a>
							$Copy
						</span>

						<span class="two-info-blocks__btns">
							<a href="$LinkURL" class="btn trans white">$LinkLabel</a> <a href="$ctaURL" class="btn">$ctaLabel</a>
						</span>

					</div>

				<% end_loop %>

			</div>
			</div>

			<% else_if $TileStyle == 'fullwidth-image-stack' %>

			<div class="imagestack">

				<% loop $Tiles %>
				<div class="imagestack__image">
					<img class="lazy" alt="$Image.Title.ATT" data-src="$Image.URL" />
				</div>
				<% end_loop %>

			</div>

			<% end_if %>


</div>
<%-- END Repeater Block --%>
