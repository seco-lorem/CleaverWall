from django.urls import path, include
from .views import SubmissionViewSet
from rest_framework import routers


router = routers.DefaultRouter()
router.register(r'submission', SubmissionViewSet, basename="submission")

urlpatterns = [
    path('', include(router.urls)),
]
