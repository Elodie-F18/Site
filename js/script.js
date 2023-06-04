'use strict'; // Mode strict du JavaScript




/*************************************************************************************************/
/* ****************************************** DONNEES ****************************************** */
/*************************************************************************************************/

//SCROLL

//Ecoute vérifiant le bon chargement de la page
document.addEventListener('DOMContentLoaded', function () {
    //Détection du défilement de la page
    window.onscroll = function () {
        //si défilement ciblage de l'élement "retour". Le bouton permettant de revenir en haut de la page n'apparait que si il y a plus de 100pixels de défilés.
        document.getElementById("retour").className = (window.pageYOffset > 100) ? "visible" : "invisible";
    };
});