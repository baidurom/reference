.class final Lcom/android/internal/app/QuickbootManager$Log;
.super Ljava/lang/Object;
.source "QuickbootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/QuickbootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Log"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/internal/app/QuickbootManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "message"

    .prologue
    .line 72
    sget-boolean v0, Lcom/android/internal/app/QuickbootManager;->mDebug:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method
