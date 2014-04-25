.class Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/VoiceMailSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "intent"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;->this$0:Lcom/android/phone/VoiceMailSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p2, p0, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lcom/android/phone/VoiceMailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 246
    return-void
.end method
