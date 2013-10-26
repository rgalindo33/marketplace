module AppsHelper

  def roundAndPrepareRating rating
    ((rating*2).ceil.to_f / 2).to_s.tr(".","_")
  end

end
