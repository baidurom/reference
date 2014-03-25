.class Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;
.super Landroid/content/BroadcastReceiver;
.source "NormalUserSmsFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/NormalUserSmsFwkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/NormalUserSmsFwkExt;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;->this$0:Lcom/android/internal/telephony/NormalUserSmsFwkExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;->this$0:Lcom/android/internal/telephony/NormalUserSmsFwkExt;

    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->access$002(Lcom/android/internal/telephony/NormalUserSmsFwkExt;I)I

    .line 69
    const-string v2, "NormalUserSmsFwkExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive user switch userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;->this$0:Lcom/android/internal/telephony/NormalUserSmsFwkExt;

    #getter for: Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I
    invoke-static {v4}, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->access$000(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "mediatek.action.USER_SWITCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    .local v1, i:Landroid/content/Intent;
    const-string v2, "android.intent.extra.user_handle"

    iget-object v3, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;->this$0:Lcom/android/internal/telephony/NormalUserSmsFwkExt;

    #getter for: Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mUserId:I
    invoke-static {v3}, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->access$000(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    iget-object v2, p0, Lcom/android/internal/telephony/NormalUserSmsFwkExt$1;->this$0:Lcom/android/internal/telephony/NormalUserSmsFwkExt;

    #getter for: Lcom/android/internal/telephony/NormalUserSmsFwkExt;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/telephony/NormalUserSmsFwkExt;->access$100(Lcom/android/internal/telephony/NormalUserSmsFwkExt;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 80
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method
