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
end
