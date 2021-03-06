
# Project 2 - Flixster

Flixster is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: ~22 hours spent in total

## User Stories

The following **required** functionality is complete:

- [X] User can view a list of movies currently playing in theaters from The Movie Database.
- [X] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [X] User sees a loading state while waiting for the movies API.
- [X] User can pull to refresh the movie list.

The following **optional** features are implemented:

- [X] User sees an error message when there's a networking error.
- [X] Movies are displayed using a CollectionView instead of a TableView.
- [X] User can search for a movie.
- [ ] All images fade in as they are loading.
- [X] User can view the large movie poster by tapping on a cell.
- [ ] For the large poster, load the low resolution image first and then switch to the high resolution image when complete.
- [ ] Customize the selection effect of the cell.
- [ ] Customize the navigation bar.
- [~X ] Customize the UI.

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!
-[X] User can view the movies popularity by tapping a cell
-[X] Popularity icons change depending on the movies vote score

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. how to integrate videos/ webviews into the navigation controller / how to parsel together these video URLs
2. how to store data based on user taps

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='https://i.imgur.com/MRYMT9M.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />


GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

A major block i encountered at the beginning was being able to segue from images through tap gestures.

I also had some trouble remembering the syntax and where exactly to implement the code (i.e. which file or function to place it in)



## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library
-https://www.kisspng.com/png-smiley-emoticon-happiness-clip-art-green-smiley-fa-111668/ - green smiley face
- https://www.kisspng.com/png-smiley-face-sadness-clip-art-crying-smiley-faces-547659/ - red smiley face
-http://www.smiley.com/sites/default/files/image/cover/straight%20face.png - yellow smiley face

## License

Copyright [yyyy] [name of copyright owner]

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
