.class Lcom/android/server/am/ServiceRecord$1;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->postNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$appPid:I

.field final synthetic val$appUid:I

.field final synthetic val$localForegroundId:I

.field final synthetic val$localForegroundNoti:Landroid/app/Notification;

.field final synthetic val$localPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIILandroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iput p5, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iput-object p6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 365
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/NotificationManagerService;

    .line 367
    .local v0, nm:Lcom/android/server/NotificationManagerService;
    if-nez v0, :cond_0

    .line 384
    :goto_0
    return-void

    .line 371
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v7, v1, [I

    .line 372
    .local v7, outId:[I
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundId:I

    iget-object v6, p0, Lcom/android/server/am/ServiceRecord$1;->val$localForegroundNoti:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    .end local v7           #outId:[I
    :catch_0
    move-exception v9

    .line 375
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v1, "ActivityManager"

    const-string v2, "Error showing notification for service"

    invoke-static {v1, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 379
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v2, v2, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    const/4 v4, 0x0

    move-object v5, v11

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 381
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$1;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v1, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$1;->val$appUid:I

    iget v3, p0, Lcom/android/server/am/ServiceRecord$1;->val$appPid:I

    iget-object v4, p0, Lcom/android/server/am/ServiceRecord$1;->val$localPackageName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad notification for startForeground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
