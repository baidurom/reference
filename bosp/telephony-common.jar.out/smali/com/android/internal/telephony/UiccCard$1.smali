.class Lcom/android/internal/telephony/UiccCard$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCard;->access$000(Lcom/android/internal/telephony/UiccCard;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 247
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v3, "Reboot due to SIM swap"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCard;->access$200(Lcom/android/internal/telephony/UiccCard;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 251
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 253
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    monitor-exit v2

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
