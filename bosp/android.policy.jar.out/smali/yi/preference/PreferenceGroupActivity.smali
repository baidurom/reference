.class public abstract Lyi/preference/PreferenceGroupActivity;
.super Landroid/preference/PreferenceActivity;
.source "PreferenceGroupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    return-void
.end method

.method public onPrepareYiFeatures()Z
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method
