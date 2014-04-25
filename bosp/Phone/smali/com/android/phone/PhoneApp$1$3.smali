.class Lcom/android/phone/PhoneApp$1$3;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PhoneApp$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/PhoneApp$1;

.field final synthetic val$active2:I


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1$3;->this$1:Lcom/android/phone/PhoneApp$1;

    iput p2, p0, Lcom/android/phone/PhoneApp$1$3;->val$active2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/phone/PhoneApp$1$3;->this$1:Lcom/android/phone/PhoneApp$1;

    iget-object v1, v1, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    iget v3, p0, Lcom/android/phone/PhoneApp$1$3;->val$active2:I

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 733
    .local v0, msg2:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneApp$1$3;->this$1:Lcom/android/phone/PhoneApp$1;

    iget-object v1, v1, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/PhoneApp$1$3;->val$active2:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V

    .line 734
    iget-object v1, p0, Lcom/android/phone/PhoneApp$1$3;->this$1:Lcom/android/phone/PhoneApp$1;

    iget-object v1, v1, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1408(Lcom/android/phone/PhoneApp;)I

    .line 735
    return-void
.end method
