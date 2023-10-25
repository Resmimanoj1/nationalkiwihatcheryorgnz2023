<% if $CarouselItems %>
    <div class="carousel-block block-container block-container--carousel">
        <div class="block-wrapper">
            <% if $Title && $ShowTitle %>
            <h2 class="carousel-block__title">$Title</h2>
        <% end_if %>

        <%-- SLIDER CONTROLS --%>
        <div class="carousel-block__control carousel-block__control--prev">
            <button class="carousel-block__control-prev <% if $SliderControlBackground == 'black' %>carousel-block__control-prev--black<% end_if %>" aria-label="Click to go to previous slide"></button>
        </div>

        <div class="carousel-block__control carousel-block__control--next">
            <button class="carousel-block__control-next <% if $SliderControlBackground == 'black' %>carousel-block__control-next--black<% end_if %>" aria-label="Click to go to next slide"></button>
        </div>

        <% if $CarouselItems.Count >= 3 %>
            <%-- ITEMS --%>
            <div class="carousel-block__slider">
                <ul class="carousel-block__slide-list">
                    <% loop $CarouselItems %>
                        <div>
                            <li class="carousel-block__item">
                                <%-- IMAGE --%>
                                <div class="carousel-block__image-wrapper">
                                    <img
                                        src="$Image.FocusFill(1650, 1100).URL"
                                        width="1650"
                                        height="1100"
                                        class="carousel-block__item-image"
                                        alt=""
                                    />
                                </div>

                                <%-- CONTENT --%>
                                <% if $Title %>
                                    <h3 class="carousel-block__item-title">$Title</h3>
                                <% end_if %>
                                <% if $Content %>
                                    $Content
                                <% end_if %>
                            </li>
                            <% if $CTALink %>
                                <div class="carousel-block__item-link-wrapper">
                                    <a href="$CTALink.LinkURL" class="carousel-block__item-link btn" $CTALink.TargetAttr>
                                        $CTALink.Title
                                    </a>
                                </div>
                            <% end_if %>
                        </div>
                    <% end_loop %>
                </ul>
            </div>
        <% end_if %>
        </div>
    </div>
<% end_if %>

<% require css('ngaitahutourism/silverstripe-elemental-blocks: client/dist/styles/bundle.css') %>
<% require javascript('ngaitahutourism/silverstripe-elemental-blocks: client/dist/js/bundle.js') %>
