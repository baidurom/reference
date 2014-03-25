.class Lcom/android/server/display/WifiDisplayController$26;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .parameter

    .prologue
    .line 3073
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3076
    const-string v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayNotification run()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mLevel:I
    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->access$8000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mLevel:I
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$8000(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3078
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->showNotification()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$8200(Lcom/android/server/display/WifiDisplayController;)V

    .line 3081
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$26;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/display/WifiDisplayController;->mNotiTimerStarted:Z
    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$8302(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3082
    return-void
.end method
