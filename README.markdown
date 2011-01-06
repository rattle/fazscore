# fazscore - Floating Average Z-Score implementation

## Description

An implementation of a Floating Average Z-Score algorithmic method for use in identifying trends in historical data.

For further information see - http://stackoverflow.com/questions/787496/what-is-the-best-way-to-compute-trending-topics-or-tags/826509#826509

## Installation

    gem install fazscore

## Usage

Typically you'll have a set of historical data points that you want to compare to a current data point and see how much the latest data point has deviated from the historical average, to identify if it's trending.

    require 'fazscore'

    # A set of mentions for a set of terms
    history = { 'England' => [5,1,3,4,4],
              'Ireland' => [1,0,0,1,2],
              'Scotland' => [2,4,1,4,5]}

    # The current number of mentions for each term
    current = { 'England' => 0,
                'Ireland' => 7,
                'Scotland' => 6 }

    # Calculate the trending scores
    scores = {}
    history.keys.each do |term|
      score[term] = FAZScore.new(0.5, history[term]).score(current[term])
    end

    # Display 'most' trending term with trending score
    puts scores.sort {|a,b| a[1]<=>b[1]}.last

## Contributing to fazscore
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Rob Lee. See LICENSE.txt for further details.

