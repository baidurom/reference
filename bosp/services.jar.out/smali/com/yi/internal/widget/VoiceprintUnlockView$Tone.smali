.class Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tone"
.end annotation


# static fields
.field private static final BEEP_VOLUME:I = 0x64

.field private static final DEFAULT_DURATION:I = 0xc8


# instance fields
.field private mToneGenerator:Landroid/media/ToneGenerator;

.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method public constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 919
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 915
    iput-object v4, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 920
    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_0

    .line 923
    :try_start_0
    new-instance v1, Landroid/media/ToneGenerator;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 925
    :catch_0
    move-exception v0

    .line 926
    .local v0, ex:Ljava/lang/Throwable;
    const-string v1, "VoiceprintUnlock"

    const-string v2, "Exception caught while creating tone generator: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 929
    iput-object v4, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 950
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 952
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0x18

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 945
    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 935
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Tone;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v1, 0xc8

    invoke-virtual {v0, p1, v1}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 938
    :cond_0
    return-void
.end method
