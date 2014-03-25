.class Lcom/android/server/DeviceStorageMonitorService$1;
.super Landroid/os/Handler;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_6

    .line 178
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$100(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$200(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mIPOBootup:Z
    invoke-static {v4, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 180
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$200(Lcom/android/server/DeviceStorageMonitorService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mConfigChanged:Z
    invoke-static {v4, v3}, Lcom/android/server/DeviceStorageMonitorService;->access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 183
    :cond_1
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20500f8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, string1:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20500f9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, string2:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mTotalSize:J
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$400(Lcom/android/server/DeviceStorageMonitorService;)J

    move-result-wide v4

    const-wide/32 v6, 0x3200000

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 188
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    new-array v5, v8, [Ljava/lang/String;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/DeviceStorageMonitorService;->access$502(Lcom/android/server/DeviceStorageMonitorService;[Ljava/lang/String;)[Ljava/lang/String;

    .line 196
    :goto_0
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, #drawable@ic_dialog_alert#t

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x20500bd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/DeviceStorageMonitorService;->access$500(Lcom/android/server/DeviceStorageMonitorService;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/DeviceStorageMonitorService$1$1;

    invoke-direct {v6, p0}, Lcom/android/server/DeviceStorageMonitorService$1$1;-><init>(Lcom/android/server/DeviceStorageMonitorService$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/DeviceStorageMonitorService;->access$300(Lcom/android/server/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x104

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v4}, Lcom/android/server/DeviceStorageMonitorService;->access$002(Lcom/android/server/DeviceStorageMonitorService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 227
    .end local v0           #string1:Ljava/lang/String;
    .end local v1           #string2:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x7d3

    invoke-virtual {v2, v4}, Landroid/view/Window;->setType(I)V

    .line 228
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 230
    const-string v2, "ctsrunning"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_5

    .line 231
    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/server/DeviceStorageMonitorService;->access$000(Lcom/android/server/DeviceStorageMonitorService;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 245
    :cond_3
    :goto_1
    return-void

    .line 192
    .restart local v0       #string1:Ljava/lang/String;
    .restart local v1       #string2:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    new-array v2, v2, [Ljava/lang/String;

    aput-object v0, v2, v3

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->mStrings:[Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$502(Lcom/android/server/DeviceStorageMonitorService;[Ljava/lang/String;)[Ljava/lang/String;

    goto/16 :goto_0

    .line 233
    .end local v0           #string1:Ljava/lang/String;
    .end local v1           #string2:Ljava/lang/String;
    :cond_5
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "In CTS Running,do not show the no space dailog"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v2, :cond_7

    .line 241
    const-string v2, "DeviceStorageMonitorService"

    const-string v3, "Will not process invalid message"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_7
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v2, :cond_8

    :goto_2
    #calls: Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V
    invoke-static {v4, v2}, Lcom/android/server/DeviceStorageMonitorService;->access$600(Lcom/android/server/DeviceStorageMonitorService;Z)V

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_2
.end method
