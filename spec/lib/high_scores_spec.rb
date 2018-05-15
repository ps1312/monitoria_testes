require 'rails_helper'
require 'HighScore'

describe HighScore do
    regex_letras = /[a-zA-Z]/
    regex_numeros = /[0-9]/
    regex_email = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
     
    highScore_instance = HighScore.new
    
    it "is valid instance of HighScore?" do
        expect(highScore_instance).to be_an_instance_of(HighScore)
    end
    
    it "has an valid game(title)?" do
        expect(highScore_instance.game).to be_an_instance_of(String)
        expect(highScore_instance.game).not_to be_empty
        expect(highScore_instance.game).to match(regex_letras)
        
    end
    
    it "has an valid score?" do
        expect(highScore_instance.score).not_to be_empty
        expect(highScore_instance.score).to match(regex_numeros)
    end
    
    it "has an valid email?" do
        expect(highScore_instance.email).to match(regex_email)
    end
    
    it "has an valid date?" do
        datetime_array = highScore_instance.date.split(' ')
        data = datetime_array[0].split('-')
        ano = data[0].to_i
        mes = data[1].to_i
        dia = data[2].to_i
        if mes == 2 ;
            expect(dia).to be_between(1,28)
        end
        if mes ==1 or mes ==3 or mes==5 or mes==7 or mes==8 or mes==10 or mes==12;
            expect(dia).to be_between(1,31)
        end
        if mes ==4 or mes ==6 or mes==9 or mes==11;
            expect(dia).to be_between(1,30)
        end
        expect(mes).to be_between(1,12)
        expect(dia).to be_between(1,31)
        expect(ano).to be > 1900
    end
end