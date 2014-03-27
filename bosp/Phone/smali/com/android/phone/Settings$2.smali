.class Lcom/android/phone/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 236
    iput-object p1, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v1, 0x1

    .line 239
    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mStartGsmCheckRevert:Z
    invoke-static {v0}, Lcom/android/phone/Settings;->access$300(Lcom/android/phone/Settings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonStartGsm:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #getter for: Lcom/android/phone/Settings;->mButtonStartGsm:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/phone/Settings;->access$100(Lcom/android/phone/Settings;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Settings$2;->this$0:Lcom/android/phone/Settings;

    #setter for: Lcom/android/phone/Settings;->mStartGsmCheckRevert:Z
    invoke-static {v0, v1}, Lcom/android/phone/Settings;->access$302(Lcom/android/phone/Settings;Z)Z

    .line 244
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
