<div class="two-col login">
<div class="block-container">

<% if $Content %>
       
	   		<div class="two-col__col left">
				$Content 
				$Form
			</div>
			<div class="two-col__col right"><h1>Kia ora, have a great day!</h1></div>
			
        <% else %>
		
			<div class="two-col__col left">$Form</div>
			<div class="two-col__col right"><h1>Kia ora, have a great day!</h1></div>
		
		<% end_if %>

</div>    
</div>
