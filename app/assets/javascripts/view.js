var view = (function(){
  var $tr_btn;
  var $transModal;
  var $trb;
  var $tmodal;


  var fetchElements = function() {
    $tr_btn     = $("#tr_btn");
    $transModal      = $("#transModal");
    $trb     = $("#trb");
    $tmodal      = $("#tmodal");
  };
  $(function(){
    $('#changetabbutton').click(function(e){
    	e.preventDefault();
        $('#mytabs a[href="#second"]').tab('show');
    })

});
  var initializeEvents = function() {
    $tr_btn.on("click", function() {
      $transModal.modal("show");
    });
};

var initializeEventsTwo = function() {
  $trb.on("click", function() {
    $tmodal.modal("show");
  });
};
    var init = function() {
      fetchElements();
      initializeEvents();//deposit
      initializeEventsTwo();//deposit

    };
    return {
      init: init

    };
  })();
