.class Lcom/android/phone/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Settings;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Settings;


# direct methods
.method constructor <init>(Lcom/android/phone/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 216
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 219
    .local v1, success:Z
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mHandler:Lcom/android/phone/Settings$MyHandler;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$000(Lcom/android/phone/Settings;)Lcom/android/phone/Settings$MyHandler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/phone/Settings$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 220
    .local v0, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonStartGsm:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mSwitchPhone:Lcom/android/phone/PhoneSwitchManager;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/phone/PhoneSwitchManager;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/phone/PhoneSwitchManager;->startSwitchPhone(ZLandroid/os/Message;)Z

    move-result v1

    .line 226
    :goto_0
    if-eqz v1, :cond_2

    .line 227
    iget-object v2, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Lcom/android/phone/Settings;->showDialog(I)V

    .line 231
    :goto_1
    iget-object v2, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mStartGsmCheckRevert:Z
    invoke-static {v2, v3}, Lcom/android/phone/Settings;->access$302(Lcom/android/phone/Settings;Z)Z

    .line 233
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #success:Z
    :cond_0
    return-void

    .line 223
    .restart local v0       #msg:Landroid/os/Message;
    .restart local v1       #success:Z
    :cond_1
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mSwitchPhone:Lcom/android/phone/PhoneSwitchManager;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$200(Lcom/android/phone/Settings;)Lcom/android/phone/PhoneSwitchManager;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/android/phone/PhoneSwitchManager;->startSwitchPhone(ZLandroid/os/Message;)Z

    move-result v1

    goto :goto_0

    .line 229
    :cond_2
    iget-object v4, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonStartGsm:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/Settings$1;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonStartGsm:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method
