ActiveAdmin.register User do
  permit_params :client_id, :name, :surname, :birthdate,
    chance_attributes: [:id, :user_id, :kredit_kes, :kredit_refinansiranje, :kredit_stambeni, :kredit_auto, :kredit_evergrin, :kredit_fluo, :kredit_potrosacki]

end
