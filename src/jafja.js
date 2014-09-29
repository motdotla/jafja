(function(exports){
  var Jafja = function() {
    return this;
  };

  MicroEvent.mixin(Jafja);
  exports.Jafja = Jafja;
}(this));

var jafja = new Jafja();
