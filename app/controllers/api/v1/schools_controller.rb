class Api::V1::SchoolsController < Api::ApiController

  api :GET, '/v1/schools', 'All schools'
  def index
    @schools = School.filter(params)
  end

  api :POST, '/v1/schools', 'Create school'
  def create
    @school = School.create(school_params)

    if @school.errors.any?
      render json: {success: false,errors: @school.errors.messages}.to_json, status: 422
    else
      render template: '/api/v1/schools/show' , status: 201
    end
  end

  api :PUT, '/v1/schools', 'Update school'
  def update
    @school = School.find(params[:id])
    @school.update_attributes(school_params)
    if @school.errors.any?
      render json: {success: false,errors: @school.errors.messages}.to_json, status: 422
    else
      render template: '/api/v1/schools/show' , status: 200
    end
  end

  api :GET, '/v1/schools/:id', 'School by id'
  param :id, :number, :required => true
  def show
    @school = School.find(params[:id])
    render json: {success: true, school: @school}
  end

  api :DELETE, '/v1/schools', 'Delete school'
  param :id, :number, :required => true
  def destroy
    @school = School.find(params[:id])
    @school.destroy
    if @school.errors.any?
      render json: {success: false,errors: @school.errors.messages}.to_json, status: 422
    else
      render template: '/api/v1/schools/show' , status: 200
    end
  end

  private
  def school_params
    params.require(:school).permit(
      :name,
      :phone,
      :email,
      :address,
      :city,
      :zip_code,
      :openings,
      :nb_student,
      :status,
      :latitude,
      :longitude,
    )
  end
end
