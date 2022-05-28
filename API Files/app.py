from flask import Flask,jsonify,request #import objects from the flask model
from flask_cors import CORS
import recommendation

app = Flask(__name__) #define app using Flask

CORS(app)

@app.route('/movie', methods=['GET'])
def recommend_movies():
	res = recommendation.results(request.args.get('title'))
	return jsonify(res)

if __name__ == '__main__':
	app.run(port = process.env.PORT||8080, debug = True) 

