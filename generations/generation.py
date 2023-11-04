from faker import Faker
import psycopg2
from random import choice, randint

faker = Faker(locale="ru_Ru")

conn = psycopg2.connect(dbname='test', user='postgres',
                        password='postgres', host='localhost', port="5432")
cursor = conn.cursor()

def generate_bot():
    bot_name = faker.user_name()
    bot_avatar = faker.image_url()
    bot_desc = faker.paragraph(nb_sentences=2, variable_nb_sentences=True)
    bot_link = faker.url() + "bot" + choice([".js", ".py", ".java"])
    cursor.execute("insert into bot(name, avatar, description, link)" +
                   f"values('{bot_name}', '{bot_avatar}', '{bot_desc}', '{bot_link}')")

def generate_sticker():
    words = faker.words(nb=randint(3, 5), unique = True)
    sticker_name = " ".join(words)
    sticker_short_name = choice(words)
    sticker_file = faker.url() + "sticker" + choice([".png", ".jpg", ".gif"])
    cursor.execute("insert into sticker(name, shortname, file)" +
                   f"values('{sticker_name}', '{sticker_short_name}', '{sticker_file}')")

def generate_emoji():
    words = faker.words(nb=randint(2, 3), unique = True)
    emoji_name = " ".join(words)
    emoji_desc = " ".join(faker.words(nb=randint(2, 3), unique = True))
    emoji_abbreviation = choice(words)
    cursor.execute("insert into emoji(name, abbreviation, description)" +
                   f"values('emoji_name', 'emoji_abbreviation', '{emoji_desc}')")

    
    
entryAmount = 100

for i in range(entryAmount):
    generate_bot()
    generate_sticker()
    generate_emoji()

conn.commit()
cursor.close()
conn.close()
