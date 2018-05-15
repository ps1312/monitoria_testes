Given(/^I am on ([^"]*)$/) do |link|
  visit (link);
end

Given(/^I have a ([^"]*) score with ([^"]*) points$/) do |game, points|
  @high_score = HighScore.create!({
      :game => game,
      :score => points
  })
end