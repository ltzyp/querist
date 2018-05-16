class QueristController < ActionController::API
  
  def home
   res = Rack::Response.new
   res.write "Home controller\n"
   res.write "routed!"
   res.finish 
    render plain: 'Home controller plain'
#  render_to_body :msg => 'Home controller body '
#   return  [ 200, {"Content-Type" => "text/plain"}, [' Home controller'] ]
  end 
end
