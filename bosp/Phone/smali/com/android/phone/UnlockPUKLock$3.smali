.class Lcom/android/phone/UnlockPUKLock$3;
.super Ljava/lang/Object;
.source "UnlockPUKLock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockPUKLock;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/UnlockPUKLock;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockPUKLock;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/phone/UnlockPUKLock$3;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 209
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 210
    .local v2, state:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 213
    :cond_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 215
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_1

    .line 216
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v1           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 225
    iget-object v3, p0, Lcom/android/phone/UnlockPUKLock$3;->this$0:Lcom/android/phone/UnlockPUKLock;

    invoke-virtual {v3, v0}, Lcom/android/phone/UnlockPUKLock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 218
    .end local v0           #intent:Landroid/content/Intent;
    .restart local v1       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
