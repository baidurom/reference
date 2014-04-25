.class Lcom/yi/internal/widget/VoiceprintUnlockView$2;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, minBar:I
    const/4 v1, 0x4

    .line 124
    .local v1, maxBar:I
    const/4 v0, 0x0

    .line 125
    .local v0, bar:I
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$000()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v3

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$200()Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;

    move-result-object v4

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v3

    if-nez v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 130
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$400()Lcom/baidu/voiceprint/VoiceprintHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/voiceprint/VoiceprintHandler;->getAmplitude()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit16 v3, v3, 0x2710

    add-int/2addr v0, v3

    .line 132
    :cond_2
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget v3, v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    if-le v0, v3, :cond_3

    .line 133
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iput v0, v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    .line 137
    :goto_1
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget v5, v5, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    .line 138
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget v3, v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    packed-switch v3, :pswitch_data_0

    .line 155
    :goto_2
    invoke-static {}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$300()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mUpdateRecordingViewTask:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$600(Lcom/yi/internal/widget/VoiceprintUnlockView;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v5, 0x32

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 156
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mWidgetCallbacks:Lcom/yi/internal/widget/LockScreenVoicePrintCallback;
    invoke-static {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$700(Lcom/yi/internal/widget/VoiceprintUnlockView;)Lcom/yi/internal/widget/LockScreenVoicePrintCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/yi/internal/widget/LockScreenVoicePrintCallback;->pokeWakelock()V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget-object v4, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    iget v4, v4, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Lcom/yi/internal/widget/VoiceprintUnlockView;->mCurrentBar:I

    goto :goto_1

    .line 140
    :pswitch_0
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x408012b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 143
    :pswitch_1
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x408012c

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 146
    :pswitch_2
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x408012d

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 149
    :pswitch_3
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x408012e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 152
    :pswitch_4
    iget-object v3, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$2;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #getter for: Lcom/yi/internal/widget/VoiceprintUnlockView;->mTipImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$500(Lcom/yi/internal/widget/VoiceprintUnlockView;)Landroid/widget/ImageView;

    move-result-object v3

    const v4, 0x408012f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 138
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
