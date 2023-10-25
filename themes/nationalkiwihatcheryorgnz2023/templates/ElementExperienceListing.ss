<%-- START Product Listing Block --%>
<div class="two-info-blocks">
	<div class="block-container">

	<% if $ShowTitle %>

					<h2>$Title</h2>

	<% end_if %>

	<% loop $Experiences %>

		<div class="two-info-blocks__col <% if $Emphasised %>tactical<% end_if %>">

			<a href="$DetailPage.Link" class="two-info-blocks__image">
				<img class="lazy" alt="$Image.Title.ATT"
					data-src="$Image.FillMax(1650,1000).URL"
					data-srcset="$Image.FillMax(1650,1000).URL 1800w,
							$Image.FillMax(1200,800).URL 1200w,
							$Image.FillMax(992,600).URL 992w,
							$Image.FillMax(768,400).URL 768w"
					sizes="(min-width: 1650px) 1800px,
							(min-width: 992px) 1200px,
							(min-width: 768px) 992px,
							(min-width: 280px) 768px">

				<div class="exp-list-center-text">
					<span class="two-info-blocks__text">
					<h1>$Name</h1>
					</span>
				</div>
			</a>

			<span class="two-info-blocks__text">
				<p>$Description</p>

				<%-- Comment out pricing so that it can easily be put back in if needed
				<p><strong>Pricing:</strong>
					<% if $Seasons %>
					<% loop $Seasons.Sort('StartDate') %>

						<table>

							<% loop $Options %>
								<tr>
								<td>$Label</td>
								<td>

									<% if $IsDiscounted %>
										<strike>$Amount.Whole</strike>
										<strong><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$DiscountedAmount.Whole %></strong>
									<% else %>
										<strong><% if $Amount = 0 %>FREE<% else %><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$Amount.Whole %><% end_if %></strong>
									<% end_if %>

								</td>
								</tr>
							<% end_loop %>

						</table>

					<% end_loop %>
					<% end_if %>
					--%>

			</span>

			<span class="two-info-blocks__btns">
				<a href="$DetailPage.Link" class="btn btn-secondary">Find out more</a>
				<a href="$BookingLink" class="btn">Book Now</a>
			</span>
		</div>

		<% end_loop %>

 </div>
 </div>
<%-- END Product Listing Block --%>
