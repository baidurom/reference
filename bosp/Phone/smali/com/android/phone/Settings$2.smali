.class Lcom/android/phone/Settings$2;
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
    .line 344
    iput-object p1, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 349
    iget-object v2, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->isChangeData:Z
    invoke-static {v2, v3}, Lcom/android/phone/Settings;->access$402(Lcom/android/phone/Settings;Z)Z

    .line 350
    const-string v2, "onPreferenceTreeClick: preference == mButtonDataEnabled."

    #calls: Lcom/android/phone/Settings;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/Settings;->access$700(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    const-string v5, "connectivity"

    invoke-virtual {v2, v5}, Lcom/android/phone/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 352
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v2, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #calls: Lcom/android/phone/Settings;->showProgressDialog()V
    invoke-static {v2}, Lcom/android/phone/Settings;->access$800(Lcom/android/phone/Settings;)V

    .line 353
    iget-object v2, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$900(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 354
    .local v1, tempCheckedStatus:Z
    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 355
    iget-object v2, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonDataEnabled:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/Settings;->access$900(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-nez v1, :cond_1

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 356
    iget-object v2, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    iget-object v2, v2, Lcom/android/phone/Settings;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    iget-object v3, v3, Lcom/android/phone/Settings;->mH:Landroid/os/Handler;

    sget v4, Lcom/android/phone/Settings;->DATA_STATE_CHANGE_TIMEOUT:I

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x7530

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 357
    return-void

    :cond_0
    move v2, v4

    .line 354
    goto :goto_0

    :cond_1
    move v3, v4

    .line 355
    goto :goto_1
.end method
