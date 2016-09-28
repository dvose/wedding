$(function() {
	$("#rsvp_form").submit(function(){
		$('.spinner').toggle();
	});
  $("#rsvp_form").bind('ajax:success', function(e, data, status, xhr) {
  	$('.spinner').toggle();
    if(data['status'] == "error"){
    	var message = document.createElement('div');
    	message.className = 'alert alert-danger';
    	message.innerHTML = '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + data['message'];
  			
    	$('#result').append(message);
    }
    
     else if(data['status'] == "success"){
    	var message = document.createElement('div');
    	message.className = 'alert alert-success';
    	message.innerHTML = '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + data['message'];
  			
    	$('#result').append(message);
    }
    console.log(data);
    console.log(status);
  }).bind('ajax:error', function(xhr, status, error) {
  	$('.spinner').toggle();
  	essage.className = 'alert alert-danger';
    message.innerHTML = '<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>' + 'Error occured when saving your RSVP. Please try again later.';
    console.log(error);
    console.log(status);
  });
});