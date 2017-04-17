$(document).ready(function(){
  $('#donate-field').on('keyup', function(){
    var url = "https://venmo.com/?txn=pay&audience=public&recipients=SunnysforeverRedhook&amount=" + $('#donate-field').val() + "&note=Sunny's%20Forever!%20Thank%20You%20For%20Your%20Support!"
    $('#donate-button').attr('href', url)
  })

  $('#donate-button').on('click', function(e){
    var amount = $('#donate-field').val().split('$')[1]
    var data = {donate: {amount: amount}}
    $.ajax({
      data: data,
      method: 'put',
      url: '/moneys/1'
    })
  })
})
