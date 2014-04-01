.class Landroid/widget/Util$1$1;
.super Ljava/lang/Thread;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Util$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Util$1;


# direct methods
.method constructor <init>(Landroid/widget/Util$1;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Landroid/widget/Util$1$1;->this$0:Landroid/widget/Util$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 83
    :goto_0
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Landroid/widget/Util$1$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    .line 88
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v0, 0x0

    .line 89
    .local v0, a:I
    const/16 v1, 0x17

    .line 90
    .local v1, b:I
    div-int v2, v1, v0

    .line 91
    .local v2, c:I
    add-int/lit8 v2, v2, 0x1

    .line 92
    goto :goto_0
.end method
