require 'discordrb/webhooks'
require 'pry'
WEBHOOK_URL = 'https://discord.com/api/webhooks/798972382541905960/JncumVaEzuAhHKC8gV5JCFFB3qVmvcX0AxYjz3srSbCc9HFxAFmS53SpuEZvJm7FCdqT'.freeze

def hook h={}
client = Discordrb::Webhooks::Client.new(url: WEBHOOK_URL)
client.execute do |builder|
  builder.content = h[:content]
  builder.add_embed do |embed|
    embed.title = h[:title]
    embed.description = h[:desc]
    embed.timestamp = Time.now
  end
end
end
binding.pry
