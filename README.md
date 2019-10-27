# README

# Velveteen Ensemble
A company that books musicians across several cities for weddings, corporate events, and can be booked for concerts, tours, and recording sessions. 

The main focus of this site is to create a proffessional and modern representation of this company so people know what to expect when hiring them to perform at different venues.



This site is built with **Rails 5.1.6** and is using **AWS S3** as media storage, allowing for better quality images and faster playback of music and videos.

The new site was started by entering:
    ```
    rails new Velveteen -d postgresql
    ```
into the terminal, which prepares it for being launched on heroku without having to worry about switching to postgresql later on.

Installing Carrierwave to add, edit, and delete media from AWS S3 storage. Making sure to initially set it up to work with Heroku later on.

Using jquery for the Homepage image slideshow, which can be formatted to autoplay and link to highlight the venue buttons at different points.

Removed ``//= require turbolinks`` from application.js so jquery elements work correctly when switching pages.

There are also a few tables that were scaffolded in order to easily add and edit the content on the pages:

``rails g scaffold upload name:string folder:string``

``rails g scaffold venue title:string bio:text name:string``

``rails g scaffold client title:string name:string venue:references``

``rails g scaffold sample title:string artist:string genre:string name:string``

``rails g scaffold about bio:text``

``rails g scaffold contact text:string``

The Venue page is using parrallax scrolling for every other image to create a more intruguing user experience. It also has linked videos from the clients facebook page for visual examples of their performances.

For the media page I used Instafeed to show the 20 most recent Instagram posts on the website. Which is the maximum amount they allow for public use at the moment. Because it is only showing minimal content the clients account only needs to be in Sandbox mode.

Built Admin site so manager can view and edit various texts.


