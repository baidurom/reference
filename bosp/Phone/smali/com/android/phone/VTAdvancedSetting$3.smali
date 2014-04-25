.class Lcom/android/phone/VTAdvancedSetting$3;
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
    .line 315
    iput-object p1, p0, Lcom/android/phone/VTAdvancedSetting$3;->this$0:Lcom/android/phone/VTAdvancedSetting;

    iput-object p2, p0, Lcom/android/phone/VTAdvancedSetting$3;->val$mBitmap2:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/VTAdvancedSetting$3;->val$mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Bitmap.isRecycled() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/VTAdvancedSetting$3;->val$mBitmap2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/android/phone/VTAdvancedSetting;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/VTAdvancedSetting;->access$000(Ljava/lang/String;)V

    .line 321
    return-void
.end method
