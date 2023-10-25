<%-- START Hero Image Text Overlay Block --%>

<div class="hero-img-underlay"<% if $Image %> style="background-image: url('{$Image.ScaleMaxWidth(2200).URL}');"<% end_if %>>
  <div class="hero-text-overlay left">
    $TextContent
  </div>
</div>
