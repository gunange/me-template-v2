$(document).ready(function() {
	$('#DataTable').DataTable({
		"pagingType": "simple"
	});
} );

function injectJsDashboardPrimary(){
	$(".sel-all").select2({
		placeholder: 'Silahkan Pilih',
		width: '100%'
	});
	$(document).ready(function() {
		$('#DataTable').DataTable({
			"pagingType": "simple",
			"retrieve": true,
		});
	} );

}


$(window).on('load', function(e) {
    $(".loader__figure").fadeOut(); 
    $(".loader").delay(100).fadeOut("slow"); 
    document.querySelector(".loader").className += " hidden";
})