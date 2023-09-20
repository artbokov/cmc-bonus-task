from flask import Flask, render_template, request
import psycopg2

app = Flask(__name__)
conn = psycopg2.connect(dbname="AuthApp", user="postgres", password="admin")


def database_query(query, variables=None):
    cur = conn.cursor()
    cur.execute(query, variables)
    response = cur.fetchall()
    cur.close()
    return response


@app.route("/")
def main():
    return render_template(
        "main.html",
        users=database_query("SELECT id, login from users WHERE status")
    )


@app.route("/users")
def users():
    return render_template(
        "selected_users.html",
        users=database_query("SELECT id, login from users WHERE status")
    )


@app.route("/by-login")
def by_login():
    return render_template(
        "selected_users.html",
        users=database_query(
            "SELECT id, login from users WHERE login=%s",
            [request.args["login"]]
        )
    )


@app.route("/by-id")
def by_id():
    return render_template(
        "selected_users.html",
        users=database_query(
            "SELECT id, login from users WHERE id=%s",
            [request.args["id"]]
        )
    )


if __name__ == "__main__":
    app.run()
