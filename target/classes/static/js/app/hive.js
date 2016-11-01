$(document).ready(function() {
	$('.datepicker').datepicker();

	$('#color').colorpicker({
		customClass : 'colorpicker-2x',
		sliders : {
			saturation : {
				maxLeft : 200,
				maxTop : 200
			},
			hue : {
				maxTop : 200
			},
			alpha : {
				maxTop : 200
			}
		}
	});
});