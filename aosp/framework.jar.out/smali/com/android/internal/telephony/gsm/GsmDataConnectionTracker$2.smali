.class Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;
.super Ljava/lang/Object;
.source "GsmDataConnectionTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->onRecordsLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 2026
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2028
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->createAllApnList()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)V

    .line 2029
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    #getter for: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string/jumbo v1, "onRecordsLoaded: notifying data availability"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->log(Ljava/lang/String;)V

    .line 2031
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string/jumbo v1, "simLoaded"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->notifyOffApnsOfAvailability(Ljava/lang/String;)V

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker$2;->this$0:Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;

    const-string/jumbo v1, "simLoaded"

    #calls: Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->setupDataOnReadyApns(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;->access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTracker;Ljava/lang/String;)V

    .line 2034
    return-void
.end method
