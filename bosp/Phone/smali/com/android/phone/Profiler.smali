.class public Lcom/android/phone/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# static fields
.field public static final CallControllerEnterPlaceCallInternal:Ljava/lang/String; = "+CallController.placeCallInternal"

.field public static final CallControllerLeavePlaceCallInternal:Ljava/lang/String; = "-CallController.placeCallInternal"

.field public static final CallOptionHandlerEnterOnClick:Ljava/lang/String; = "+CallOptionHandler.onClick"

.field public static final CallOptionHandlerEnterRun:Ljava/lang/String; = "+CallOptionHandler.run"

.field public static final CallOptionHandlerEnterStartActivity:Ljava/lang/String; = "+CallOptionHandler.StartActivity"

.field public static final CallOptionHandlerLeaveOnClick:Ljava/lang/String; = "-CallOptionHandler.onClick"

.field public static final CallOptionHandlerLeaveRun:Ljava/lang/String; = "-CallOptionHandler.run"

.field public static final CallOptionHandlerLeaveStartActivity:Ljava/lang/String; = "-CallOptionHandler.StartActivity"

.field public static final CallOptionHelperEnterMakeVoiceCall:Ljava/lang/String; = "+CallOptionHelper.makeVoiceCall"

.field public static final CallOptionHelperLeaveMakeVoiceCall:Ljava/lang/String; = "-CallOptionHelper.makeVoiceCall"

.field public static final InCallScreenEnterOnCreate:Ljava/lang/String; = "+InCallScreen.onCreate"

.field public static final InCallScreenEnterOnResume:Ljava/lang/String; = "+InCallScreen.onResume"

.field public static final InCallScreenLeaveOnCreate:Ljava/lang/String; = "-InCallScreen.onCreate"

.field public static final InCallScreenLeaveOnResume:Ljava/lang/String; = "-InCallScreen.onResume"

.field public static final InCallScreenPostDraw:Ljava/lang/String; = "InCallScreen.PostDraw"

.field public static final IsLocalEmergencyNumberEnter:Ljava/lang/String; = "+PhoneNumberUtils.isLocalEmergencyNumber"

.field public static final IsLocalEmergencyNumberExit:Ljava/lang/String; = "-PhoneNumberUtils.isLocalEmergencyNumber"

.field public static final IsPotentialLocalEmergencyNumberEnter:Ljava/lang/String; = "+PhoneNumberUtils.isPotentialLocalEmergencyNumber"

.field public static final IsPotentialLocalEmergencyNumberExit:Ljava/lang/String; = "-PhoneNumberUtils.isPotentialLocalEmergencyNumber"

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneApp"

.field public static final OutgoingBroadcasterReceiverEnterOnReceive:Ljava/lang/String; = "+OutgoingBroadcasterReceiver.onReceiver"

.field public static final OutgoingBroadcasterReceiverLeaveOnReceive:Ljava/lang/String; = "-OutgoingBroadcasterReceiver.onReceiver"

.field public static final OutgoingCallBroadcasterEnterOnCreate:Ljava/lang/String; = "+OutgoingCallBroadcaster.onCreate"

.field public static final OutgoingCallBroadcasterLeaveOnCreate:Ljava/lang/String; = "-OutgoingCallBroadcaster.onCreate"

.field public static final OutgoingCallReceiverEnterActionOnReceive:Ljava/lang/String; = "+OutgoingCallReceiver.onReceive action"

.field public static final OutgoingCallReceiverEnterBroadcastOnReceive:Ljava/lang/String; = "+OutgoingCallReceiver.onReceive broadcast"

.field public static final OutgoingCallReceiverLeaveActionOnReceive:Ljava/lang/String; = "-OutgoingCallReceiver.onReceive action"

.field public static final OutgoingCallReceiverLeaveBroadcastOnReceive:Ljava/lang/String; = "-OutgoingCallReceiver.onReceive broadcast"

.field private static final PROFILE:Z = false

.field private static final PROFILER_TAG:Ljava/lang/String; = "PhoneProfiler"

.field public static final PhoneUtilsEnterPlaceCallGemini:Ljava/lang/String; = "+PhoneUtils.placeCallGemini"

.field public static final PhoneUtilsLeavePlaceCallGemini:Ljava/lang/String; = "-PhoneUtils.placeCallGemini"

.field private static final enablePhoneProfiler:Z = true

.field static sTimeCallScreenCreated:J

.field static sTimeCallScreenOnCreate:J

.field static sTimeCallScreenRequested:J

.field static sTimeIncomingCallPanelCreated:J

.field static sTimeIncomingCallPanelOnCreate:J

.field static sTimeIncomingCallPanelRequested:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static callScreenCreated()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method static callScreenOnCreate()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method static callScreenRequested()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method private static dumpCallScreenStat()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method private static dumpIncomingCallPanelStat()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method static incomingCallPanelCreated()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method static incomingCallPanelOnCreate()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method static incomingCallPanelRequested()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 124
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Profiler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method static profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V
    .locals 0
    .parameter "win"
    .parameter "tag"

    .prologue
    .line 63
    return-void
.end method

.method public static trace(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 174
    const-string v0, "PhoneProfiler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void
.end method
