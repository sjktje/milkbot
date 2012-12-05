require 'cinch'

bot = Cinch::Bot.new do 
    configure do |c|
        c.server = "irc.townsville.nl"
        c.channels = ["#ankeborg"]
        c.nick = "milkbot"
        c.realname = "mILKbot 0.1 beta!"
    end

    on :message, "test" do |m|
        m.reply "Test passed, #{m.user.nick}!"
    end

    on :message, "die" do |m|
        exit
    end
end
bot.start