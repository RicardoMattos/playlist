from django.test import TestCase
from model_mommy import mommy
from music.models import Music


class TestMusic(TestCase):

    def setUp(self):
        self.music = mommy.make(Music)

    def test_music_creation(self):
        self.assertTrue(isinstance(self.music, Music))
        self.assertEquals(self.music.__str__(), self.music.title)
