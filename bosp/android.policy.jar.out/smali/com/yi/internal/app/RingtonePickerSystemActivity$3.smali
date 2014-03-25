.class Lcom/yi/internal/app/RingtonePickerSystemActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "RingtonePickerSystemActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yi/internal/app/RingtonePickerSystemActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;


# direct methods
.method constructor <init>(Lcom/yi/internal/app/RingtonePickerSystemActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 443
    iput-object p1, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$3;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

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

    .line 446
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    const-string v1, "sdcard not mount"

    .line 449
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$3;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    invoke-virtual {v3}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 451
    .local v2, toast:Landroid/widget/Toast;
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 452
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 453
    iget-object v3, p0, Lcom/yi/internal/app/RingtonePickerSystemActivity$3;->this$0:Lcom/yi/internal/app/RingtonePickerSystemActivity;

    invoke-virtual {v3}, Lcom/yi/internal/app/RingtonePickerSystemActivity;->finish()V

    .line 455
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #toast:Landroid/widget/Toast;
    :cond_0
    return-void
.end method
