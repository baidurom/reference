.class public Lyi/support/v1/YiLaf;
.super Ljava/lang/Object;
.source "YiLaf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/support/v1/YiLaf$ActivityLifecycleObserver;,
        Lyi/support/v1/YiLaf$ActivityDecorator;,
        Lyi/support/v1/YiLaf$Decorator;,
        Lyi/support/v1/YiLaf$Interface;,
        Lyi/support/v1/YiLaf$OnSpinerItemListener;,
        Lyi/support/v1/YiLaf$MenuWrapper;,
        Lyi/support/v1/YiLaf$ActionBarWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mActionBarWrapperStub:Lyi/support/v1/YiLaf$ActionBarWrapper;

.field private static mActivityDecoratorStub:Lyi/support/v1/YiLaf$Interface;

.field private static mMenuWrapperStub:Lyi/support/v1/YiLaf$MenuWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lyi/support/v1/YiLaf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyi/support/v1/YiLaf;->TAG:Ljava/lang/String;

    .line 157
    new-instance v0, Lyi/support/v1/YiLaf$1;

    invoke-direct {v0}, Lyi/support/v1/YiLaf$1;-><init>()V

    sput-object v0, Lyi/support/v1/YiLaf;->mActivityDecoratorStub:Lyi/support/v1/YiLaf$Interface;

    .line 168
    new-instance v0, Lyi/support/v1/YiLaf$2;

    invoke-direct {v0}, Lyi/support/v1/YiLaf$2;-><init>()V

    sput-object v0, Lyi/support/v1/YiLaf;->mActionBarWrapperStub:Lyi/support/v1/YiLaf$ActionBarWrapper;

    .line 188
    new-instance v0, Lyi/support/v1/YiLaf$3;

    invoke-direct {v0}, Lyi/support/v1/YiLaf$3;-><init>()V

    sput-object v0, Lyi/support/v1/YiLaf;->mMenuWrapperStub:Lyi/support/v1/YiLaf$MenuWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$300()Lyi/support/v1/YiLaf$ActionBarWrapper;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lyi/support/v1/YiLaf;->mActionBarWrapperStub:Lyi/support/v1/YiLaf$ActionBarWrapper;

    return-object v0
.end method

.method static synthetic access$400()Lyi/support/v1/YiLaf$MenuWrapper;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lyi/support/v1/YiLaf;->mMenuWrapperStub:Lyi/support/v1/YiLaf$MenuWrapper;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lyi/support/v1/YiLaf;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static current()Lyi/support/v1/YiLaf$Interface;
    .locals 1

    .prologue
    .line 109
    #calls: Lyi/support/v1/YiLaf$Decorator;->current()Lyi/support/v1/YiLaf$Interface;
    invoke-static {}, Lyi/support/v1/YiLaf$Decorator;->access$200()Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    .line 110
    .local v0, decorator:Lyi/support/v1/YiLaf$Interface;
    if-nez v0, :cond_0

    sget-object v0, Lyi/support/v1/YiLaf;->mActivityDecoratorStub:Lyi/support/v1/YiLaf$Interface;

    .end local v0           #decorator:Lyi/support/v1/YiLaf$Interface;
    :cond_0
    return-object v0
.end method

.method public static enable(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 90
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->begin()V

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lyi/support/v1/YiLaf$ActivityLifecycleObserver;->enable(Landroid/app/Application;)V

    .line 95
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->elapse()V

    .line 98
    #calls: Lyi/support/v1/YiLaf$Decorator;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;
    invoke-static {p0}, Lyi/support/v1/YiLaf$Decorator;->access$000(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    .line 99
    .local v0, decorator:Lyi/support/v1/YiLaf$Interface;
    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lyi/support/v1/YiLaf$ActivityDecorator;

    .end local v0           #decorator:Lyi/support/v1/YiLaf$Interface;
    invoke-direct {v0, p0}, Lyi/support/v1/YiLaf$ActivityDecorator;-><init>(Landroid/app/Activity;)V

    .line 103
    .restart local v0       #decorator:Lyi/support/v1/YiLaf$Interface;
    :cond_0
    #calls: Lyi/support/v1/YiLaf$Decorator;->setCurrent(Lyi/support/v1/YiLaf$Interface;)V
    invoke-static {v0}, Lyi/support/v1/YiLaf$Decorator;->access$100(Lyi/support/v1/YiLaf$Interface;)V

    .line 105
    invoke-static {}, Lyi/support/v1/utils/Logger$Performance;->end()V

    .line 106
    return-void
.end method

.method public static get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;
    .locals 1
    .parameter "activity"

    .prologue
    .line 114
    #calls: Lyi/support/v1/YiLaf$Decorator;->get(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;
    invoke-static {p0}, Lyi/support/v1/YiLaf$Decorator;->access$000(Landroid/app/Activity;)Lyi/support/v1/YiLaf$Interface;

    move-result-object v0

    .line 115
    .local v0, decorator:Lyi/support/v1/YiLaf$Interface;
    if-nez v0, :cond_0

    sget-object v0, Lyi/support/v1/YiLaf;->mActivityDecoratorStub:Lyi/support/v1/YiLaf$Interface;

    .end local v0           #decorator:Lyi/support/v1/YiLaf$Interface;
    :cond_0
    return-object v0
.end method

.method public static removePreferencePadding(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x0

    .line 119
    const v1, #id@list#t

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 120
    .local v0, lv:Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 123
    :cond_0
    return-void
.end method
