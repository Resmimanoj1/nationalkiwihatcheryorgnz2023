<%-- START Double Column Block --%>

<div class="two-col">
<div class="block-container">

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
		<% if $Heading2 %><h1>$Heading2</h1><% end_if %>
		$Copy2
	</div>


</div>
</div>

<%-- END Double Column Block --%>
