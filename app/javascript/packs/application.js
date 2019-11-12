import "bootstrap";
import { geoFindMe } from 'packs/location';
//import { scrollLastMessageIntoView } from 'packs/scroll';
import { fadeOutAlert } from 'packs/fadeOutAlert';
import { hideNavbarIcon } from 'packs/hideMatchingIconInNavbar';
import { add_recipe_toggle } from '../components/recipe_toggle';
import { callSweetAlert } from 'packs/sweetAlert';

const targetNavbar = document.getElementById('target-hide-icon-navbar');
if (targetNavbar){
  hideNavbarIcon();
}

// scrollLastMessageIntoView();
if(document.querySelector('.search_query')){
  geoFindMe();
}

if(document.getElementById('alert')){
  fadeOutAlert();
}



if (document.getElementById('target-for-recipe')){
  add_recipe_toggle();
}

if (document.getElementById('sweet-alert-target')){
  callSweetAlert();
}
