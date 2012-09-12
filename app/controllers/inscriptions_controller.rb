# Encoding: utf-8
class InscriptionsController < InheritedResources::Base
  actions :create

  def create
    create! do |format|
      format.html do
        unless @inscription.errors.empty? # failure
          index_page
          render "home/index"
        else
          flash[:success] = "Inscrição realizada com sucesso!"
          redirect_to root_path
        end
      end
    end
  end

  def export
    require 'csv'
    return unless current_admin_user
    inscription = Inscription.find(params[:id])
    csv = CSV.generate(:col_sep => ',') do |csv_string|
      csv_string << [
        "Nome",
        "Idade",
        "Email",
        "Telefone",
        "Cidade / Estado",
        "Endereço",
        "URL própria",
        "Experiências Anteriores",
        "Nome da empresa",
        "O que a empresa faz?",
        "Como nasceu a ideia que originou o negócio?",
        "Site",
        "Vídeo pitch",
        "Modelo de negócios"
      ]

      csv_string << [
        inscription.name,
        inscription.age,
        inscription.email,
        inscription.phone,
        inscription.city_and_state,
        inscription.address,
        inscription.url,
        inscription.experiences,
        inscription.company,
        inscription.what_do,
        inscription.ideia_business,
        inscription.site,
        inscription.video_url,
        inscription.business_model.url
      ]
    end
    send_data csv,
          :type => 'text/csv; charset=utf-8; header=present',
          :disposition => "attachment; filename=Inscrição de #{ inscription.name } - cod #{inscription.id}.csv"
  end
end
