.class Landroid/webkit/WebView$OnTrimMemoryListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTrimMemoryListener"
.end annotation


# static fields
.field private static sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 416
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 417
    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 418
    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    .line 411
    sget-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Landroid/webkit/WebView$OnTrimMemoryListener;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView$OnTrimMemoryListener;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/webkit/WebView$OnTrimMemoryListener;->sInstance:Landroid/webkit/WebView$OnTrimMemoryListener;

    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 423
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 428
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 435
    #calls: Landroid/webkit/WebView;->nativeOnTrimMemory(I)V
    invoke-static {p1}, Landroid/webkit/WebView;->access$000(I)V

    .line 436
    return-void
.end method
