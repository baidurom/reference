.class Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;
.super Ljava/lang/Thread;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckLine1Number"
.end annotation


# static fields
.field private static final SUPPLY_LINE1NUMBER_COMPLETE:I = 0x66


# instance fields
.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private mResult:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    .line 956
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 947
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mDone:Z

    .line 948
    iput-boolean v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mResult:Z

    .line 957
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 958
    return-void
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mResult:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mDone:Z

    return p1
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 962
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 963
    monitor-enter p0

    .line 964
    :try_start_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number$1;-><init>(Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mHandler:Landroid/os/Handler;

    .line 982
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 983
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 985
    return-void

    .line 983
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized supplyLine1Number(Ljava/lang/String;)Z
    .locals 4
    .parameter "number"

    .prologue
    .line 989
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 991
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 992
    :catch_0
    move-exception v1

    .line 993
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 989
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 996
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x66

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, callback:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1, v0}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 999
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_1

    .line 1002
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1003
    :catch_1
    move-exception v1

    .line 1005
    .restart local v1       #e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1009
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/PhoneInterfaceManager$CheckLine1Number;->mResult:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v2
.end method
