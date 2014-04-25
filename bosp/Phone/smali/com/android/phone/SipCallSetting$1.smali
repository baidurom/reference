.class Lcom/android/phone/SipCallSetting$1;
.super Ljava/lang/Object;
.source "SipCallSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SipCallSetting;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SipCallSetting;

.field final synthetic val$intEnable:I


# direct methods
.method constructor <init>(Lcom/android/phone/SipCallSetting;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/phone/SipCallSetting$1;->this$0:Lcom/android/phone/SipCallSetting;

    iput p2, p0, Lcom/android/phone/SipCallSetting$1;->val$intEnable:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 140
    iget-object v1, p0, Lcom/android/phone/SipCallSetting$1;->this$0:Lcom/android/phone/SipCallSetting;

    iget v2, p0, Lcom/android/phone/SipCallSetting$1;->val$intEnable:I

    if-ne v2, v0, :cond_0

    :goto_0
    #calls: Lcom/android/phone/SipCallSetting;->handleSipReceiveCallsOption(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/SipCallSetting;->access$000(Lcom/android/phone/SipCallSetting;Z)V

    .line 141
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
