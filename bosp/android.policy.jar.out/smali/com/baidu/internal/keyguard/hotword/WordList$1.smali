.class final Lcom/baidu/internal/keyguard/hotword/WordList$1;
.super Ljava/lang/Thread;
.source "WordList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/internal/keyguard/hotword/WordList;->updateWordList(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 166
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 167
    #calls: Lcom/baidu/internal/keyguard/hotword/WordList;->fetchData2()Z
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "WordList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WordList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$200()Landroid/content/Context;

    move-result-object v2

    #calls: Lcom/baidu/internal/keyguard/hotword/WordList;->saveKeywords(Landroid/content/Context;)V
    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$300(Landroid/content/Context;)V

    .line 170
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$402(Z)Z

    .line 175
    :goto_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.keyguard.internal.WORD_LIST_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-static {}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$200()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 172
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/baidu/internal/keyguard/hotword/WordList;->access$402(Z)Z

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WordList"

    const-string v3, "Send WORD_LIST_UPDATED fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
