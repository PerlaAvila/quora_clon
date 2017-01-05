post '/answer' do 
  @question = Question.find(params[:question_id])
  @answer = params[:answer]
  @user = User.find(session[:id])
  @new_answer = Answer.new(answer_body: @answer, question_id: @question.id, user_id: @user.id)
  @answers = Answer.find_by(question_id: @question.id)
  

  if @new_answer.save
    @user.answers << @new_answer
    @question.answers << @new_answer
    redirect to "/question/#{@question.id}"
  else
    erb :errors
  end
end


