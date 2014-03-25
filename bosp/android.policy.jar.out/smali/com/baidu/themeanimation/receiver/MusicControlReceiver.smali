.class public Lcom/baidu/themeanimation/receiver/MusicControlReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicControlReceiver"

.field static mMusicMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/receiver/MusicControlReceiver;->mMusicMethods:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method

.method public static clearAllMusicPlayCB()V
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/themeanimation/receiver/MusicControlReceiver;->mMusicMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
.end method

.method public static registerMusicPlayCB(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
    .locals 2
    .parameter "object"
    .parameter "method"

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/themeanimation/receiver/MusicControlReceiver;->mMusicMethods:Ljava/util/ArrayList;

    new-instance v1, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;

    invoke-direct {v1, p0, p1}, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, action:Ljava/lang/String;
    const-string v5, "MusicControlReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 24
    .local v1, bundle:Landroid/os/Bundle;
    sget-object v5, Lcom/baidu/themeanimation/receiver/MusicControlReceiver;->mMusicMethods:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;

    .line 26
    .local v2, callback:Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;
    :try_start_0
    iget-object v5, v2, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;->mMethod:Ljava/lang/reflect/Method;

    iget-object v6, v2, Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;->mObject:Ljava/lang/Object;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    move-exception v3

    .line 28
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 32
    .end local v2           #callback:Lcom/baidu/themeanimation/receiver/MusicControlReceiver$MusicCallback;
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method
