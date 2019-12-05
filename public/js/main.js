// var waypoint = new Waypoint({     element: document.getElementById('.see-more'),
   // handler: function() {
    //  notify('Basic waypoint triggered')

     //}
  // })

  const seeMoreBtns = document.querySelectorAll('.see-more'),
        popover     = document.querySelector('.popover');

        function buildPopover(beerdata, el){
            
            popover.querySelector('.density').textContent = `Density: ${beerdata.Density}`;
            popover.querySelector('.radius').textContent = `Radius: ${beerdata.Radius}`;
            popover.querySelector('.age').textContent = `Age: ${beerdata.Age}`;
            

            popover.classList.add('show-popover');
            el.appendChild(popover);
            }

        function fetchData(){
            let targetEl = this,
                url = `/svgData/${this.dataset.target}`;

            fetch(url)
            .then(res => res.json())
            .then(data => {
                console.log(data);

                //populate popover

                buildPopover(data, targetEl);
            })
            .catch((err) => console.log(err));
        }


        var controller = new ScrollMagic.Controller();
        var tl = new TimelineMax();
        tl.staggerFrom("#label-wrapper", 1.25, {
          scale: 0,
          cycle: {
            y: [-50, 50]
          },
          ease: Elastic.easeOut,
          stagger: {
            from: "center",
            amount: 0.25
          }
        });
        
        var scene = new ScrollMagic.Scene({
          triggerElement: "#beer1",
          triggerHook: 0
        })
          .addIndicators({
            colorTrigger: "white",
            colorStart: "white",
            colorEnd: "white",
            indent: 5
          })
          .setTween(tl)
          .addTo(controller);

    seeMoreBtns.forEach(btn => btn.addEventListener('click', fetchData));