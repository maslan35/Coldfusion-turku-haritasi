function svgturkiyeharitasi() {
    const element = document.querySelector('#harita');
    const info = document.querySelector('.il-isim');
    var xmlhttp = new XMLHttpRequest();
  
    element.addEventListener(
      'mouseover',
      function (event) {
        if (event.target.tagName === 'path') {
          info.innerHTML = [
            '<div>',
            event.target.parentNode.getAttribute('data-iladi'),
            '</div>'
          ].join('');
        }
      }
    );
  
    element.addEventListener(
      'mousemove',
      function (event) {
        info.style.top = event.pageY + 25 + 'px';
        info.style.left = event.pageX + 'px';
      }
    );
  
    element.addEventListener(
      'mouseout',
      function (event) {
        info.innerHTML = '';
      }
    );
    $("#harita path").on("click", function(event) {
      if ($(this).parent().attr("id") == "guney-kibris") return false;
      var ilid = $(this).parent().attr("id");
      var iladi = $(this).parent().data("iladi");
      var plakakodu = $(this).parent().data("plakakodu");
      var alankodu = $(this).parent().data("alankodu");
      window.location = "http://127.0.0.1:8500/turku-haritasi/turku-liste.cfm?ilKod=" + plakakodu;
    });
  }
  

  