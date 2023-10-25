<%-- START Product Detail Block --%>

<div class="half"><div class="product">
<% with $Experience %>


	<div class="product titleblock">

		<h1>$Name</h1>
		<h3>$Highlight</h3>

		<p><strong>$Description</strong></p>

	</div>
	
	<% if $Seasons %>
	<% loop $Seasons.Sort('Label,StartDate') %>
	<div class="tablecontainer">
	<a href="#" class="tablecontainer__tablelink">
		<table class="three">
			<tr>
					<% loop $Options %>
						<% if $Amount > 0 %>
							 <th>$Label <% if $Description %><span class="stacked__tool tooltip-bottom" data-tooltip="$Description"><i class="fas fa-info-circle"></i></span><% end_if%></th>							
						<% end_if %>
					<% end_loop %>
				
			</tr>
			<tr>
			
				<% loop $Options %>
					<% if $Amount > 0 %>
						
							<td>
								<% if $IsDiscounted %>
									<strike>$Amount.Whole</strike>
									<%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$DiscountedAmount.Whole %>
								<% else %>
									<%t Experiences.ValShortPriceBlock "{Hint} {Price}" Hint=$Up.OptionsHint Price=$Amount.Whole %>
								<% end_if %>
							</td>
						
						<% end_if %>
					<% end_loop %>
				
			</tr>
		</table>
	</a>
	<span class="tablecontainer__tableshadow"></span>
	</div>
	<% end_loop %>
	<% end_if %>
	
	$Detail
	
	<% if $Seasons %>
	<% loop $Seasons.Sort('Label,StartDate') %>
		<% if $BookingLink %>
			<div class="buttonrow">
				<a href="$BookingLink" class="btn js-getlink">Book Now</a>
			</div>	
        <% end_if %>
	<% end_loop %>
	<% end_if %>    

<% end_with %>
</div></div>



<%-- END Product Detail Block --%>
