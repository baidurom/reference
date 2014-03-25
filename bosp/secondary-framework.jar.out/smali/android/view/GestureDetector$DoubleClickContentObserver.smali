.class Landroid/view/GestureDetector$DoubleClickContentObserver;
.super Landroid/database/ContentObserver;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleClickContentObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 701
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 702
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 715
    invoke-static {}, Landroid/view/GestureDetector;->access$500()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    invoke-static {}, Landroid/view/GestureDetector;->access$500()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pointer_double_click_speed"

    invoke-static {}, Landroid/view/GestureDetector;->access$700()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/view/GestureDetector;->access$602(I)I

    .line 719
    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "contentResolver"

    .prologue
    .line 705
    const-string v0, "pointer_double_click_speed"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 707
    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0
    .parameter "contentResolver"

    .prologue
    .line 710
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 711
    return-void
.end method
