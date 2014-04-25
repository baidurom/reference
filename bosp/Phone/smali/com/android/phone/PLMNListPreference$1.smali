.class Lcom/android/phone/PLMNListPreference$1;
.super Ljava/lang/Object;
.source "PLMNListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/PLMNListPreference;->showInputDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PLMNListPreference;

.field final synthetic val$dialogView:Landroid/view/View;

.field final synthetic val$spPriority:Landroid/widget/Spinner;

.field final synthetic val$spService:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/phone/PLMNListPreference;Landroid/view/View;Landroid/widget/Spinner;Landroid/widget/Spinner;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/phone/PLMNListPreference$1;->this$0:Lcom/android/phone/PLMNListPreference;

    iput-object p2, p0, Lcom/android/phone/PLMNListPreference$1;->val$dialogView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/PLMNListPreference$1;->val$spPriority:Landroid/widget/Spinner;

    iput-object p4, p0, Lcom/android/phone/PLMNListPreference$1;->val$spService:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 471
    iget-object v4, p0, Lcom/android/phone/PLMNListPreference$1;->val$dialogView:Landroid/view/View;

    const v5, 0x7f0700b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 472
    .local v1, mccmnc:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/android/phone/PLMNListPreference$1;->val$spPriority:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 473
    .local v2, priority:I
    iget-object v4, p0, Lcom/android/phone/PLMNListPreference$1;->val$spService:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    .line 474
    .local v3, service:I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 475
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const v5, 0x7f0b0365

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;

    const-string v4, ""

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/android/phone/NetworkEditor;->covertApNW2Ril(I)I

    move-result v6

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 480
    .local v0, info:Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;
    iget-object v4, p0, Lcom/android/phone/PLMNListPreference$1;->this$0:Lcom/android/phone/PLMNListPreference;

    invoke-virtual {v4, v0}, Lcom/android/phone/PLMNListPreference;->handlePLMNListAdd(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;)V

    goto :goto_0
.end method
