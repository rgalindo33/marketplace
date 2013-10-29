module RatingsHelper
  # 
  # roundAndPrepareRating 
  # given a rating, create a string which will match to a css selector, 
  # such selector will then show the rating in a star form
  # see ratings.css
  # 
  # @param  rating  is expected to be a float
  # 
  # @return string, in the form of "digit_digit"
  # for example, a rating of 2.4 will return 2_5
  # 
  def roundAndPrepareRating rating
    ((rating*2).ceil.to_f / 2).to_s.tr(".","_")
  end
end
