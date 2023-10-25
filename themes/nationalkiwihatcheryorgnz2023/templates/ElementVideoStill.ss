<div class="video-still__main">

	<div class="video-still__center-text">
    <img class="video-still__logo" src="$VideoLogo.URL" alt="$VideoLogo.Title.ATT">
		<h1 class="video-still__title-text">
      $VideoTitle
    </h1>
    <div class="video-still__body-text">
      $VideoBodyText
    </div>
	</div>

  <div class="video-still__video-container">
    <% if $VideoID %>
      <div class="video__background">
        <div class="video__foreground">
    			<iframe width="560" height="315" class="lazy" data-src="https://www.youtube.com/embed/$VideoID?autoplay=1&mute=1&controls=0&loop=1&playlist=$VideoID&rel=0" frameborder="0" allowfullscreen></iframe>
        </div>
      </div>
    <% end_if %>
    <% if $VideoImage %>
      <div class="video-still__image" style="background-image:url({$VideoImage.ScaleWidth(2200).URL});"></div>
    <% end_if %>
  </div>

</div>
