.class Lcom/android/phone/WhiteListManuallyInputActivity$2;
.super Ljava/lang/Object;
.source "WhiteListManuallyInputActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/WhiteListManuallyInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/WhiteListManuallyInputActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/WhiteListManuallyInputActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/phone/WhiteListManuallyInputActivity$2;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/phone/WhiteListManuallyInputActivity$2;->this$0:Lcom/android/phone/WhiteListManuallyInputActivity;

    invoke-virtual {v0}, Lcom/android/phone/WhiteListManuallyInputActivity;->finish()V

    .line 73
    return-void
.end method
