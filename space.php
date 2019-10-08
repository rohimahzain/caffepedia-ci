<div class="row">
    <div id="googleMap" style="width:75%;height:600px;"></div>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKH2F9gZMQyATwBodQsEr-uM0fokVCvZw&callback=initMap"
        async defer></script>


<script>
    function addMarker(peta, InfoWindow,info){
        //membuat marker
        var infoWindow = new google.maps.InfoWindow();
        var marker = new google.maps.Marker({
            position: InfoWindow,
            map: peta
        });

        //bindInfoWindow(marker, peta, infoWindow, info);
    }

  function initMap() {
    
        //var propertiPeta = {lat: -7.797068, lng: 110.370529};
        var map = new google.maps.Map(document.getElementById('googleMap'), {
          zoom: 13,
          //center: propertiPeta
        });

        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            map.setCenter(new google.maps.LatLng(pos.lat, pos.lng));

            var iconBase =
            'https://developers.google.com/maps/documentation/javascript/examples/full/images/';

          var icons = {
            parking: {
              icon: iconBase + 'parking_lot_maps.png'
            },
            library: {
              icon: iconBase + 'library_maps.png'
            },
            info: {
              icon: iconBase + 'info-i_maps.png'
            }
          };



            var infoWindow = new google.maps.InfoWindow();
            var marker = new google.maps.Marker({
                position: pos,
                map: map,
                icon: icons['library'].icon
            });

            var lingkaran =new google.maps.Circle({
            strokeColor: '#7FFFD4',
            strokeOpacity: 0.8,
            strokeWeight: 2,
            fillColor: '#7FFFD4',
            fillOpacity: 0.35,
            map: map,
            center: pos,
            radius: 4000 //dalam meter
          });

          var rendererOptions = {
                map: map
        }


            // infoWindow.setPosition(pos);
            // infoWindow.setContent('Your Location.');
            // infoWindow.open(map);
            // map.setCenter(pos);
          
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
          // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }

        

        <?php foreach ($space as $sp) :

            $id_coworking_space = $sp->id_coworking_space;
            $nama_coworking = $sp->nama_coworking;
            $alamat         = $sp->alamat;
            $latitude       = $sp->latitude;
            $longitude      = $sp->longitude;   
          
        ?>
        
        //lokasi co-working
          var contentString<?php echo $id_coworking_space; ?> = '<div id="content">'+
              '<div id="siteNotice">'+
              '</div>'+
              '<h3 id="firstHeading" class="firstHeading">'+"<?php echo $nama_coworking; ?>"+'</h3>'+
              '<div id="bodyContent">'+
              '<p><b>'+"<?php echo $alamat; ?>"+'</b></p>'+
              '<h5><a href='+"<?php echo site_url('space/detail/'.$id_coworking_space)?>"+'>'+
              'Detail</a></h5>'+
              '</div>'+
              '</div>';

          var infowindow<?php echo $id_coworking_space; ?> = new google.maps.InfoWindow({
            content: contentString<?php echo $id_coworking_space; ?>
          });

          var marker<?php echo $id_coworking_space; ?> = new google.maps.Marker({
            position: {lat: <?php echo $latitude; ?>, lng: <?php echo $longitude; ?>},
            map: map,
            title: String(<?php echo $id_coworking_space; ?>)
          });

            marker<?php echo $id_coworking_space; ?>.addListener('click', function() {
              infowindow<?php echo $id_coworking_space; ?>.open(map, marker<?php echo $id_coworking_space; ?>);
            });

      <?php endforeach; ?>
        //end lokasi co-working
      }

</script>

<div class="card" style="width:25%;height:600px;">
  <div class="card-header">
    <form action="<?php echo base_url('space/index'); ?>" method="post" class="form-inline my-2 my-lg-0" style="margin:auto;width:500px">
      <div class="input-group mb-3">
        <input type="text" class="form-control" placeholder="Search Keyword..." name="keyword" autocomplete="off" autofocus>
          <div class="input-group-append">
              <input class="btn btn-primary" type="submit" name="submit" value="Search">
          </div>
      </div>
    </form>
  </div>
            
  <div class="card-body">
  <?php if(empty($coworking)): ?>
                <tr>
                    <td>
                        <div class="alert alert-danger" role="alert">
                         Data Not Found!!!
                        </div>
                    </td>
                </tr>
            <?php endif; ?>

    <?php foreach ($coworking as $cw): ?>
      <div class="media">
        <div class="media-body">                                  
            <h5 class="mt-0 mb-1"><?php echo $cw['nama_coworking'];?></h5>
            <?php echo $cw['alamat'];?> 
              <div>
                 <a href="<?php echo site_url('space/detail/'.$cw['id_coworking_space'])?>">Detail</a>                  
              </div>
        </div>
      </div>
      <hr>
    <?php endforeach; ?> 
<?php echo $this->pagination->create_links();?>  
  </div>                

  

  </div>
</div>
