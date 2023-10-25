<%-- START Heading Block --%>
<% if $Headline %>

<div class="headingblock">
<div class="block-container">
		
		<div class="headingblock__container">
		<h2>$Headline</h2>
		<% if $Subheadline %><h3>$Subheadline</h3><% end_if %>
    	<% if $Introline %><p><strong>$Introline</strong></p><% end_if %>
		<div class="headingblock__spacer"></div>
    	<% if $LinkURL %><a href="$LinkURL" class="btn trans nopadding"><i class="fas fa-arrow-right"></i> $LinkLabel</a><% end_if %>
		</div>
    	

</div>
</div>
<% end_if %>
<%-- END Hero Block --%>