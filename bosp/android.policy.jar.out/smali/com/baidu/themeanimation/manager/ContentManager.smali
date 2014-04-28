.class public Lcom/baidu/themeanimation/manager/ContentManager;
.super Ljava/lang/Object;
.source "ContentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/manager/ContentManager$ContentVariable;,
        Lcom/baidu/themeanimation/manager/ContentManager$Content;
    }
.end annotation


# static fields
.field static mInstance:Lcom/baidu/themeanimation/manager/ContentManager;

.field static final mInstanceSync:Ljava/lang/Object;


# instance fields
.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/themeanimation/manager/ContentManager$Content;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ContentManager;->mInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager;->mContents:Ljava/util/ArrayList;

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/baidu/themeanimation/manager/ContentManager;
    .locals 2

    .prologue
    .line 21
    sget-object v1, Lcom/baidu/themeanimation/manager/ContentManager;->mInstanceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/baidu/themeanimation/manager/ContentManager;->mInstance:Lcom/baidu/themeanimation/manager/ContentManager;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/baidu/themeanimation/manager/ContentManager;->mInstance:Lcom/baidu/themeanimation/manager/ContentManager;

    monitor-exit v1

    .line 28
    :goto_0
    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/baidu/themeanimation/manager/ContentManager;

    invoke-direct {v0}, Lcom/baidu/themeanimation/manager/ContentManager;-><init>()V

    sput-object v0, Lcom/baidu/themeanimation/manager/ContentManager;->mInstance:Lcom/baidu/themeanimation/manager/ContentManager;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    sget-object v0, Lcom/baidu/themeanimation/manager/ContentManager;->mInstance:Lcom/baidu/themeanimation/manager/ContentManager;

    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addContent(Lcom/baidu/themeanimation/manager/ContentManager$Content;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 36
    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/baidu/themeanimation/manager/ContentManager;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 46
    iget-object v2, p0, Lcom/baidu/themeanimation/manager/ContentManager;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/manager/ContentManager$Content;

    .line 47
    .local v0, content:Lcom/baidu/themeanimation/manager/ContentManager$Content;
    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/manager/ContentManager$Content;->update(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    .end local v0           #content:Lcom/baidu/themeanimation/manager/ContentManager$Content;
    :cond_0
    return-void
.end method
