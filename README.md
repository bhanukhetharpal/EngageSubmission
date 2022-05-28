# Recommendation App

[Video Demo](http://bhanukhetharpal.pythonanywhere.com/movie?title=the%20godfather)

## About The Project
- Recommendation App built during Microsoft Engage 2022 program.
- This project is based on the third challenge Algorithms.
- Demonstrates what role Content Based Filtering plays in recommending movies to a user.

### Salient Features
- An Engaging UI that displays Trending, Top Rated Movies and Popular TV shows along with their descriptions and average rating.
- Has a "Heart Button" on each tile that user can use to notify the underlying algorithm to add the specific title to their favourites list.
- Has a "Recommend Movies" Button that displays tiles of recommended movies containing Title, Genres and Match Score.
- Match Score of the recommended movie is calculated by the algorithm used and signifies how similar the movie is with the movies in the favourite list.
### Compatible Platforms
- It is a Cross-Platform App built for IOS, Android , Desktop(Windows) and Web.
### Technologies Used

-Built App Using

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)


-Built Backend Recommendation Algorithm and API Using

![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)
![Flask](https://img.shields.io/badge/flask-%23000.svg?style=for-the-badge&logo=flask&logoColor=white)
![scikit-learn](https://img.shields.io/badge/scikit--learn-%23F7931E.svg?style=for-the-badge&logo=scikit-learn&logoColor=white)
![SciPy](https://img.shields.io/badge/SciPy-%230C55A5.svg?style=for-the-badge&logo=scipy&logoColor=%white)
![Pandas](https://img.shields.io/badge/pandas-%23150458.svg?style=for-the-badge&logo=pandas&logoColor=white)

## Algorithms Used 
- cosine_similarity
- CountVectorizer
- TfidfVectorizer
[PPT for Algorithm Role Explanation](https://www.canva.com/design/DAFCANVAQmo/zpe8ZLAlU48urNI9ZxWvNg/view?utm_content=DAFCANVAQmo&utm_campaign=designshare&utm_medium=link&utm_source=publishsharelink)

## Getting Started
To install and run the project on your local system, following are the requirements:

### Prerequisites
GIT, FLUTTER, Android Studio

### INSTALLATION
- Clone the repo. 
- Have a virtual device set up in Android Studio
- Run main.dart

## Navigating Through The App
### Home Screen
### Movie and TV Shows Screen
### Description Tiles with Heart Button
### Recommended Movies Screen 

## API Reference
Built the movie recommendation API using python and deployed on Python Anywhere. This API has at its centre the algorithm that I have used. 

#### API LINK

https://bhanukhetharpal.pythonanywhere.com/movie?title=$moviename

 


| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `title`      | `string` | Title of movie to fetch recommendations for |

### Title

Takes the name of the movie and returns the recommended movies with their Match Scores

### Datasets Used
- [TMDB 5000 Movie Dataset](https://www.kaggle.com/datasets/tmdb/tmdb-movie-metadata)
- [The Indian Movie Database](https://www.kaggle.com/datasets/pncnmnp/the-indian-movie-database)


## Resources Used
- https://nordicapis.com/how-to-create-an-api-using-the-flask-framework/
- https://www.geeksforgeeks.org/implementing-rest-api-in-flutter/
- https://www.themoviedb.org/documentation/api
