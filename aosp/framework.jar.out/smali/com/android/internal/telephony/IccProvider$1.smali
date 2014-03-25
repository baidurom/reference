.class Lcom/android/internal/telephony/IccProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "IccProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/IccProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/IccProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/internal/telephony/IccProvider;->mUserId:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccProvider;->access$002(Lcom/android/internal/telephony/IccProvider;I)I

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IccProvider user switch userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccProvider$1;->this$0:Lcom/android/internal/telephony/IccProvider;

    #getter for: Lcom/android/internal/telephony/IccProvider;->mUserId:I
    invoke-static {v3}, Lcom/android/internal/telephony/IccProvider;->access$000(Lcom/android/internal/telephony/IccProvider;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/internal/telephony/IccProvider;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/IccProvider;->access$100(Lcom/android/internal/telephony/IccProvider;Ljava/lang/String;)V

    .line 198
    :cond_0
    return-void
.end method
