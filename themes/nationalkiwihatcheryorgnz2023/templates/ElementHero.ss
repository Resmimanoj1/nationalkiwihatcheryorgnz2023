<%-- START Hero Block --%>

<div class="hero">

	<div class="hero__image">

		<img class="lazy hero-block__image" alt="$Image.Title.ATT"
                data-src="$Image.FillMax(1800,800).URL"
             	data-srcset="$Image.FillMax(1800,800).URL 1800w,
                     $Image.FillMax(1200,800).URL 1200w,
                     $Image.FillMax(992,400).URL 992w,
                     $Image.FillMax(768,400).URL 768w"
              	sizes="(min-width: 1200px) 1800px,
                     (min-width: 992px) 1200px,
                     (min-width: 768px) 992px,
                     (min-width: 280px) 768px" />

	</div>


	<div class="block-container">

		<div class="hero__title">
			<h1>$Headline</h1>
			<% if $Subheadline %><h3>$Subheadline</h3><% end_if %>
			<% if $Introline %><p><strong>$Introline</strong></p><% end_if %>
			<% if $LinkURL %>
            	<a href="$LinkURL" class="btn">$LinkLabel</a>
			<% end_if %>
		</div>
	</div>

</div>

<%-- END Hero Block --%>
