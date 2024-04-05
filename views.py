from django.http import HttpResponse

def index(request) :
    return HttpResponse ('<h2>Главная</h2>')

def my_hero_academia(request) :
    return HttpResponse ('<h3> моя геройская академия</h3>' '<p>сколько сезонов вышло: 6</p>' '<p> следущий сезон: 4 мая 2024г.</p>')

def one_punch_man(request) :
    return HttpResponse ('<h3> ван пач мен(человек 1 удара)</h3>' '<p>сколько сезонов вышло: 2</p>' '<p> следущий сезон: 2024г.</p>')

def attack_on_titan(request) :
    return HttpResponse ('<h3> атака титанов</h3>' '<p>сколько сезонов вышло: 4</p>' '<p> следущий сезон: не будет(не планируется).</p>')