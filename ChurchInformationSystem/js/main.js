$(document).ready(function(){
	$('.table-minimal').DataTable({
		"searching": false,
		"responsive": true,
		"sDom": '<"top">rt<"bottom"fp><"clear">'
	});

	$('.table-detailed').DataTable({
		// "searching": false,
		// "responsive": true,
		// "sDom": '<"top">rt<"bottom"fp><"clear">'
	});
	$('.main-nav > li.dropdown').click(function(){
		var $this = $(this);
		$this.find('.nav-dropdown').slideToggle();
		$this.toggleClass("open")
	})
	$('.side-menu-toggle').click(function(){
		$('.page-wraper').toggleClass("full-view")
	});
	$(".datepicker").datetimepicker({
	    timepicker:false,
	    format:'d/m/Y',
	    closeOnDateSelect:true,
	    formatDate:'Y/m/d'
	  });
	$(".make-switch").bootstrapSwitch();
});
