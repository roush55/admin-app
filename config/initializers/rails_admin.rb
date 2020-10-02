RailsAdmin.config do |config|
  config.authorize_with do

    #only admin can access the panel page 
    redirect_to main_app.root_path unless warden.user.admin==true

  #custom filter filed 
    config.model User do
      list do
        field :name do
        filterable false
      end
        field :email  do
          filterable false
        end
        field :password do
          filterable false
        end
        field :mobile_number do
          filterable false
        end
        field :mobile_number do
          filterable false
        end
        field :cv do
          filterable false
        end
        field :admin do
          filterable false
        end
        filters [:is_female]
        # Manually enable/disable per field
        field :is_female do
          filterable true
        end
      #custom list member
        items_per_page 5
        
      end
    end
  end


  




  ### Popular gems integration
  

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
