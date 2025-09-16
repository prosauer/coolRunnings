class OrganisationsController< ApplicationController
  def new
    @organisation = Organisation.new
  end

  def create
    @organisation = Organisation.create! params.expect(organisation: [:name, :homepage, :image])
    redirect_to @organisation
  end

  def show
    @organisation = Organisation.find(params.expect(:id))
  end
end
