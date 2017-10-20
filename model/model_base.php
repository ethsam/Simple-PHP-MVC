<?php

//require('../config.php'); //les accès à la BDD sont dans config.php


/* ---   DEB Function getBdd - Se connecte à la BDD   --- */

// Instancie et renvoie l'objet PDO associé
function getBdd() {
    $bdd = new PDO('mysql:host='.$host.';dbname='.$bdd.';charset=utf8', $userbdd, $passbdd, array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
    return $bdd1;
}

/* ---   FIN Function getBdd - Se connecte à la BDD   --- */



/* ---   DEB Function Get_List - Retourne la liste des véhicules   --- */

//Liste véhicules sans chauffeurs
function get_list_vehicule_sans_chauffeur($int_depart, $int_fin) {
  $bdd = getBdd();
  $list_vehicules_sans_chauffeur = $bdd->query('');
  return $list_vehicules_sans_chauffeur;
}

//Liste véhicules avec chauffeur
function get_list_vehicule_avec_chauffeur($int_depart, $int_fin) {
  $bdd = getBdd();
  $list_vehicules_avec_chauffeur = $bdd->query('SELECT * FROM vehicules_avec_chauffeur WHERE chauffeur = 1 LIMIT 30');
  var_dump($list_vehicules_avec_chauffeur);
  return $list_vehicules_avec_chauffeur;
}

/* ---   FIN Function Get_List - Retourne la liste des véhicules   --- */



/* ---   DEB Function Get_Vehicule - Retourne la fiche d'un véhicule   --- */

//Fiche du véhicule sans chauffeur
// /!\ - $id_vehicule_sans_chauffeur = id du véhicule
// /!\ -  $int_depart = INT <- chiffre/nombre de début de la Liste - example : 1 LIMIT 30
// /!\ -  $int_fin = INT <- chiffre/nombre de fin de la liste - example : 1 LIMIT 30
function Get_Vehicule_sans_chauffeur($id_vehicule_sans_chauffeur, $int_depart, $int_fin) {
  $bdd = getBdd();
  $vehicule_sans_chauffeur = $bdd->prepare('SELECT * FROM vehicules_avec_chauffeur WHERE chauffeur = 1 LIMIT 30');
  $vehicule_sans_chauffeur->execute(array($id_vehicule_sans_chauffeur));
  if ($vehicule_sans_chauffeur->rowCount() > 0) {
    return $vehicule_sans_chauffeur->fetch();
      } else {
        throw new Exception("Error Get_Vehicule_sans_chauffeur l'id n°'.$id_vehicule_sans_chauffeur.' n'existe pas", 1);
      }
    }
/* ---   FIN Function Get_Vehicule - Retourne la fiche d'un véhicule   --- */

?>
