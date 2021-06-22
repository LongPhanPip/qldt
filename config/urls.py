"""config URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""

from django.urls import path, include
from drf_yasg.views import get_schema_view
from rest_framework import permissions
from drf_yasg import openapi

schema_view = get_schema_view(
    openapi.Info(
    title="High school management",
    default_version="v1",
    description="API for backend server",
    terms_of_service="Allow to use under any term",
    ontact=openapi.Contact(email="project2@gmail.com"),
    license=openapi.License(name="No license"),
    ),
    public=True,
    permission_classes=(permissions.AllowAny,),
)


urlpatterns = [
    path('api/', include('accounts.urls')),
    path('api/admin/', include('admin.urls')),
    path('api/teacher/', include('teachers.urls')),
    path('api/student/', include('students.urls')),
    path('swagger/', schema_view.with_ui('swagger', cache_timeout=0), name='schema-swagger-ui'),
    path('redoc/', schema_view.with_ui( 'redoc', cache_timeout=0), name='schema-redoc'),
]
