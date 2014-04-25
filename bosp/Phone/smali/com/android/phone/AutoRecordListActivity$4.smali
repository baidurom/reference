.class Lcom/android/phone/AutoRecordListActivity$4;
.super Ljava/lang/Object;
.source "AutoRecordListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRecordListActivity;->showWhiteListCreateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRecordListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRecordListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/phone/AutoRecordListActivity$4;->this$0:Lcom/android/phone/AutoRecordListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    packed-switch p2, :pswitch_data_0

    .line 215
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    return-void

    .line 208
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity$4;->this$0:Lcom/android/phone/AutoRecordListActivity;

    #calls: Lcom/android/phone/AutoRecordListActivity;->launchMultiplePhonePicker()V
    invoke-static {v0}, Lcom/android/phone/AutoRecordListActivity;->access$400(Lcom/android/phone/AutoRecordListActivity;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/AutoRecordListActivity$4;->this$0:Lcom/android/phone/AutoRecordListActivity;

    #calls: Lcom/android/phone/AutoRecordListActivity;->launchSinglePhoneInput()V
    invoke-static {v0}, Lcom/android/phone/AutoRecordListActivity;->access$500(Lcom/android/phone/AutoRecordListActivity;)V

    goto :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
