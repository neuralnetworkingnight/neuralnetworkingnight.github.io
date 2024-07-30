+++
date = "2024-05-31T16:00:00+01:00"
description = "This is the description"
external_link = "https://www.institut-vision.org/en/researchers/matthew-chalk"
picture = "/speakers/MatthewChalk.jpeg"
project_id = "1"
weight = 10
short_description = "Predicting visual neural responses: can we make better use of less data?"
title = "May 31st, 2024 - Matthew Chalk"
[[participants]]
    name = "Member 1"
    is_member = true
    id = "member1"
+++

_Vision Institute_

## Predicting visual neural responses: can we make better use of less data?

How do sensory neurons respond to our surroundings? To answer this, we can train deep neural network models on recorded visual neuron responses (e.g., to presented movies/images), to predict responses to new stimuli. Performance is often limited by the data: the longer the recordings, the better the predictions; with short recordings, current models often fail. This is a problem since experiments are hard, and data often limited. Here I will talk about how we can use an alternative type of model, Gaussian processes,  to overcome this challenge. I will discuss how we can use prior information to constrain these models, to accurately predict visual neural responses to high-dimensional natural images and movies, even when the model is trained on very little data. I will then describe ongoing work in my lab to use this method to design more efficient 'closed-loop' experiments, where we use recorded neural activity to decide which visual stimulus to present online. We hope that this will allow us to push the limits of what is possible with limited data, to understand how sensory neurons respond to the world.