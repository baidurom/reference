.class Lcom/android/phone/UnlockPUK2Lock$5;
.super Ljava/lang/Thread;
.source "UnlockPUK2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPUK2Lock;->unlockPUK2(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUK2Lock;

.field final synthetic val$callback_query:Landroid/os/Message;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$strPUK:Ljava/lang/String;

.field final synthetic val$strPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUK2Lock;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 752
    iput-object p1, p0, Lcom/android/phone/UnlockPUK2Lock$5;->this$0:Lcom/android/phone/UnlockPUK2Lock;

    iput-object p2, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$strPUK:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$strPwd:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$callback_query:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$strPUK:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$strPwd:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/UnlockPUK2Lock$5;->val$callback_query:Landroid/os/Message;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 755
    const-string v0, "UnlockPUK2Lock "

    const-string v1, "[unlockPUK][new Thread][Run]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    return-void
.end method
