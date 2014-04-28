.class Lyi/support/v1/YiLaf$Decorator;
.super Ljava/lang/Object;
.source "YiLaf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/support/v1/YiLaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decorator"
.end annotation


# static fields
.field private static mCurrentDecorator:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lyi/support/v1/YiLaf$Interface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 129
    invoke-static {p0}, Lyi/support/v1/YiLaf$Decorator;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lyi/support/v1/YiLaf$Interface;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-static {p0}, Lyi/support/v1/YiLaf$Decorator;->setCurrent(Lyi/support/v1/YiLaf$Interface;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/app/Activity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 129
    invoke-static {p0}, Lyi/support/v1/YiLaf$Decorator;->setCurrent(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200()Lyi/support/v1/YiLaf$Interface;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lyi/support/v1/YiLaf$Decorator;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    return-object v0
.end method

.method private static current()Lyi/support/v1/YiLaf$Interface;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lyi/support/v1/YiLaf$Decorator;->mCurrentDecorator:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lyi/support/v1/YiLaf$Decorator;->mCurrentDecorator:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyi/support/v1/YiLaf$Interface;

    goto :goto_0
.end method

.method private static get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;
    .locals 2
    .parameter "activity"

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 139
    .local v0, callback:Landroid/view/Window$Callback;
    instance-of v1, v0, Lyi/support/v1/YiLaf$Interface;

    if-eqz v1, :cond_0

    .line 140
    check-cast v0, Lyi/support/v1/YiLaf$Interface;

    .line 142
    .end local v0           #callback:Landroid/view/Window$Callback;
    :goto_0
    return-object v0

    .restart local v0       #callback:Landroid/view/Window$Callback;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static setCurrent(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 153
    invoke-static {p0}, Lyi/support/v1/YiLaf$Decorator;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    invoke-static {v0}, Lyi/support/v1/YiLaf$Decorator;->setCurrent(Lyi/support/v1/YiLaf$Interface;)V

    .line 154
    return-void
.end method

.method private static setCurrent(Lyi/support/v1/YiLaf$Interface;)V
    .locals 1
    .parameter "decorator"

    .prologue
    .line 147
    invoke-static {}, Lyi/support/v1/YiLaf$Decorator;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lyi/support/v1/YiLaf$Decorator;->mCurrentDecorator:Ljava/lang/ref/WeakReference;

    .line 150
    :cond_0
    return-void
.end method
