.class Lcom/yi/internal/app/RingtonePickerCustomActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "RingtonePickerCustomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/app/RingtonePickerCustomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;


# direct methods
.method constructor <init>(Lcom/yi/internal/app/RingtonePickerCustomActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 406
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 408
    const-string v1, "sdcard not mount"

    .line 409
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    invoke-virtual {v3}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 411
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 412
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 413
    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerCustomActivity$2;->this$0:Lcom/yi/internal/app/RingtonePickerCustomActivity;

    invoke-virtual {v3}, Lcom/yi/internal/app/RingtonePickerCustomActivity;->finish()V

    .line 415
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method
