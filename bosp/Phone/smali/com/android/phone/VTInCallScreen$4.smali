.class Lcom/android/phone/VTInCallScreen$4;
.super Ljava/lang/Thread;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTInCallScreen;->onVTSwitchCameraClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/VTInCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$4;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1135
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 1136
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->switchCamera()Z

    .line 1137
    invoke-static {}, Lcom/android/phone/VTInCallScreenFlags;->getInstance()Lcom/android/phone/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/phone/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 1138
    return-void
.end method
