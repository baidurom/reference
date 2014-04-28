.class Lcom/yi/internal/widget/VoiceprintUnlockView$Exiting;
.super Ljava/lang/Object;
.source "VoiceprintUnlockView.java"

# interfaces
.implements Lcom/yi/internal/widget/VoiceprintUnlockView$VoiceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/widget/VoiceprintUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Exiting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;


# direct methods
.method constructor <init>(Lcom/yi/internal/widget/VoiceprintUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Exiting;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 730
    return-void
.end method


# virtual methods
.method public process()V
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/yi/internal/widget/VoiceprintUnlockView$Exiting;->this$0:Lcom/yi/internal/widget/VoiceprintUnlockView;

    #calls: Lcom/yi/internal/widget/VoiceprintUnlockView;->exiting()V
    invoke-static {v0}, Lcom/yi/internal/widget/VoiceprintUnlockView;->access$2500(Lcom/yi/internal/widget/VoiceprintUnlockView;)V

    .line 734
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    const-string v0, "[Exiting Status]"

    return-object v0
.end method
