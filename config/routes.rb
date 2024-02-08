
Rails.application.routes.draw do
  get('/', controller: "calculator", action: "square_new")
   
  get('/square/new', controller: "calculator", action: "square_new")
  get('/square/results', controller: "calculator", action: "square_results")
  
  get('/square_root/new', controller: "calculator", action: "square_root_new")
  get('/square_root/results', controller: "calculator", action: "square_root_results")
  
  get('/random/new', controller: "calculator", action: "random_new")
  get('/random/results', controller: "calculator", action: "random_results")
  
  get('/payment/new', controller: "calculator", action: "payment_new")
  get('/payment/results', controller: "calculator", action: "payment_results")
  
end


=begin
Rails.application.routes.draw do
 

  get('/', {controller: => "calculator", action: => "application"})
   
  get('/square/new', {controller: => "calculator", action: =>"square_new"})
  post('/square/results', {controller: => "calculator", action: => "square_results"})
  
  get('/square_root/new', {controller: => "calculator", action: => "square_root_new"})
  post('/square_root/results', {controller: => "calculator", action: => "square_root_results"})
  
  get('/random/new', {controller: => "calculator", action: => "random_new"})
  post('/random/results', {controller: => "calculator", action: => "random_results"})
  
  get('/payment/new', {controller: => "calculator", action: => "payment_new"})
  post('/payment/results', {controller: =>  "calculator", action: => "payment_results"})
end
=end
