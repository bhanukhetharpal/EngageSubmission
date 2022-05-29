# Recommendation App

[Video Demo and Algorithm Explanation](https://www.canva.com/design/DAFCAJyCcyU/bCgnGUEDOo2V8cyCaKzF6Q/watch?utm_content=DAFCAJyCcyU&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

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
- Cosine_similarity
- CountVectorizer
- TfidfVectorizer

[PPT for Algorithm Role Explanation](https://www.canva.com/design/DAFCANVAQmo/mrKHSsUqIKaDHAt5xezHOg/view?utm_content=DAFCANVAQmo&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)

## Getting Started
To install and run the project on your local system, following are the requirements:

### Prerequisites
GIT, FLUTTER, Android Studio

### Installation
- Clone the repo. 
- Have a virtual device set up in Android Studio
- Run main.dart

## Navigating Through The App
### Home Screen
 ![Main Page](images/main.jpeg?raw=true)     ![Home Page](images/home.jpeg?raw=true) 
### Movie and TV Shows Screen
![Tiles Page](images/tiles.jpeg?raw=true)
![button Page](images/recommend.png?raw=true)
### Description Tiles with Heart Button
![Descp Page](images/movie_tile.jpeg?raw=true)
### Recommended Movies Screen
![Recom Page](images/image.png?raw=true)

## API Reference
Built the movie recommendation API using python and deployed on Python Anywhere. This API has at its centre the algorithm that I have used. 

#### API LINK

https://bhanukhetharpal.pythonanywhere.com/movie?title=$moviename

 


| Parameter | Type     | Description                       |
| :-------- | :------- | :-------------------------------- |
| `title`      | `string` | Title of movie to fetch recommendations for |

### Title
Replace $moviename with the movie you want to search
Takes the name of the movie and returns the recommended movies with their Match Scores

### Datasets Used
- [TMDB 5000 Movie Dataset](https://www.kaggle.com/datasets/tmdb/tmdb-movie-metadata)
- [The Indian Movie Database](https://www.kaggle.com/datasets/pncnmnp/the-indian-movie-database)

### Future Scope of the App
Due to shortage of time these feautures couldn't be incoorporated but planned to do so soon
- Book Recommendation with API using Spark ALS algorithm.
- Skincare Recommendation using Face Recognition

## Resources Used
- https://nordicapis.com/how-to-create-an-api-using-the-flask-framework/
- https://www.geeksforgeeks.org/implementing-rest-api-in-flutter/
- https://www.themoviedb.org/documentation/api
