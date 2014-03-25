.class public Lcom/baidu/themeanimation/view/AnimationViewFactory;
.super Ljava/lang/Object;
.source "AnimationViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/view/AnimationViewFactory$1;,
        Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;,
        Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationViewFactory"


# instance fields
.field public mAnimationListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

.field private mCategory:I

.field private mContext:Landroid/content/Context;

.field private mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

.field public mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

.field private mHandlerCallback:Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;

.field private mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

.field private mIsInitSuccess:Ljava/lang/Boolean;

.field public mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private mLockScreenView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mCategory:I

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 31
    new-instance v0, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;-><init>(Lcom/baidu/themeanimation/view/AnimationViewFactory;Lcom/baidu/themeanimation/view/AnimationViewFactory$1;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mHandlerCallback:Lcom/baidu/themeanimation/view/AnimationViewFactory$HandlerCallBack;

    .line 38
    iput-object p1, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mContext:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    iget-object v1, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mContext:Landroid/content/Context;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    .line 40
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/view/AnimationViewFactory;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mCategory:I

    return v0
.end method

.method static synthetic access$102(Lcom/baidu/themeanimation/view/AnimationViewFactory;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mCategory:I

    return p1
.end method


# virtual methods
.method public generateView()Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    const-string v0, "AnimationViewFactory"

    const-string v1, "AnimationView onCreate"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/baidu/themeanimation/view/AnimationViewFactory;->initlayout()V

    .line 53
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mInfoRefreshUtil:Lcom/baidu/themeanimation/model/InfoRefreshUtil;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/model/InfoRefreshUtil;->setGlobalVariable()V

    .line 55
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->startAnimations()V

    .line 56
    const-string v0, "AnimationViewFactory"

    const-string v1, "create AnimationView ok"

    invoke-static {v0, v1}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationStatus()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->getAnimationsStatus()I

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public initPara(Ljava/lang/String;Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    .locals 1
    .parameter "path"
    .parameter "listener"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    invoke-virtual {v0, p1}, Lcom/baidu/themeanimation/util/FileUtil;->setPath(Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mAnimationListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    .line 46
    return-void
.end method

.method public initlayout()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 62
    const-string v3, "AnimationViewFactory"

    const-string v4, "initlayout "

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 64
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-nez v3, :cond_0

    .line 65
    const-string v3, "AnimationViewFactory"

    const-string v4, "create LockScreenElement"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, manifestStream:Ljava/io/InputStream;
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mFileUtil:Lcom/baidu/themeanimation/util/FileUtil;

    iget-object v4, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/util/FileUtil;->openFile(Landroid/os/Handler;)Ljava/io/InputStream;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/baidu/themeanimation/util/LockScreenParser;->getInstance()Lcom/baidu/themeanimation/util/LockScreenParser;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/themeanimation/util/LockScreenParser;->inflate(Ljava/io/InputStream;)Lcom/baidu/themeanimation/element/LockScreenElement;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 79
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    .end local v2           #manifestStream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v3, :cond_1

    .line 88
    const-string v3, "AnimationViewFactory"

    const-string v4, "generate LockScreenView"

    invoke-static {v3, v4}, Lcom/baidu/themeanimation/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :try_start_2
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iget-object v4, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mContext:Landroid/content/Context;

    sget v5, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    sget v6, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    iget-object v7, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mHandler:Lcom/baidu/themeanimation/util/LockScreenHandler;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/baidu/themeanimation/element/LockScreenElement;->generateView(Landroid/content/Context;IILandroid/os/Handler;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenView:Landroid/view/View;

    .line 93
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mAnimationListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    iget-object v4, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mAnimationListener:Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;

    invoke-virtual {v3, v4}, Lcom/baidu/themeanimation/element/LockScreenElement;->setAnimationsListener(Lcom/baidu/themeanimation/view/AnimationViewFactory$AnimationListener;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .line 104
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 105
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mIsInitSuccess:Ljava/lang/Boolean;

    .line 109
    :goto_2
    return-void

    .line 80
    .restart local v2       #manifestStream:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 79
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 80
    :catch_2
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 73
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 74
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 79
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 80
    :catch_4
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 75
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 79
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_0

    .line 80
    :catch_6
    move-exception v0

    .line 81
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 79
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 82
    :goto_3
    throw v3

    .line 80
    :catch_7
    move-exception v0

    .line 81
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 96
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #manifestStream:Ljava/io/InputStream;
    :catch_8
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/IllegalStateException;
    iput-object v9, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenView:Landroid/view/View;

    .line 98
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 99
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_9
    move-exception v1

    .line 100
    .local v1, e1:Ljava/lang/Exception;
    iput-object v9, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenView:Landroid/view/View;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v1           #e1:Ljava/lang/Exception;
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mIsInitSuccess:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->startAnimations()V

    .line 152
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/baidu/themeanimation/view/AnimationViewFactory;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v0}, Lcom/baidu/themeanimation/element/LockScreenElement;->stopAnimations()V

    .line 158
    :cond_0
    return-void
.end method
