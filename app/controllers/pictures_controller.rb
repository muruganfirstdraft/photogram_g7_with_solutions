class PicturesController < ApplicationController
  
  def new_form
    @photo = Photo.new
    render("pic_templates/new_form.html.erb")
  end

  def create_row
    @photo = Photo.new(photo_params)
    @photo.save
    redirect_to action: 'show', id: @photo.id
  end

  def index
    @photos = Photo.all
    render("pic_templates/index.html.erb")
  end

  def show
    @photo = Photo.find(params[:id])
    render("pic_templates/show.html.erb")
  end

  def edit_form
    @photo = Photo.find(params[:id])
    render("pic_templates/edit_form.html.erb")
  end

  def update_row
    @photo = Photo.find(params[:id])
    @photo.update_attributes(photo_params)
    redirect_to action: 'show', id: @photo.id
  end

  def destroy_row
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path
  end

  private

  def photo_params
    params.require(:photo).permit(:source, :caption)
  end
end
