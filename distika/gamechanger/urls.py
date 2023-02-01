from django.urls import path
from django.contrib import admin

from . import views

app_name = 'gamechanger'
urlpatterns = [
    path('', views.index, name='index'),
    path('admin/', admin.site.urls),
]