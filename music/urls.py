from django.conf.urls import url
from .views import MusicListAPI

urlpatterns = [
    url(r'^musics/$', MusicListAPI.as_view(), name='music-list')
]