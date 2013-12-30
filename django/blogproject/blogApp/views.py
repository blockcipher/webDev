# Create your views here.
from django.http import HttpResponse
def index(req):
    sText = '[%s]hello '%__file__
    return HttpResponse(sText)
    