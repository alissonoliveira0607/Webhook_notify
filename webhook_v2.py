from flask import Flask, request
app = Flask(__name__)

@app.route('/webhook_notify', methods=['POST'])
def register_logistics_data():
    data = request.get_json()
    # Aqui você pode salvar os dados em uma base de dados ou processá-los como desejar
    print(data)
    return 'Payload registrado com sucesso!', 200

if __name__ == '__main__':
    # app.run()
    #app.run(debug=True, port=8080)
    app.run(host='0.0.0.0', port=5000)
