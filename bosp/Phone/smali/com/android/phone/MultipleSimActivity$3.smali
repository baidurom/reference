.class Lcom/android/phone/MultipleSimActivity$3;
.super Ljava/lang/Object;
.source "MultipleSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/MultipleSimActivity;->showDialogDefaultPic(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MultipleSimActivity;

.field final synthetic val$mBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/phone/MultipleSimActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/phone/MultipleSimActivity$3;->this$0:Lcom/android/phone/MultipleSimActivity;

    iput-object p2, p0, Lcom/android/phone/MultipleSimActivity$3;->val$mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/phone/MultipleSimActivity$3;->val$mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 698
    return-void
.end method
