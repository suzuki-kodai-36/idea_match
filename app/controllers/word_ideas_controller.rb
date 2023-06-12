class WordIdeasController < ApplicationController
  def index
    # すべてのWordIdeaを取得して、@word_ideasに代入
    @word_ideas = WordIdea.all
    # Wordモデルからランダムなレコードidを取得し、セッション変数に格納する
    # sampleメソッドは、配列からランダムに要素を取得するメソッド
    session[:random_word] = Word.sample.id
    # Wordモデルからランダムなレコードidを取得し、@wordに格納する
    @word = Word.find(session[:random_word])
  end

  def create
    @word = Word.find(session[:random_word])
    # WordIdeaモデルのwordカラムに@wordを、ideaカラムに最新のIdeaを代入する
    @word_idea = WordIdea.create(word: @word, idea: Idea.last)
    if @word_idea.save
      redirect_to word_ideas_path
    end
  end
end
