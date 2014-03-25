.class Lcom/android/server/display/WifiDisplayController$36;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->prepareDialog(I)V
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
    .line 3342
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3345
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3346
    const-string v0, "WifiDisplayController"

    const-string v1, "onDismiss()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    #getter for: Lcom/android/server/display/WifiDisplayController;->mUserDecided:Z
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$8900(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3349
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$36;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->chooseNo_HDMIExcludeDialog_HDMIUpdate()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$9400(Lcom/android/server/display/WifiDisplayController;)V

    .line 3351
    :cond_1
    return-void
.end method
