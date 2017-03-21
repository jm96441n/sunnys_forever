$(document).ready(function(){
  $('#donate-field').on('keyup', function(){
    var url = "https://venmo.com/?txn=pay&audience=friends&recipients=@John-Maguire-15&amount=" + $('#donate-field').val() + "&note=Sunny's%20Forever!%20Thank%20You%20For%20Your%20Support!"
    $('#donate-button').attr('href', url)
  })

  $('#donate-button').on('click', function(){
    // var amount =
  })
})
