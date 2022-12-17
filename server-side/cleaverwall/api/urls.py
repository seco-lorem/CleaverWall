from django.urls import path, include
from . import views
from rest_framework import routers


router = routers.DefaultRouter()
router.register(r'submission', views.SubmissionViewSet, basename="submission")

urlpatterns = [
    path('', views.getData),
    path('add/', views.addSubmission),
    path('', include(router.urls)),
]

'''
router = routers.DefaultRouter()
router.register(r'upload', views.UploadViewSet, basename="upload")

# Wire up our API using automatic URL routing.
urlpatterns = [
    path('', include(router.urls)),
]

'''