require 'sinatra'
require 'httparty'
require 'nokogiri'
require 'uri'

#simple routing 
get '/' do
    send_file 'index.html'
end

# https://sinatra-ptytoo.c9users.io/welcome
get '/welcome' do
    "Welcom!"
end

#variable routing
get '/welcome/:name' do
    #"Welcom! " + #{name}
    "Welcome! #{params[:name]}"
    #"Welcom! " + name
end

#variable routing
get '/cube/:num' do
    input = params[:num].to_i**3
    "The result is #{input}"
end

get '/lunch' do
    lunch = ["20층" ,"김밥카페","순남시래기","편의점","시골집"]
    @photos = {
            "20층" => "https://scontent-sea1-1.cdninstagram.com/t51.2885-15/s480x480/e35/18162186_1131794230300190_6615700024821022720_n.jpg?ig_cache_key=MTI1MTg5MjQwMzQ1MjQzNzg2NA%3D%3D.2",
            "김밥카페" => "http://www.gimgane.co.kr/board/data/file/menu/1935589795_afscgN0k_EAB980EAB080EB84A4EAB980EBB0A5_EC8B9CEAB888ECB998_.jpg",
            "순남시래기"=>"http://soonnam.com/m/img/main/banner03.jpg",
            "편의점"=>"http://www.kbrockstar.com/wp-content/uploads/2015/07/%ED%8E%B8%EC%9D%98%EC%A0%90%EB%B0%B0%EB%8B%AC_02.png",
            "시골집"=>"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTljHcc94GtEAdKHa3HZJ4JnQRqtbkGZkEb9ZrhwX1bP6aRh_Gleg"
    }
    @menu = lunch.sample
    #send_file 'lunch.html'
    erb :lunch
end

get '/lotto' do
    @lotto = (1..45).to_a.sample(6)
    #"로또번호 추천 : #{lotto} "
    erb :lotto
end

get '/lol' do
    erb :lol
end

get '/search' do
    url = "http://www.op.gg/summoner/userName="
    @id = params[:userName]
    keyword = URI.encode(@id)
    res = HTTParty.get(url + keyword)
    text = Nokogiri::HTML(res.body)
    @win = text.css("#SummonerLayoutContent > div.tabItem.Content.SummonerLayoutContent.summonerLayout-summary > div.SideContent > div.TierBox.Box > div.SummonerRatingMedium > div.TierRankInfo > div.TierInfo > span.WinLose > span.wins")
    @lose = text.css("#SummonerLayoutContent > div.tabItem.Content.SummonerLayoutContent.summonerLayout-summary > div.SideContent > div.TierBox.Box > div.SummonerRatingMedium > div.TierRankInfo > div.TierInfo > span.WinLose > span.losses")
    erb :search
end