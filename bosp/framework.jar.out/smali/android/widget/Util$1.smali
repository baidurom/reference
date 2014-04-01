.class final Landroid/widget/Util$1;
.super Ljava/lang/Thread;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Util;->anti()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 65
    :goto_0
    const-wide/32 v4, 0xea60

    :try_start_0
    invoke-static {v4, v5}, Landroid/widget/Util$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_1
    new-instance v4, Landroid/widget/Util$1$1;

    invoke-direct {v4, p0}, Landroid/widget/Util$1$1;-><init>(Landroid/widget/Util$1;)V

    invoke-virtual {v4}, Landroid/widget/Util$1$1;->start()V

    goto :goto_0

    .line 67
    :catch_0
    move-exception v3

    .line 70
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 71
    .local v0, a:I
    const/16 v1, 0x17

    .line 72
    .local v1, b:I
    div-int v2, v1, v0

    .line 73
    .local v2, c:I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
