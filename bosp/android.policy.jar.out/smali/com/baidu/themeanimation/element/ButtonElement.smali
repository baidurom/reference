.class public Lcom/baidu/themeanimation/element/ButtonElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "ButtonElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;,
        Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_CLICK_THREHOLD:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "button"


# instance fields
.field private mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

.field private mClickListener:Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;

.field private mLastDownTime:J

.field private mNormalState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field

.field private mPressedState:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    .line 166
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/themeanimation/element/ButtonElement;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    return v0
.end method

.method static synthetic access$002(Lcom/baidu/themeanimation/element/ButtonElement;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/baidu/themeanimation/element/ButtonElement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/themeanimation/element/ButtonElement;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/themeanimation/element/ButtonElement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 16
    iget-wide v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/baidu/themeanimation/element/ButtonElement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J

    return-wide p1
.end method


# virtual methods
.method public addElement(Lcom/baidu/themeanimation/element/Element;)V
    .locals 2
    .parameter "element"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->addElement(Lcom/baidu/themeanimation/element/Element;)V

    .line 41
    instance-of v1, p1, Lcom/baidu/themeanimation/element/StateElement;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 42
    check-cast v1, Lcom/baidu/themeanimation/element/StateElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/StateElement;->getState()I

    move-result v0

    .line 43
    .local v0, state:I
    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/Element;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/ButtonElement;->setNormalState(Ljava/util/List;)V

    .line 49
    .end local v0           #state:I
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v0       #state:I
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/Element;->getVisibleElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/ButtonElement;->setPressedState(Ljava/util/List;)V

    goto :goto_0
.end method

.method public clearView()V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 133
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    if-eqz v2, :cond_3

    .line 134
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .local v1, viewGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 139
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    .end local v0           #i:I
    :cond_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 144
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 145
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 148
    .end local v0           #i:I
    :cond_2
    iget-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->removeAllViews()V

    .line 150
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    .line 152
    .end local v1           #viewGroup:Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 35
    new-instance v0, Lcom/baidu/themeanimation/element/ButtonElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/ButtonElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-direct {v0, p0, p1, p2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;-><init>(Lcom/baidu/themeanimation/element/ButtonElement;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ButtonElement;->setView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mButtonElementView:Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;

    return-object v0
.end method

.method public getNormalState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    return-object v0
.end method

.method public getPressedState()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    return-object v0
.end method

.method public invokeTrigger(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "action"
    .parameter "context"

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/baidu/themeanimation/element/ButtonElement;->execTrigger(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mClickListener:Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_DOWN:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mClickListener:Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;

    invoke-interface {v0}, Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;->onClick()V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_UP:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mClickListener:Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;

    invoke-interface {v0}, Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;->onClick()V

    goto :goto_0

    .line 95
    :cond_2
    sget-object v0, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_DOUBLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mClickListener:Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;

    invoke-interface {v0}, Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;->onDobuleClick()V

    goto :goto_0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 29
    const-string v0, "Button"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ButtonElement"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClickListener(Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mClickListener:Lcom/baidu/themeanimation/element/ButtonElement$ClickListener;

    .line 53
    return-void
.end method

.method public setNormalState(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, normalElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    .line 61
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 62
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/VisibleElement;->setParentElement(Lcom/baidu/themeanimation/element/VisibleElement;)V

    .line 64
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/VisibleElement;->addFlag(I)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public setPressedState(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/themeanimation/element/VisibleElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, pressedElements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    .line 75
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v1, p0}, Lcom/baidu/themeanimation/element/VisibleElement;->setParentElement(Lcom/baidu/themeanimation/element/VisibleElement;)V

    .line 78
    iget-object v1, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/themeanimation/element/VisibleElement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/baidu/themeanimation/element/VisibleElement;->addFlag(I)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public startAnimations()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    iget v2, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    if-eqz v0, :cond_0

    .line 123
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/themeanimation/element/VisibleElement;

    invoke-virtual {v2}, Lcom/baidu/themeanimation/element/VisibleElement;->startAnimations()V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v1           #i:I
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;

    .line 112
    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;

    .line 116
    goto :goto_0

    .line 127
    :cond_0
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
