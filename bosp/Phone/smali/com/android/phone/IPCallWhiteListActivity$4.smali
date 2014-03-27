.class Lcom/android/phone/IPCallWhiteListActivity$4;
.super Ljava/lang/Object;
.source "IPCallWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IPCallWhiteListActivity;->showWhiteListCreateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IPCallWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/IPCallWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/phone/IPCallWhiteListActivity$4;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 207
    packed-switch p2, :pswitch_data_0

    .line 216
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 217
    return-void

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$4;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #calls: Lcom/android/phone/IPCallWhiteListActivity;->launchMultiplePhonePicker()V
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$400(Lcom/android/phone/IPCallWhiteListActivity;)V

    goto :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/IPCallWhiteListActivity$4;->this$0:Lcom/android/phone/IPCallWhiteListActivity;

    #calls: Lcom/android/phone/IPCallWhiteListActivity;->launchSinglePhoneInput()V
    invoke-static {v0}, Lcom/android/phone/IPCallWhiteListActivity;->access$500(Lcom/android/phone/IPCallWhiteListActivity;)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
