.class Lcom/android/phone/PowerOnUnlockSIMLock$3;
.super Ljava/lang/Object;
.source "PowerOnUnlockSIMLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PowerOnUnlockSIMLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PowerOnUnlockSIMLock;


# direct methods
.method constructor <init>(Lcom/android/phone/PowerOnUnlockSIMLock;)V
    .locals 0
    .parameter

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$3;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/phone/PowerOnUnlockSIMLock$3;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    iget-object v1, p0, Lcom/android/phone/PowerOnUnlockSIMLock$3;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->DLGMOREINFOIMAGE:I
    invoke-static {v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnUnlockSIMLock;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/PowerOnUnlockSIMLock;->showDialog(I)V

    .line 213
    const-string v0, "PowerOnUnlockSIMLock "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[mBtnMoreInfo][onClickListener][DLGMOREINFOIMAGE)]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PowerOnUnlockSIMLock$3;->this$0:Lcom/android/phone/PowerOnUnlockSIMLock;

    #getter for: Lcom/android/phone/PowerOnUnlockSIMLock;->DLGMOREINFOIMAGE:I
    invoke-static {v2}, Lcom/android/phone/PowerOnUnlockSIMLock;->access$000(Lcom/android/phone/PowerOnUnlockSIMLock;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void
.end method
