# Flask==2.3.2 
from flask import Flask, render_template, request
from app.data import Data

app = Flask(__name__)


@app.route('/')
def home():
    return render_template('home.html')


@app.route('/form', methods=['GET', 'POST'])
def form():
    if request.method == 'POST':
        name = request.form['name']
        last_name = request.form['last_name']
        email = request.form['email']
        pledges_euro = float( request.form['pledges_euro'] )
        # process the form data here
        Data.save_entry(name, last_name, email, pledges_euro)
        if name == '' or last_name == '' or email == '' or pledges_euro == '':
            return render_template('form.html', error='Veuillez remplir tous les champs')
        else:
            return render_template('form-succes.html', name=name, last_name=last_name, email=email, pledge_euros=pledges_euro)
    return render_template('form.html')


@app.route('/rankings')
def pidgeons():
    rankings = Data.get_top_ten()
    rankings = rankings[:10]
    total_pledges = Data.get_total_pledges()
    return render_template('rankings.html', rankings=rankings, total_pledges=total_pledges)


@app.route('/fightclub', methods=['GET', 'POST'])
def chat_with_db():
        if request.method == 'POST':
            name = request.form['name']
            msg = request.form['message']
            msg = msg.replace("'", "''")
            # process the form data here
            if name == '' or msg == '':
                return render_template('fightclub.html', error='Veuillez remplir tous les champs')
            else:
                Data.save_msg(name, msg)
                msg = Data.get_msg()
                return render_template('fightclub.html', msg=msg)
        msg = Data.get_msg()
        return render_template('fightclub.html', msg=msg)





if __name__ == '__main__':
    app.run(debug=True)

