.class public Landroid/net/DhcpStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "DhcpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$DhcpAction;
    }
.end annotation


# static fields
.field private static final ACTION_DHCPV6_RENEW:Ljava/lang/String; = "android.net.wifi.DHCPV6_RENEW"

.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_SETUP_V6:I = 0x30008

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = true

.field public static final DHCPV4:I = 0x1

.field public static final DHCPV4_V6:I = 0x3

.field public static final DHCPV6:I = 0x2

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/util/StateMachine;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDhcpInfo:Landroid/net/DhcpInfoInternal;

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsDhcpV6:Z

.field private mIsRegistered:Z

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lcom/android/internal/util/State;

.field private mStoppedState:Lcom/android/internal/util/State;

.field private mWaitBeforeRenewalState:Lcom/android/internal/util/State;

.field private mWaitBeforeStartState:Lcom/android/internal/util/State;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "controller"
    .parameter "intf"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 137
    const-string v2, "DhcpStateMachine"

    invoke-direct {p0, v2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 84
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 111
    new-instance v2, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 112
    new-instance v2, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    .line 113
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    .line 114
    new-instance v2, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    .line 115
    new-instance v2, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    .line 120
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 121
    iput-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 139
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    .line 141
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 143
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.DHCP_RENEW"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 145
    .local v0, dhcpRenewalIntent:Landroid/content/Intent;
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 147
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 148
    .local v1, powerManager:Landroid/os/PowerManager;
    const-string v2, "DHCP"

    invoke-virtual {v1, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 149
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 151
    new-instance v2, Landroid/net/DhcpStateMachine$1;

    invoke-direct {v2, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 161
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.wifi.DHCP_RENEW"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    iput-boolean v6, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 164
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 165
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 166
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 167
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 168
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    iget-object v3, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2, v3}, Landroid/net/DhcpStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 170
    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v2}, Landroid/net/DhcpStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    return v0
.end method

.method static synthetic access$100(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/DhcpStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    return p1
.end method

.method static synthetic access$2100(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/DhcpStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Landroid/net/DhcpStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/DhcpStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->setForDhcpV6(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/net/DhcpStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return v0
.end method

.method static synthetic access$800(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/StateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/DhcpStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "context"
    .parameter "controller"
    .parameter "intf"

    .prologue
    .line 175
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)V

    .line 176
    .local v0, dsm:Landroid/net/DhcpStateMachine;
    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->start()V

    .line 177
    return-object v0
.end method

.method private runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 12
    .parameter "dhcpAction"

    .prologue
    const v11, 0x30005

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 393
    const/4 v3, 0x0

    .line 394
    .local v3, success:Z
    new-instance v0, Landroid/net/DhcpInfoInternal;

    invoke-direct {v0}, Landroid/net/DhcpInfoInternal;-><init>()V

    .line 396
    .local v0, dhcpInfoInternal:Landroid/net/DhcpInfoInternal;
    sget-object v4, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v4, :cond_8

    .line 397
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    if-eqz v4, :cond_0

    .line 398
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v4}, Landroid/net/DhcpInfoInternal;->clear()V

    .line 401
    :cond_0
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_5

    .line 402
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to stop Dhcp on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_1
    :goto_0
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_6

    const-string v4, "V6"

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " request on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_7

    .line 412
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    .line 416
    :goto_2
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    .line 428
    :cond_2
    :goto_3
    if-eqz v3, :cond_f

    .line 429
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_b

    const-string v4, "V6"

    :goto_4
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " succeeded on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget v4, v0, Landroid/net/DhcpInfoInternal;->leaseDuration:I

    int-to-long v1, v4

    .line 431
    .local v1, leaseDuration:J
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dhcpInfoInternal:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-wide/16 v7, 0x0

    cmp-long v4, v1, v7

    if-ltz v4, :cond_4

    .line 435
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_c

    .line 438
    const-wide/16 v7, 0x12c

    cmp-long v4, v1, v7

    if-gez v4, :cond_3

    .line 439
    const-wide/16 v1, 0x12c

    .line 444
    :cond_3
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x1e0

    mul-long/2addr v9, v1

    add-long/2addr v7, v9

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 462
    :cond_4
    :goto_5
    iget-object v7, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_e

    move v4, v5

    :goto_6
    invoke-virtual {v7, v11, v6, v4, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 481
    .end local v1           #leaseDuration:J
    :goto_7
    return v3

    .line 406
    :cond_5
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 407
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to stop Dhcpv6 on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 410
    :cond_6
    const-string v4, "V4"

    goto/16 :goto_1

    .line 414
    :cond_7
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpv6(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    goto/16 :goto_2

    .line 417
    :cond_8
    sget-object v4, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v4, :cond_2

    .line 418
    const-string v7, "DhcpStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCP"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v4, :cond_9

    const-string v4, "V6"

    :goto_8
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " renewal on "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", pid:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    iget v8, v8, Landroid/net/DhcpInfoInternal;->pidForRenew:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    iget v4, v4, Landroid/net/DhcpInfoInternal;->pidForRenew:I

    iput v4, v0, Landroid/net/DhcpInfoInternal;->pidForRenew:I

    .line 420
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_a

    .line 421
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    .line 425
    :goto_9
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpInfo:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0, v4}, Landroid/net/DhcpInfoInternal;->updateFromDhcpRequest(Landroid/net/DhcpInfoInternal;)V

    goto/16 :goto_3

    .line 418
    :cond_9
    const-string v4, "V4"

    goto :goto_8

    .line 423
    :cond_a
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4, v0}, Landroid/net/NetworkUtils;->runDhcpv6Renew(Ljava/lang/String;Landroid/net/DhcpInfoInternal;)Z

    move-result v3

    goto :goto_9

    .line 429
    :cond_b
    const-string v4, "V4"

    goto/16 :goto_4

    .line 449
    .restart local v1       #leaseDuration:J
    :cond_c
    long-to-double v7, v1

    const-wide/high16 v9, 0x4062

    cmpg-double v4, v7, v9

    if-gez v4, :cond_d

    .line 450
    const-wide/16 v1, 0x90

    .line 452
    :cond_d
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V6 leaseDuration:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v1

    add-long/2addr v7, v9

    iget-object v9, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_5

    :cond_e
    move v4, v6

    .line 462
    goto/16 :goto_6

    .line 465
    .end local v1           #leaseDuration:J
    :cond_f
    iget-boolean v4, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-nez v4, :cond_10

    .line 466
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCPV4 failed on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 473
    :goto_a
    sget-object v4, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v4, :cond_11

    .line 474
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const/4 v6, 0x3

    invoke-virtual {v4, v11, v5, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 470
    :cond_10
    const-string v4, "DhcpStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DHCPV6 failed on "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpv6Error()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/NetworkUtils;->stopDhcpv6(Ljava/lang/String;)Z

    goto :goto_a

    .line 477
    :cond_11
    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    iget-boolean v7, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v7, :cond_12

    move v6, v5

    :cond_12
    invoke-virtual {v4, v11, v5, v6}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7
.end method

.method private setForDhcpV6(Z)V
    .locals 6
    .parameter "isDhcpV6"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 124
    iput-boolean p1, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.DHCPV6_RENEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 126
    .local v0, dhcpRenewalIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 127
    iget-boolean v1, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iput-boolean v3, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 131
    :cond_0
    const-string v1, "DhcpStateMachine"

    const-string v2, "Register receiver for V6"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.DHCPV6_RENEW"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    iput-boolean v5, p0, Landroid/net/DhcpStateMachine;->mIsRegistered:Z

    .line 134
    return-void
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 200
    return-void
.end method

.method protected onQuitting()V
    .locals 4

    .prologue
    .line 203
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lcom/android/internal/util/StateMachine;

    const v2, 0x30006

    iget-boolean v0, p0, Landroid/net/DhcpStateMachine;->mIsDhcpV6:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    return-void

    .line 203
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 191
    return-void
.end method
