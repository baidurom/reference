.class Lcom/android/phone/VTAdvancedSetting$2;
.super Ljava/lang/Object;
.source "VTAdvancedSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VTAdvancedSetting;->showDialogMyPic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VTAdvancedSetting;

.field final synthetic val$mBitmap2:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/phone/VTAdvancedSetting;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/phone/VTAdvancedSetting$2;->this$0:Lcom/android/phone/VTAdvancedSetting;

    iput-object p2, p0, Lcom/android/phone/VTAdvancedSetting$2;->val$mBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 281
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 285
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v2, "aspectX"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v2, "aspectY"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    const-string v2, "outputX"

    iget-object v3, p0, Lcom/android/phone/VTAdvancedSetting$2;->this$0:Lcom/android/phone/VTAdvancedSetting;

    invoke-virtual {v3}, Lcom/android/phone/VTAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v2, "outputY"

    iget-object v3, p0, Lcom/android/phone/VTAdvancedSetting$2;->this$0:Lcom/android/phone/VTAdvancedSetting;

    invoke-virtual {v3}, Lcom/android/phone/VTAdvancedSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 295
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 298
    const-string v2, "scaleUpIfNeeded"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 300
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting$2;->this$0:Lcom/android/phone/VTAdvancedSetting;

    const/16 v3, 0xbcd

    invoke-virtual {v2, v1, v3}, Lcom/android/phone/VTAdvancedSetting;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/phone/VTAdvancedSetting$2;->val$mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - Bitmap.isRecycled() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VTAdvancedSetting$2;->val$mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/VTAdvancedSetting;->access$000(Ljava/lang/String;)V

    .line 311
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Pictrue not found , Gallery ActivityNotFoundException !"

    #calls: Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/VTAdvancedSetting;->access$000(Ljava/lang/String;)V

    goto :goto_0
.end method
