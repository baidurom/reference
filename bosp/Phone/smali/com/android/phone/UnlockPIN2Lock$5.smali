.class Lcom/android/phone/UnlockPIN2Lock$5;
.super Ljava/lang/Thread;
.source "UnlockPIN2Lock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPIN2Lock;->unlockPIN2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPIN2Lock;

.field final synthetic val$callback_query:Landroid/os/Message;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$strPwd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPIN2Lock;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 712
    iput-object p1, p0, Lcom/android/phone/UnlockPIN2Lock$5;->this$0:Lcom/android/phone/UnlockPIN2Lock;

    iput-object p2, p0, Lcom/android/phone/UnlockPIN2Lock$5;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p3, p0, Lcom/android/phone/UnlockPIN2Lock$5;->val$strPwd:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/UnlockPIN2Lock$5;->val$callback_query:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/phone/UnlockPIN2Lock$5;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/UnlockPIN2Lock$5;->val$strPwd:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/UnlockPIN2Lock$5;->val$callback_query:Landroid/os/Message;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/IccCard;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 715
    const-string v0, "UnlockPIN2Lock "

    const-string v1, "[unlockPIN][new Thread][Run]-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-void
.end method
