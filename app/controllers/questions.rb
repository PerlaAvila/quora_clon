get '/questions/new' do
  erb :questions
end

post '/question/new' do
  @question = params[:question]
  @user = User.find(session[:id])
  Question.create(question: @question, user_id: @user.id)
end