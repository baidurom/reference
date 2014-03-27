.class Lcom/android/phone/AutoRedialListActivity$5;
.super Ljava/lang/Object;
.source "AutoRedialListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListActivity;->showRedialListCreateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/phone/AutoRedialListActivity$5;->this$0:Lcom/android/phone/AutoRedialListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 224
    packed-switch p2, :pswitch_data_0

    .line 233
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 234
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$5;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #calls: Lcom/android/phone/AutoRedialListActivity;->launchPhonePicker()V
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$400(Lcom/android/phone/AutoRedialListActivity;)V

    goto :goto_0

    .line 230
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/AutoRedialListActivity$5;->this$0:Lcom/android/phone/AutoRedialListActivity;

    #calls: Lcom/android/phone/AutoRedialListActivity;->launchSinglePhoneInput()V
    invoke-static {v0}, Lcom/android/phone/AutoRedialListActivity;->access$500(Lcom/android/phone/AutoRedialListActivity;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
