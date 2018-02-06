var view = (function(){
  var $tr_btn;
  var $transModal;

  var fetchElements = function() {
    $tr_btn     = $("#tr_btn");
    $transModal      = $("#transModal");
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
}

    var init = function() {
      fetchElements();
      initializeEvents();//deposit
    };
    return {
      init: init

    };
  })();
