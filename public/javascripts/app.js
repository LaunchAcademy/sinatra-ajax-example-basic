$(function() {
  var $tweetsContainer = $('.tweets-container');

  $.ajax('/tweets', {
    success: function(tweets) {
      $.each(tweets, function(index, tweet) {
        // Create a new div that will hold the info for this tweet
        var $tweetContainer = $('<div>').addClass('tweet');
        // Create the header element for this tweet
        var $header = $('<h3>').text(tweet.username + ' said...');
        // Create a paragraph tag to hold the body of the tweet
        var $body = $('<p>').text(tweet.body);

        // Append the header and body to the div that holds the tweet
        $tweetContainer.append($header, $body);
        // Append the tweet to the tweets container element on the page
        $tweetsContainer.append($tweetContainer);
      });
    }
  });
});
