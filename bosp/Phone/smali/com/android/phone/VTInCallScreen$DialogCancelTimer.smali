.class public Lcom/android/phone/VTInCallScreen$DialogCancelTimer;
.super Ljava/lang/Object;
.source "VTInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VTInCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialogCancelTimer"
.end annotation


# instance fields
.field private asker:Landroid/app/AlertDialog;

.field private final seconds:I

.field final synthetic this$0:Lcom/android/phone/VTInCallScreen;

.field private final timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/android/phone/VTInCallScreen;ILandroid/app/AlertDialog;)V
    .locals 1
    .parameter
    .parameter "seconds"
    .parameter "dialog"

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->this$0:Lcom/android/phone/VTInCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1152
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->timer:Ljava/util/Timer;

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->asker:Landroid/app/AlertDialog;

    .line 1159
    iput p2, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->seconds:I

    .line 1160
    iput-object p3, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->asker:Landroid/app/AlertDialog;

    .line 1161
    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->asker:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->timer:Ljava/util/Timer;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;

    invoke-direct {v1, p0}, Lcom/android/phone/VTInCallScreen$DialogCancelTimer$1;-><init>(Lcom/android/phone/VTInCallScreen$DialogCancelTimer;)V

    iget v2, p0, Lcom/android/phone/VTInCallScreen$DialogCancelTimer;->seconds:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1172
    return-void
.end method
