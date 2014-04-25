.class Lcom/android/phone/CallOptionHandler$4;
.super Ljava/lang/Object;
.source "CallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallOptionHandler;->onMakeCall(Lcom/android/phone/CallOptionHelper$CallbackArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallOptionHandler;

.field final synthetic val$args:Lcom/android/phone/CallOptionHelper$CallbackArgs;


# direct methods
.method constructor <init>(Lcom/android/phone/CallOptionHandler;Lcom/android/phone/CallOptionHelper$CallbackArgs;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/phone/CallOptionHandler$4;->this$0:Lcom/android/phone/CallOptionHandler;

    iput-object p2, p0, Lcom/android/phone/CallOptionHandler$4;->val$args:Lcom/android/phone/CallOptionHelper$CallbackArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.VoiceMailSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 501
    const-string v1, "simId"

    iget-object v2, p0, Lcom/android/phone/CallOptionHandler$4;->val$args:Lcom/android/phone/CallOptionHelper$CallbackArgs;

    iget-wide v2, v2, Lcom/android/phone/CallOptionHelper$CallbackArgs;->id:J

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Lcom/android/phone/CallOptionHandler$4;->this$0:Lcom/android/phone/CallOptionHandler;

    iget-object v1, v1, Lcom/android/phone/CallOptionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 503
    return-void
.end method
