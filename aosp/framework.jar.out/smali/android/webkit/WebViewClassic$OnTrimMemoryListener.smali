.class Landroid/webkit/WebViewClassic$OnTrimMemoryListener;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTrimMemoryListener"
.end annotation


# static fields
.field private static sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 814
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 823
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 824
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 817
    sget-object v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebViewClassic$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebViewClassic$OnTrimMemoryListener;

    .line 820
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 829
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 839
    const-string v0, "WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTrimMemory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    .line 846
    invoke-static {}, Landroid/webkit/HTML5VideoInline;->cleanupSurfaceTexture()V

    .line 847
    invoke-static {}, Landroid/webkit/HTML5VideoView;->release()V

    .line 854
    :cond_0
    #calls: Landroid/webkit/WebViewClassic;->nativeOnTrimMemory(I)V
    invoke-static {p1}, Landroid/webkit/WebViewClassic;->access$1000(I)V

    .line 855
    return-void
.end method
