.class Lcom/baidu/internal/keyguard/slide/WeatherView$1;
.super Landroid/os/Handler;
.source "WeatherView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/WeatherView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/WeatherView;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    .line 48
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 65
    const-string v2, "WeatherView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow Message...("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 50
    :pswitch_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$000(Lcom/baidu/internal/keyguard/slide/WeatherView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$000(Lcom/baidu/internal/keyguard/slide/WeatherView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 52
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$000(Lcom/baidu/internal/keyguard/slide/WeatherView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    .line 53
    .local v0, alpha:F
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 54
    .local v1, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 55
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$000(Lcom/baidu/internal/keyguard/slide/WeatherView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 56
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mWeatherBackground:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$000(Lcom/baidu/internal/keyguard/slide/WeatherView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$100(Lcom/baidu/internal/keyguard/slide/WeatherView;)Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/WeatherView$1;->this$0:Lcom/baidu/internal/keyguard/slide/WeatherView;

    #getter for: Lcom/baidu/internal/keyguard/slide/WeatherView;->mUnlockView:Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/WeatherView;->access$100(Lcom/baidu/internal/keyguard/slide/WeatherView;)Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "black"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/baidu/internal/keyguard/slide/SmartMultiUnlockView;->setNotificationTextClr(ZI)V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x191
        :pswitch_0
    .end packed-switch
.end method
