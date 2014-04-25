.class Lcom/android/phone/UnlockPUK2Lock$6;
.super Ljava/lang/Thread;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPUK2Lock;->unlockPUK2(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;

.field final synthetic val$callback_query2:Landroid/os/Message;

.field final synthetic val$mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field final synthetic val$strPUK:Ljava/lang/String;

.field final synthetic val$strPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$6;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object p2, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object p3, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$strPUK:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$strPwd:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$callback_query2:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$strPUK:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$strPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$6;->val$callback_query2:Landroid/os/Message;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 784
    return-void
.end method
