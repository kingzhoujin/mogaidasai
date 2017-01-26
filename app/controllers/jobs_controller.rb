class JobsController < ApplicationController
before_action :validate_search_key, only: [:search]

def show
@job = Job.find(params[:id])
end

def index
@jobs = Job.all
end

def new
@job = Job.new
end

def create
@job = Job.new(job_params)
if @job.save
  redirect_to jobs_path
else
  render :new
end
end

def edit
@job = Job.find(params[:id])
end

def update
@job = Job.find(params[:id])
if @job.update(job_params)
  redirect_to jobs_path
else
  render :edit
end
end


def destroy
  @job = Job.find(params[:id])
  @job.destroy
redirect_to jobs_path
end

def search
    if @query_string.present?
      search_result = Job.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.paginate(:page => params[:page], :per_page => 20 )
    end
  end


  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
    @search_criteria = search_criteria(@query_string)
  end


  def search_criteria(query_string)
    { :title_cont => query_string }
  end

def job_params
  params.require(:job).permit(:title, :pescription)
end



end
