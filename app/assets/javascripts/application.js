// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require cocoon
//= require_tree .


$(document).ready(function() {
	$(".rectangle").hover(function() {
		$(".rectangle").css("background-color", "white")
	})
})

$(document).ready(function() {
	$(".rectangle").mouseleave(function() {
		$(".rectangle").css("background-color", "#FF6600")
	})
})


$(document).ready(function() {
	$(".rectangle2").hover(function() {
		$(".rectangle2").css("background-color", "white")
	})
})

$(document).ready(function() {
	$(".rectangle2").mouseleave(function() {
		$(".rectangle2").css("background-color", "deeppink")
	})
})


$(document).ready(function() {
	$(".rectangle3").hover(function() {
		$(".rectangle3").css("background-color", "white")
	})
})

$(document).ready(function() {
	$(".rectangle3").mouseleave(function() {
		$(".rectangle3").css("background-color", "red")
	})
})


$(document).ready(function() {
	$(".rectangle4").hover(function() {
		$(".rectangle4").css("background-color", "white")
	})
})

$(document).ready(function() {
	$(".rectangle4").mouseleave(function() {
		$(".rectangle4").css("background-color", "#00E600")
	})
})


$(document).ready(function() {
	$(".rectangle5").hover(function() {
		$(".rectangle5").css("background-color", "white")
	})
})

$(document).ready(function() {
	$(".rectangle5").mouseleave(function() {
		$(".rectangle5").css("background-color", "#FFFF00")
	})
})

 // $(document).ready(function() {
 //            $("#but").click(function() {
 //                var n = $(this).attr("n");
 //                alert(n);
 //            });
 //        });



// $(document).ready(function() {
// 	$(".rectangle").submit(function () {
// 	 		$("Meeting.new.id").css("background-color", "purple")
// 	})
// })




// $(document).ready(function() {
//     $("#submit").submit(function() { 
//         // var val = $("input[type=submit][clicked=true]").val();
//         $("#submit").css("background-color", "purple")
//         $("#submit").css("padding", "100px")
//         $("#submit").animate("margin-left": "100px")
//         // DO WORK
//     });
// });

