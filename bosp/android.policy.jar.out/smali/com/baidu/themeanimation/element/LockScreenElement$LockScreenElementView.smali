.class public Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;
.super Landroid/widget/RelativeLayout;
.source "LockScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/LockScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LockScreenElementView"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/LockScreenElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/LockScreenElement;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 162
    iput-object p1, p0, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->this$0:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 163
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 164
    iput-object p2, p0, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->mContext:Landroid/content/Context;

    .line 165
    iput-object p3, p0, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->mHandler:Landroid/os/Handler;

    .line 166
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    .line 171
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/baidu/themeanimation/element/LockScreenElement;->mIsInStartArea:Ljava/lang/Boolean;

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 173
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->this$0:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/baidu/themeanimation/element/LockScreenElement$LockScreenElementView;->this$0:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/LockScreenElement;->getVisibleElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/Element;

    .line 175
    .local v0, element:Lcom/baidu/themeanimation/element/Element;
    instance-of v2, v0, Lcom/baidu/themeanimation/element/UnlockerElement;

    if-eqz v2, :cond_0

    .line 176
    check-cast v0, Lcom/baidu/themeanimation/element/UnlockerElement;

    .end local v0           #element:Lcom/baidu/themeanimation/element/Element;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/baidu/themeanimation/element/UnlockerElement;->inStartPoint(FF)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/baidu/themeanimation/element/LockScreenElement;->mIsInStartArea:Ljava/lang/Boolean;

    .line 173
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 182
    .end local v1           #i:I
    :cond_1
    return v4
.end method
