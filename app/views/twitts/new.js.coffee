twitt_container = $('#twitts_container')
twitt_container.prepend('<%= j render @twitt %>')
$('#twitt_text').val('')