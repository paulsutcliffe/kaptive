# encoding: utf-8

class BottleUploader < CarrierWave::Uploader::Base

  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  include CarrierWave::MiniMagick

  # Include the Sprockets helpers for Rails 3.1+ asset pipeline compatibility:
  # include Sprockets::Helpers::RailsHelper
  # include Sprockets::Helpers::IsolatedHelper

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "system/uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :regular do
    process :resize_to_limit => [200, 665]
  end

  version :little do
    process :resize_to_limit => [55, 183]
  end

  version :thumb do
    # process crop: '50x50+0+0'
    process resize_and_crop: 100
  end

  version :blurred do
    process blur: '0.0x5.0'
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  private

  def enderezar(w, h)
    manipulate! do |image|
      if image[:width] > image[:height]
        process resize_to_fill => [w, h]
      else
        process resize_to_fill => [h, w]
      end
    end
  end

  # Simplest way
  def crop(geometry)
    manipulate! do |img|
      img.crop(geometry)
      img
    end
  end

  # Resize and crop square from Center
  def resize_and_crop(size)
    manipulate! do |image|
      cutheight = ((image[:height])/3).round
      cutwidth = ((image[:width])/2).round
      cropwidth = cutwidth*2
      image.crop("#{cropwidth}x#{cropwidth}+#{cutwidth}+#{cutheight}")
      image.resize("#{size}x#{size}")
      image.background '#FFFFFF'
      image.alpha 'remove'
      image.format 'jpg'
      image
    end
  end

  def blur(blur_factor)
    manipulate! do |image|
      image.gaussian_blur(blur_factor)
      image
    end
  end

end
