.class Lyi/support/v1/YiLaf$ActivityLifecycleObserver;
.super Ljava/lang/Object;
.source "YiLaf.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/YiLaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityLifecycleObserver"
.end annotation


# static fields
.field private static mActivityLifecycleObserver:Lyi/support/v1/YiLaf$ActivityLifecycleObserver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enable(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 505
    sget-object v0, Lyi/support/v1/YiLaf$ActivityLifecycleObserver;->mActivityLifecycleObserver:Lyi/support/v1/YiLaf$ActivityLifecycleObserver;

    if-nez v0, :cond_0

    .line 506
    new-instance v0, Lyi/support/v1/YiLaf$ActivityLifecycleObserver;

    invoke-direct {v0}, Lyi/support/v1/YiLaf$ActivityLifecycleObserver;-><init>()V

    sput-object v0, Lyi/support/v1/YiLaf$ActivityLifecycleObserver;->mActivityLifecycleObserver:Lyi/support/v1/YiLaf$ActivityLifecycleObserver;

    .line 507
    sget-object v0, Lyi/support/v1/YiLaf$ActivityLifecycleObserver;->mActivityLifecycleObserver:Lyi/support/v1/YiLaf$ActivityLifecycleObserver;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 509
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 522
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 531
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 528
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 518
    #calls: Lyi/support/v1/YiLaf$Decorator;->setCurrent(Landroid/app/Activity;)V
    invoke-static {p1}, Lyi/support/v1/YiLaf$Decorator;->access$1000(Landroid/app/Activity;)V

    .line 519
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 534
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 513
    #calls: Lyi/support/v1/YiLaf$Decorator;->setCurrent(Landroid/app/Activity;)V
    invoke-static {p1}, Lyi/support/v1/YiLaf$Decorator;->access$1000(Landroid/app/Activity;)V

    .line 514
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 525
    return-void
.end method
