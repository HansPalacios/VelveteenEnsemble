# README

# Velveteen Ensemble
A music group that performs for weddings, corporate events, and can be booked for concerts, tours, and recording sessions. 

The main focus of this site is to create a proffessional and modern representation of this company so people know what to expect when hiring them to perform at different venues.



This site is built with **Rails 5.1.6** and is using **AWS S3** as media storage, allowing for better quality images and faster playback of music and videos.

The new site was started by entering:
    ```
    rails new Velveteen -d postgresql
    ```
into the terminal, which prepares it for being launched on heroku without having to worry about switching to postgresql later on.

Installing Carrierwave to add, edit, and delete media from AWS S3 storage. Making sure to initially set it up to work with Heroku later on.

Using ```gem 'bxslider-rails'``` with jquery for the Homepage image slideshow, which can be formatted to autoplay and link to highlight the venue buttons at different points.