.class Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;
.super Landroid/os/Handler;
.source "VoiceUnlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock$2;->this$0:Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;

    iget v2, p1, Landroid/os/Message;->what:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/policy/impl/keyguard/VoiceUnlock;->handleVoiceCommandNotified(IILandroid/os/Bundle;)V

    .line 106
    return-void
.end method
