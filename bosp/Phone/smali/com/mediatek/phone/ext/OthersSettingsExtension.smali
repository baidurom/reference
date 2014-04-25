.class public Lcom/mediatek/phone/ext/OthersSettingsExtension;
.super Ljava/lang/Object;
.source "OthersSettingsExtension.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public customizeCallRejectFeature(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 0
    .parameter "prefSc"
    .parameter "preference"

    .prologue
    .line 54
    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 60
    const-string v0, "NetworkSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void
.end method
