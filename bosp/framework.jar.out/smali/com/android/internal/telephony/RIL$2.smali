.class Lcom/android/internal/telephony/RIL$2;
.super Ljava/lang/Thread;
.source "RIL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/RIL;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/RIL;)V
    .locals 0
    .parameter

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 739
    :try_start_0
    const-string v1, "RILJ"

    const-string v2, "before parse ons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v1, p0, Lcom/android/internal/telephony/RIL$2;->this$0:Lcom/android/internal/telephony/RIL;

    #calls: Lcom/android/internal/telephony/RIL;->getOnsTableFromFile()V
    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->access$800(Lcom/android/internal/telephony/RIL;)V

    .line 741
    const-string v1, "RILJ"

    const-string v2, "after parse ons"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_0
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RILJ"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
