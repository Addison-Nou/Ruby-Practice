require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'NDkyNzU3MTE0NDg2MjU5NzE1.DobDrg.GkxjlEENR5OQexPV5oDy5_4QrM4', prefix: '%'

bot.command(:eval, help_available: false) do |event, *code| #Splat operator '*' builds an array
    break unless event.user.id == 139507778413789184

    begin
        #puts code
        #puts code.include? "\n"
        #puts code.is_a? (String)
        if code.is_a? (Array)
            puts "#{code.inspect}"
        end
        code = code.join(' ')
        puts "code: #{code}"
        #puts code.include? '`'
        if code.include? "`"
            code = code.tr('`', '')
            code = code.gsub(';', '; ')
            puts code
            event.respond "```rb\n#{eval code}```"
        end
    rescue  #If an error occurs, the code flows to the rescue clause. If there was no rescue clause, the code would terminate.
        'An error occured!'  #rescue clause does not need an 'end'; it is part of the begin-end block
    end
end

bot.message(with_text: 'ping!') do |event| #Note: 'event' can be any word
    event.respond 'Pong!'
end

bot.message(with_text: 'logout') do |event|
    break unless event.user.id == 139507778413789184
    begin
        event.respond 'Logging out!'
        bot.stop
    end
end

bot.run