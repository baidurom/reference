.class Lcom/android/server/AppWidgetService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppWidgetService;


# direct methods
.method constructor <init>(Lcom/android/server/AppWidgetService;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 384
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 389
    :cond_0
    const-string v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 390
    .local v5, userId:I
    if-gez v5, :cond_1

    .line 392
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_1
    :goto_0
    if-ltz v5, :cond_3

    .line 399
    iget-object v6, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #calls: Lcom/android/server/AppWidgetService;->getImplForUser(I)Lcom/android/server/AppWidgetServiceImpl;
    invoke-static {v6, v5}, Lcom/android/server/AppWidgetService;->access$000(Lcom/android/server/AppWidgetService;I)Lcom/android/server/AppWidgetServiceImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/AppWidgetServiceImpl;->sendInitialBroadcasts()V

    .line 422
    .end local v5           #userId:I
    :cond_2
    :goto_1
    return-void

    .line 394
    .restart local v5       #userId:I
    :catch_0
    move-exception v1

    .line 395
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 401
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    const-string v6, "AppWidgetService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect user handle supplied in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 403
    .end local v5           #userId:I
    :cond_4
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 404
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 405
    iget-object v6, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl;

    .line 406
    .local v4, service:Lcom/android/server/AppWidgetServiceImpl;
    invoke-virtual {v4}, Lcom/android/server/AppWidgetServiceImpl;->onConfigurationChanged()V

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 409
    .end local v2           #i:I
    .end local v4           #service:Lcom/android/server/AppWidgetServiceImpl;
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/AppWidgetService$2;->getSendingUserId()I

    move-result v3

    .line 410
    .local v3, sendingUser:I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_6

    .line 411
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v6, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 412
    iget-object v6, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl;

    .line 413
    .restart local v4       #service:Lcom/android/server/AppWidgetServiceImpl;
    invoke-virtual {v4, p2}, Lcom/android/server/AppWidgetServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 416
    .end local v2           #i:I
    .end local v4           #service:Lcom/android/server/AppWidgetServiceImpl;
    :cond_6
    iget-object v6, p0, Lcom/android/server/AppWidgetService$2;->this$0:Lcom/android/server/AppWidgetService;

    #getter for: Lcom/android/server/AppWidgetService;->mAppWidgetServices:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/AppWidgetService;->access$100(Lcom/android/server/AppWidgetService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AppWidgetServiceImpl;

    .line 417
    .restart local v4       #service:Lcom/android/server/AppWidgetServiceImpl;
    if-eqz v4, :cond_2

    .line 418
    invoke-virtual {v4, p2}, Lcom/android/server/AppWidgetServiceImpl;->onBroadcastReceived(Landroid/content/Intent;)V

    goto :goto_1
.end method
