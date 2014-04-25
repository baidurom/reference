.class Lcom/android/phone/AutoRedialListManuallyInputActivity$2;
.super Ljava/lang/Object;
.source "AutoRedialListManuallyInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoRedialListManuallyInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoRedialListManuallyInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$2;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/phone/AutoRedialListManuallyInputActivity$2;->this$0:Lcom/android/phone/AutoRedialListManuallyInputActivity;

    invoke-virtual {v0}, Lcom/android/phone/AutoRedialListManuallyInputActivity;->finish()V

    .line 70
    return-void
.end method
