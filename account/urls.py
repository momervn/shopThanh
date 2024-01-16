from django.urls import  path
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('user_login/', views.user_login, name='user_login'),
    path('user_register/', views.user_register, name='user_register'),
    path('user_logout/', views.user_logout, name='user_logout'),

    path('password_reset/', auth_views.PasswordResetView.as_view(), name='password_reset'),
    path('password_reset_sent/', auth_views.PasswordResetDoneView.as_view(), name='password_reset_done'),
    path('reset/<uidb64>/<token>/', auth_views.PasswordResetConfirmView.as_view(), name='password_reset_confirm'),
    path('password_reset_complete/', auth_views.PasswordResetCompleteView.as_view(), name='password_reset_complete'),
]