module ApplicationHelper
  def generate_response
    api_key = ENV.fetch("OPENAI_API_KEY")
    engine = "text-davinci-003"
    prompt = "I have a meeting next weeek about concers related to RFP Evaluation, can you please provide a 3 objectives and an agenda"

    openai_client = OpenAI::Client.new(api_key: api_key, default_engine: engine)
    response = openai_client.completions(prompt: prompt, max_tokens: 4000, engine: engine)
    text = response.choices[0].text
  end
end
