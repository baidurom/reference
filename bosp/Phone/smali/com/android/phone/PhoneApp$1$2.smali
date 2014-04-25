.class Lcom/android/phone/PhoneApp$1$2;
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

.field final synthetic val$active1:I


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp$1;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1$2;->this$1:Lcom/android/phone/PhoneApp$1;

    iput p2, p0, Lcom/android/phone/PhoneApp$1$2;->val$active1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 706
    iget-object v1, p0, Lcom/android/phone/PhoneApp$1$2;->this$1:Lcom/android/phone/PhoneApp$1;

    iget-object v1, v1, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    iget v3, p0, Lcom/android/phone/PhoneApp$1$2;->val$active1:I

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 707
    .local v0, msg2:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/PhoneApp$1$2;->this$1:Lcom/android/phone/PhoneApp$1;

    iget-object v1, v1, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget v2, p0, Lcom/android/phone/PhoneApp$1$2;->val$active1:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V

    .line 708
    iget-object v1, p0, Lcom/android/phone/PhoneApp$1$2;->this$1:Lcom/android/phone/PhoneApp$1;

    iget-object v1, v1, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->access$1408(Lcom/android/phone/PhoneApp;)I

    .line 709
    return-void
.end method
