.class Lyi/widget/ScrollTabBar$ScrollTabBarStub;
.super Ljava/lang/Object;
.source "ScrollTabBar.java"

# interfaces
.implements Lyi/widget/ScrollTabBar$Interface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/ScrollTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollTabBarStub"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lyi/widget/ScrollTabBar$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lyi/widget/ScrollTabBar$ScrollTabBarStub;-><init>()V

    return-void
.end method


# virtual methods
.method public hideBadgeView(I)V
    .locals 0
    .parameter "tabIndex"

    .prologue
    .line 78
    return-void
.end method

.method public onScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 76
    return-void
.end method

.method public setTabOnClickListener(ILandroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "positon"
    .parameter "scrollView"
    .parameter "l"

    .prologue
    .line 74
    return-void
.end method

.method public showBadgeView(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "tabIndex"

    .prologue
    .line 72
    return-void
.end method

.method public showBadgeView(Landroid/app/Activity;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "activity"
    .parameter "tabIndex"
    .parameter "text"

    .prologue
    .line 70
    return-void
.end method
