<?php
/**
 * @file
 * Enables modules and site configuration for a standard site installation.
 */

/**
 * Implements hook_form_FORM_ID_alter() for install_configure_form().
 *
 * Allows the profile to alter the site configuration form.
 */
function perfil_basico_form_install_configure_form_alter(&$form, $form_state) {

  // Pre-populate the site name with the server name
  $form['site_information']['site_name']['#default_value'] = $_SERVER['SERVER_NAME'];
  $form['site_information']['site_mail']['#default_value'] = '';
  
  // El usuario administrador será 'admin' y no se podrá modificar
  $form['admin_account']['account']['name']['#value'] = 'admin';
  
  // La zona horaria por defecto se establece como Europe/Madrid
  $form['server_settings']['date_default_timezone']['#value'] = 'Europe/Madrid';
  $form['server_settings']['site_default_country']['#default_value'] = 'ES';

}
