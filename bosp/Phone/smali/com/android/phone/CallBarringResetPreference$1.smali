.class Lcom/android/phone/CallBarringResetPreference$1;
.super Ljava/lang/Object;
.source "CallBarringResetPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallBarringResetPreference;->doPreferenceClick(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallBarringResetPreference;

.field final synthetic val$textEntryView:Landroid/view/View;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/CallBarringResetPreference;Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/phone/CallBarringResetPreference$1;->this$0:Lcom/android/phone/CallBarringResetPreference;

    iput-object p2, p0, Lcom/android/phone/CallBarringResetPreference$1;->val$textEntryView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/CallBarringResetPreference$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->val$textEntryView:Landroid/view/View;

    const v4, 0x7f070099

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 103
    .local v2, passwordText:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, password:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #calls: Lcom/android/phone/CallBarringResetPreference;->validatePassword(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/phone/CallBarringResetPreference;->access$100(Lcom/android/phone/CallBarringResetPreference;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallBarringResetPreference;->access$200(Lcom/android/phone/CallBarringResetPreference;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 108
    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/phone/CallBarringResetPreference;->access$200(Lcom/android/phone/CallBarringResetPreference;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b028b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 111
    const v3, 0x7f0b0035

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 112
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 118
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->this$0:Lcom/android/phone/CallBarringResetPreference;

    #getter for: Lcom/android/phone/CallBarringResetPreference;->mCallBarringInterface:Lcom/android/phone/CallBarringInterface;
    invoke-static {v3}, Lcom/android/phone/CallBarringResetPreference;->access$300(Lcom/android/phone/CallBarringResetPreference;)Lcom/android/phone/CallBarringInterface;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/android/phone/CallBarringResetPreference$1;->this$0:Lcom/android/phone/CallBarringResetPreference;

    invoke-virtual {v3, v1}, Lcom/android/phone/CallBarringResetPreference;->setCallState(Ljava/lang/String;)V

    goto :goto_0
.end method
