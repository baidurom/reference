.class Lcom/android/phone/BaiduSimcardSelectActivity$2;
.super Ljava/lang/Object;
.source "BaiduSimcardSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BaiduSimcardSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BaiduSimcardSelectActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/BaiduSimcardSelectActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    iget-object v1, v1, Lcom/android/phone/BaiduSimcardSelectActivity;->cellConn:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 87
    .local v0, result:I
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->isIpCallChooseCard:Z
    invoke-static {v1}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$000(Lcom/android/phone/BaiduSimcardSelectActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$300(Lcom/android/phone/BaiduSimcardSelectActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->ipPrefix2:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$500(Lcom/android/phone/BaiduSimcardSelectActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$200(Lcom/android/phone/BaiduSimcardSelectActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$300(Lcom/android/phone/BaiduSimcardSelectActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone.extra.slot"

    iget-object v3, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->mSlot:I
    invoke-static {v3}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$400(Lcom/android/phone/BaiduSimcardSelectActivity;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    iget-object v2, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    #getter for: Lcom/android/phone/BaiduSimcardSelectActivity;->mIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/phone/BaiduSimcardSelectActivity;->access$300(Lcom/android/phone/BaiduSimcardSelectActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CallController;->placeCall(Landroid/content/Intent;)V

    .line 94
    iget-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    invoke-virtual {v1}, Lcom/android/phone/BaiduSimcardSelectActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/android/phone/BaiduSimcardSelectActivity$2;->this$0:Lcom/android/phone/BaiduSimcardSelectActivity;

    invoke-virtual {v1}, Lcom/android/phone/BaiduSimcardSelectActivity;->finish()V

    goto :goto_0
.end method
