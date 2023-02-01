from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return HttpResponse("Distika GameChanger: Sports Stats for Everyone")