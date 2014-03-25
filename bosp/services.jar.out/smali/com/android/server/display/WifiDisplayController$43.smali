.class Lcom/android/server/display/WifiDisplayController$43;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 3449
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$43;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3453
    const-string v0, "WifiDisplayController"

    const-string v1, "[Change resolution]: doesn\'t choose"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3457
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$43;->this$0:Lcom/android/server/display/WifiDisplayController;

    #calls: Lcom/android/server/display/WifiDisplayController;->revertResolutionChange()V
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$9500(Lcom/android/server/display/WifiDisplayController;)V

    .line 3458
    return-void
.end method
