.class public Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;
.super Landroid/widget/RelativeLayout;
.source "ButtonElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/themeanimation/element/ButtonElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ButtonElementView"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/baidu/themeanimation/element/ButtonElement;


# direct methods
.method public constructor <init>(Lcom/baidu/themeanimation/element/ButtonElement;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    .line 175
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 177
    iput-object p2, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->mContext:Landroid/content/Context;

    .line 178
    iput-object p3, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->mHandler:Landroid/os/Handler;

    .line 180
    invoke-virtual {p1}, Lcom/baidu/themeanimation/element/ButtonElement;->genLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->setState(I)V

    .line 183
    return-void
.end method

.method private setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 188
    :cond_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    #getter for: Lcom/baidu/themeanimation/element/ButtonElement;->mState:I
    invoke-static {v3}, Lcom/baidu/themeanimation/element/ButtonElement;->access$000(Lcom/baidu/themeanimation/element/ButtonElement;)I

    move-result v3

    if-eq p1, v3, :cond_2

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    packed-switch p1, :pswitch_data_0

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    #setter for: Lcom/baidu/themeanimation/element/ButtonElement;->mState:I
    invoke-static {v3, p1}, Lcom/baidu/themeanimation/element/ButtonElement;->access$002(Lcom/baidu/themeanimation/element/ButtonElement;I)I

    .line 206
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 207
    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 192
    .end local v1           #i:I
    :pswitch_0
    iget-object v3, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    #getter for: Lcom/baidu/themeanimation/element/ButtonElement;->mNormalState:Ljava/util/List;
    invoke-static {v3}, Lcom/baidu/themeanimation/element/ButtonElement;->access$100(Lcom/baidu/themeanimation/element/ButtonElement;)Ljava/util/List;

    move-result-object v0

    .line 193
    goto :goto_0

    .line 196
    :pswitch_1
    iget-object v3, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    #getter for: Lcom/baidu/themeanimation/element/ButtonElement;->mPressedState:Ljava/util/List;
    invoke-static {v3}, Lcom/baidu/themeanimation/element/ButtonElement;->access$200(Lcom/baidu/themeanimation/element/ButtonElement;)Ljava/util/List;

    move-result-object v0

    .line 197
    goto :goto_0

    .line 211
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->removeAllViews()V

    .line 214
    if-eqz v0, :cond_2

    .line 215
    const/4 v2, 0x0

    .line 216
    .local v2, view:Landroid/view/View;
    const/4 v1, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/themeanimation/element/VisibleElement;

    iget-object v4, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Lcom/baidu/themeanimation/element/VisibleElement;->generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;

    move-result-object v2

    .line 218
    invoke-virtual {p0, v2}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->addView(Landroid/view/View;)V

    .line 220
    iget-object v3, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    invoke-virtual {v3}, Lcom/baidu/themeanimation/element/ButtonElement;->startAnimations()V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 228
    .end local v0           #elements:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/themeanimation/element/VisibleElement;>;"
    .end local v1           #i:I
    .end local v2           #view:Landroid/view/View;
    :cond_2
    return-void

    .line 190
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 232
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 235
    .local v0, action:I
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 238
    .local v3, result:Ljava/lang/Boolean;
    if-nez v0, :cond_3

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 240
    .local v1, currentTime:J
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    #getter for: Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J
    invoke-static {v4}, Lcom/baidu/themeanimation/element/ButtonElement;->access$300(Lcom/baidu/themeanimation/element/ButtonElement;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 241
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    sget-object v5, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_DOWN:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/baidu/themeanimation/element/ButtonElement;->invokeTrigger(Ljava/lang/String;Landroid/content/Context;)V

    .line 242
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 249
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    #setter for: Lcom/baidu/themeanimation/element/ButtonElement;->mLastDownTime:J
    invoke-static {v4, v1, v2}, Lcom/baidu/themeanimation/element/ButtonElement;->access$302(Lcom/baidu/themeanimation/element/ButtonElement;J)J

    .line 250
    invoke-direct {p0, v9}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->setState(I)V

    .line 255
    .end local v1           #currentTime:J
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 244
    .restart local v1       #currentTime:J
    :cond_2
    iget-object v4, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->this$0:Lcom/baidu/themeanimation/element/ButtonElement;

    sget-object v5, Lcom/baidu/themeanimation/element/TriggerElement;->ACTION_DOUBLE:Ljava/lang/String;

    iget-object v6, p0, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/baidu/themeanimation/element/ButtonElement;->invokeTrigger(Ljava/lang/String;Landroid/content/Context;)V

    .line 245
    sget-object v4, Lcom/baidu/themeanimation/element/LockScreenElement;->mIsInStartArea:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 246
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    .line 251
    .end local v1           #currentTime:J
    :cond_3
    if-ne v0, v9, :cond_1

    .line 252
    invoke-direct {p0, v8}, Lcom/baidu/themeanimation/element/ButtonElement$ButtonElementView;->setState(I)V

    goto :goto_1
.end method
