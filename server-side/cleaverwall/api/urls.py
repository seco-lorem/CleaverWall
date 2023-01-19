from django.urls import path, include
from .views import SubmissionViewSet, UserViewSet
from rest_framework import routers


router = routers.DefaultRouter()
router.register(r'submission', SubmissionViewSet, basename="submission")
router.register(r'user', UserViewSet, basename="user")

urlpatterns = [
    path('', include(router.urls)),
]
