from django.shortcuts import render
from django.views.generic import TemplateView
from django.http import HttpResponse
from django.template import loader

# Create your views here.
class IndexView (TemplateView):
    template_name = "index.html"

def index(request):
    template = loader.get_template(request,'myBio/index.html')
    return HttpResponse(template.render())