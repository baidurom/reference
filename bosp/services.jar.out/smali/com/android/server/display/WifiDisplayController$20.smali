.class Lcom/android/server/display/WifiDisplayController$20;
.super Landroid/database/ContentObserver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2465
    if-eqz p1, :cond_0

    .line 2498
    :goto_0
    return-void

    .line 2469
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_display_toast_time"

    const/16 v5, 0x14

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$6302(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2472
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_notification_time"

    const/16 v5, 0x78

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    #setter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I
    invoke-static {v0, v3}, Lcom/android/server/display/WifiDisplayController;->access$6502(Lcom/android/server/display/WifiDisplayController;I)I

    .line 2475
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_sqc_info_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    #setter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->access$6602(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2478
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_qe_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    #setter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z
    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->access$6702(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2481
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->access$6400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_display_auto_channel_selection"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    #setter for: Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$6802(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 2485
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange(), t_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_TOAST_TIME:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6300(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",n_time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_DISPLAY_NOTIFICATION_TIME:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6500(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",sqc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_SQC_INFO_ON:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6600(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qe:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->WFDCONTROLLER_QE_ON:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6700(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",autoChannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mAutoChannelSelection:Z
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$6800(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleResolutionChange()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$6900(Lcom/android/server/display/WifiDisplayController;)V

    .line 2494
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleLatencyProfilingChange()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7000(Lcom/android/server/display/WifiDisplayController;)V

    .line 2495
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->handleSecureOptionChange()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$7100(Lcom/android/server/display/WifiDisplayController;)V

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 2475
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 2478
    goto/16 :goto_2

    :cond_3
    move v1, v2

    .line 2481
    goto :goto_3
.end method
