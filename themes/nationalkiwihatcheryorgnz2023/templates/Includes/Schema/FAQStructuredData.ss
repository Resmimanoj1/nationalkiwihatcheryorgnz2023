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
