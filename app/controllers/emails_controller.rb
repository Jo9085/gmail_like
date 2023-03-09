class EmailsController < ApplicationController

    def index
        @emails = Email.all
    end

    def create
        @email = Email.new
        @email.object = Faker::Movie.title
        @email.body = Faker::Quote.famous_last_words
        @email.save

        respond_to do |format|
            format.html { redirect_to root_path }
            format.js { }
          end
    end

    def show
        @email = Email.find(params[:id])


    end

end
