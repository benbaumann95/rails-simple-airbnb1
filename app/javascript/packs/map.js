import GMaps from 'gmaps/gmaps.js';
import { autocomplete } from '../components/autocomplete';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarker({
    lat: markers.lat,
    lng: markers.lng
  })

  if (markers.length === 0) {
    map.setZoom(2);
  }
  else {
    map.setCenter(markers.lat, markers.lng);
    map.setZoom(14);
  }
}

autocomplete();
