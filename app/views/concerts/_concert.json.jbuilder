json.extract! concert, :id, :title, :subtitle, :about, :comp1name, :comp1bio, :comp1pic, :comp2name, :comp2bio, :comp2pic, :comp3name, :comp3bio, :comp3pic, :comp4name, :comp4bio, :comp4pic, :created_at, :updated_at
json.url concert_url(concert, format: :json)
