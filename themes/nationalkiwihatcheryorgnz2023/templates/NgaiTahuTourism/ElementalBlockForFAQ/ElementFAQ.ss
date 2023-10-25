<div class="block-container" style="display: block;">
    <div class="row">
        <div class="faq-container">
            <% if $ShowTitle %>
                <div class="row">
                    <h2>$Title</h2>
                </div>
            <% end_if %>

            <% loop $Categories %>
                <h2>$Name</h2>
                <div class="faq">
                    <% loop $FAQ %>
                        <div class="faq__wrapper">
                            <div class="faq__q js-faq">
                                $Question <i class="fas fa-chevron-down"></i>
                            </div>
                            <div class="faq__a">
                                $Answer
                            </div>
                        </div>
                    <% end_loop %>
                </div>
            <% end_loop %>
        </div>
    </div>
</div>

<%--
<script type="application/ld+json">
{
    "@context": "https://schema.org",
    "@type": "FAQPage",
    "mainEntity": [
        <% loop $Categories %>
    <% if not $First %>,<% end_if %>
    <% loop $FAQ.Filter('IncludeStructuredData', 1) %>
        <% if not $First && not $Last %>,<% end_if %>
                {
                    "@type": "Question",
                    "name": "$Question.ATT",
                    "acceptedAnswer": {
                        "@type": "Answer",
                        "text": "$Answer.ATT"
                    }
                }
            <% end_loop %>
        <% end_loop %>
    ]
}
</script>
--%>
