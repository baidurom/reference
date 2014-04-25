.class Lcom/android/phone/VTInCallScreen$16;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->showReCallDialogEx(ILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 2098
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$16;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$16;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$16;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 2105
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$16;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTInCallScreen$16;->this$0:Lcom/android/phone/VTInCallScreen;

    #getter for: Lcom/android/phone/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v1}, Lcom/android/phone/VTInCallScreen;->access$400(Lcom/android/phone/VTInCallScreen;)Lcom/android/phone/InCallScreen;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 2108
    return-void
.end method
