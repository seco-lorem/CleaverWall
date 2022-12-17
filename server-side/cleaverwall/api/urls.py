from django.urls import path, include
from . import views
from rest_framework import routers


router = routers.DefaultRouter()
router.register(r'submission', views.SubmissionViewSet, basename="submission")

urlpatterns = [
    path('', include(router.urls)),
]
