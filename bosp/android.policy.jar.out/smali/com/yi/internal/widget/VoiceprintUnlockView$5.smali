.class Lcom/yi/internal/widget/VoiceprintUnlockView$5;
.super Ljava/lang/Thread;
.source "VoiceprintUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;->initVoiceprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$5;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 304
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 305
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$902(Landroid/os/Looper;)Landroid/os/Looper;

    .line 306
    new-instance v0, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    iget-object v1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$5;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;-><init>(Lcom/yi/internal/widget/VoiceprintUnlockView;Lcom/yi/internal/widget/VoiceprintUnlockView$1;)V

    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$1002(Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;)Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceHandler;

    .line 307
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 308
    return-void
.end method
