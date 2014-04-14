.class public interface abstract Lcom/baidu/themeanimation/util/LockScreenHandler$HandlerCallback;
.super Ljava/lang/Object;
.source "LockScreenHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/util/LockScreenHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HandlerCallback"
.end annotation


# virtual methods
.method public abstract dispatchTimeTick(Landroid/text/format/Time;)V
.end method

.method public abstract setCategory(I)V
.end method

.method public abstract unLock()V
.end method

.method public abstract updateWallpaper()V
.end method
