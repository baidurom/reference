.class Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;
.super Ljava/util/TimerTask;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/VTInCallScreen$DialogCancelTimer;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;->this$1:Lcom/android/phone/VTInCallScreen$DialogCancelTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;->this$1:Lcom/android/phone/VTInCallScreen$DialogCancelTimer;

    #getter for: Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->asker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->access$800(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;->this$1:Lcom/android/phone/VTInCallScreen$DialogCancelTimer;

    #getter for: Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->asker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->access$800(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;->this$1:Lcom/android/phone/VTInCallScreen$DialogCancelTimer;

    #getter for: Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->asker:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->access$800(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 1169
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;->this$1:Lcom/android/phone/VTInCallScreen$DialogCancelTimer;

    #getter for: Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->timer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->access$900(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1170
    return-void
.end method
