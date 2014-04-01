.class Lcom/android/server/NetworkManagementService$1;
.super Ljava/lang/Thread;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$ifacename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$1;->val$ifacename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->val$ifacename:Ljava/lang/String;

    #calls: Lcom/android/server/NetworkManagementService;->isWifi(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    #getter for: Lcom/android/server/NetworkManagementService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v0

    const-string v1, "softap setflag"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 271
    :cond_0
    return-void
.end method
