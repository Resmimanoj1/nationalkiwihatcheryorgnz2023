<%-- START Experience Detail Block --%>

<% if $Experience.Detail %>

	<div class="two-col">
		<div class="block-container">

			<% if $ShowTitle %>

				<div class="full">

					<h2>$Title</h2>

				</div>

			<% end_if %>


			<% with $Experience %>
				<div class="two-col__col left">
					$Detail
				</div>
			<% end_with %>


			<div class="two-col__col right">

				<% if $PricingExperience %>
					<h3>
						$PricingExperience
					</h3>
				<% end_if %>

				<% with $Experience %>
					<% if $Seasons %>
						<% loop $Seasons.Sort('StartDate') %>

							<table class="half">

								<% loop $Options %>
									<tr>
										<td>$Label</td>
										<td class="text-right">

												<% if $IsDiscounted %>
													<strike>$Amount.Whole</strike>
													<strong class="red"><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$DiscountedAmount.Whole %></strong>
												<% else %>
													<strong><% if $Amount = 0 %>FREE<% else %><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$Amount.Whole %><% end_if %></strong>
												<% end_if %>

										</td>
									</tr>
									
									<% if $Description %>
									<tr>
										<th colspan="2">$Description</th>
									</tr>
									<% end_if %>
								<% end_loop %>

							</table>
							$OptionsNote
						<% end_loop %>
					<% end_if %>

					<% if $Additional %>
						$Additional
					<% end_if %>

				<% end_with %>

			</div>


			<% if $PricingExperienceAuxiliary %>
				<% with $ExperienceAuxiliary %>
					<div class="two-col__col left">
						$Detail
					</div>
				<% end_with %>

				<div class="two-col__col right">

				<h3>
					$PricingExperienceAuxiliary
				</h3>

				<% with $ExperienceAuxiliary %>
					<% if $Seasons %>
						<% loop $Seasons.Sort('StartDate') %>

							<table class="half">

								<% loop $Options %>
									<tr>
										<td>$Label</td>
										<td class="text-right">

												<% if $IsDiscounted %>
													<strike>$Amount.Whole</strike>
													<strong class="red"><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$DiscountedAmount.Whole %></strong>
												<% else %>
													<strong><% if $Amount = 0 %>FREE<% else %><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$Amount.Whole %><% end_if %></strong>
												<% end_if %>

										</td>
									</tr>
									
									<% if $Description %>
									<tr>
										<th colspan="2">$Description</th>
									</tr>
									<% end_if %>
								<% end_loop %>

							</table>
							$OptionsNote
						<% end_loop %>
					<% end_if %>

					<% if $Additional %>
						$Additional
					<% end_if %>

				<% end_with %>

				</div>
			<% end_if %>

			<% if $BookingLink %>
				<div class="two-col__fullwidthbtn">
					<a href="$BookingLink" class="btn">$BookingLinkLabel</a>
				</div>
			<% end_if %>

		</div>
	</div>


<% else %>

	<div class="one-col">
		<div class="block-container">

			<div class="one-col__col">

				<% if $PricingExperience %>
					<h3>
						$PricingExperience
					</h3>
				<% end_if %>

				<% with $Experience %>
					<% if $Seasons %>
						<% loop $Seasons.Sort('StartDate') %>

							<table class="half">

								<% loop $Options %>
									<tr>
										<td>$Label</td>
										<td class="text-right">

												<% if $IsDiscounted %>
													<strike>$Amount.Whole</strike>
													<strong class="red"><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$DiscountedAmount.Whole %></strong>
												<% else %>
													<strong><% if $Amount = 0 %>FREE<% else %><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$Amount.Whole %><% end_if %></strong>
												<% end_if %>

										</td>
									</tr>
									
									<% if $Description %>
									<tr>
										<th colspan="2">$Description</th>
									</tr>
									<% end_if %>
								<% end_loop %>

							</table>
							$OptionsNote
						<% end_loop %>
					<% end_if %>

					<% if $Additional %>
						$Additional
					<% end_if %>

				<% end_with %>

				<% if $BookingLink %>
					<div class="two-col__fullwidthbtn extra-vert-space">
						<a href="$BookingLink" class="btn">$BookingLinkLabel</a>
					</div>
				<% end_if %>


				<% if $PricingExperienceAuxiliary %>
					<h3 class="extra-above-space">
						$PricingExperienceAuxiliary
					</h3>
				<% end_if %>

				<% with $ExperienceAuxiliary %>
					<% if $Seasons %>
						<% loop $Seasons.Sort('StartDate') %>

							<table class="half">

								<% loop $Options %>
									<tr>
										<td>$Label</td>
										<td class="text-right">

												<% if $IsDiscounted %>
													<strike>$Amount.Whole</strike>
													<strong class="red"><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$DiscountedAmount.Whole %></strong>
												<% else %>
													<strong><% if $Amount = 0 %>FREE<% else %><%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$Amount.Whole %><% end_if %></strong>
												<% end_if %>

										</td>
									</tr>
									
									<% if $Description %>
									<tr>
										<th colspan="2">$Description</th>
									</tr>
									<% end_if %>
								<% end_loop %>

							</table>
							$OptionsNote
						<% end_loop %>
					<% end_if %>

					<% if $Additional %>
						$Additional
					<% end_if %>

				<% end_with %>

				<% if $BookingLinkAuxiliary %>
					<div class="two-col__fullwidthbtn extra-vert-space">
						<a href="$BookingLinkAuxiliary" class="btn">$BookingLinkAuxiliaryLabel</a>
					</div>
				<% end_if %>

			</div>

		</div>
	</div>

<% end_if %>



<%-- END Experience Detail Block --%>
