.class public Lyi/support/v1/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/utils/Logger$Performance;
    }
.end annotation


# static fields
.field private static mCfgTag:Ljava/lang/String;

.field private static mLoggable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    .line 16
    const-string v0, ""

    sput-object v0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 24
    sget-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 48
    sget-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static enable(Ljava/lang/String;)V
    .locals 1
    .parameter "cfgTAG"

    .prologue
    .line 19
    const/4 v0, 0x1

    sput-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    .line 20
    sput-object p0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 30
    sget-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static printStackTrace(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 54
    sget-boolean v2, Lyi/support/v1/utils/Logger;->mLoggable:Z

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 56
    .local v1, stes:[Ljava/lang/StackTraceElement;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 57
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    .end local v0           #i:I
    .end local v1           #stes:[Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 36
    sget-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 42
    sget-boolean v0, Lyi/support/v1/utils/Logger;->mLoggable:Z

    if-eqz v0, :cond_0

    sget-object v0, Lyi/support/v1/utils/Logger;->mCfgTag:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method
