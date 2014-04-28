.class Lcom/baidu/notificationdefense/NotificationDefenseService$1;
.super Ljava/lang/Object;
.source "NotificationDefenseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/notificationdefense/NotificationDefenseService;->defense(Ljava/lang/String;ILandroid/app/Notification;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/notificationdefense/NotificationDefenseService;

.field final synthetic val$cloneId:I

.field final synthetic val$clonePkg:Ljava/lang/String;

.field final synthetic val$ntf:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/baidu/notificationdefense/NotificationDefenseService;Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->this$0:Lcom/baidu/notificationdefense/NotificationDefenseService;

    iput-object p2, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->val$clonePkg:Ljava/lang/String;

    iput p3, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->val$cloneId:I

    iput-object p4, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->val$ntf:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->this$0:Lcom/baidu/notificationdefense/NotificationDefenseService;

    #getter for: Lcom/baidu/notificationdefense/NotificationDefenseService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/notificationdefense/NotificationDefenseService;->access$000(Lcom/baidu/notificationdefense/NotificationDefenseService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->val$clonePkg:Ljava/lang/String;

    iget v2, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->val$cloneId:I

    iget-object v3, p0, Lcom/baidu/notificationdefense/NotificationDefenseService$1;->val$ntf:Landroid/app/Notification;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/notificationdefense/NfLogsHelper;->savelog(Landroid/content/Context;Ljava/lang/String;ILandroid/app/Notification;)V

    .line 202
    return-void
.end method
