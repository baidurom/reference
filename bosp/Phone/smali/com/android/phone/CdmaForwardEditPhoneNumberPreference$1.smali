.class Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;
.super Ljava/lang/Object;
.source "CdmaForwardEditPhoneNumberPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;->this$0:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;->this$0:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    #getter for: Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->access$000(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;->this$0:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    #getter for: Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mParentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->access$000(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;->this$0:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    #getter for: Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mContactListIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->access$100(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference$1;->this$0:Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;

    #getter for: Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->mPrefId:I
    invoke-static {v2}, Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;->access$200(Lcom/android/phone/CdmaForwardEditPhoneNumberPreference;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 241
    :cond_0
    return-void
.end method
