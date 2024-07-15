# fureverhome/urls.py

from django.contrib import admin
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from django.views.generic import TemplateView
from django.contrib.auth.views import (
    LoginView,
    LogoutView,
    PasswordChangeView,
    PasswordChangeDoneView,
    PasswordResetView,
    PasswordResetDoneView,
    PasswordResetConfirmView,
    PasswordResetCompleteView,
)
from rest_framework.routers import DefaultRouter

from pet.views import (
    landing,
    adoption_application,
    PhotoViewSet,
    VideoViewSet,
    AdoptionApplicationViewSet,
    ReviewViewSet,
)
from user.views import SignUpView, profile, profile_edit

router = DefaultRouter()
router.register(r"photos", PhotoViewSet)
router.register(r"videos", VideoViewSet)
router.register(r"applications", AdoptionApplicationViewSet)
router.register(r"reviews", ReviewViewSet)

urlpatterns = [
    path("admin/", admin.site.urls),
    path("pets/", include("pet.urls")),
    path("users/", include("user.urls")),
    path("accounts/", include("django.contrib.auth.urls")),
    path("accounts/profile", profile, name="account_profile"),
    path("accounts/profile/edit", profile_edit, name="account_profile_edit"),
    path("shelters/", include("shelter.urls")),
    path("", landing, name="home"),
    path("adopt/<int:pet_id>/", adoption_application, name="adoption_application"),
    path("about/", TemplateView.as_view(template_name="base/about.html"), name="about"),
    path(
        "contact/",
        TemplateView.as_view(template_name="base/contact.html"),
        name="contact",
    ),
    path("signup/", SignUpView.as_view(template_name="registration/signup.html"), name="signup"),
    path(
        "login/",
        LoginView.as_view(template_name="registration/login.html"),
        name="login",
    ),
    path("logout/", LogoutView.as_view(), name="logout"),
    path("change-password/", PasswordChangeView.as_view(), name="change_password"),
    path(
        "change-password/done/",
        PasswordChangeDoneView.as_view(),
        name="password_change_done",
    ),
    path("password-reset/", PasswordResetView.as_view(), name="password_reset"),
    path(
        "password-reset/done/",
        PasswordResetDoneView.as_view(),
        name="password_reset_done",
    ),
    path(
        "reset/<uidb64>/<token>/",
        PasswordResetConfirmView.as_view(),
        name="password_reset_confirm",
    ),
    path(
        "reset/done/",
        PasswordResetCompleteView.as_view(),
        name="password_reset_complete",
    ),
    path("", include(router.urls)),
] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
