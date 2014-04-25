.class Lcom/android/phone/UnlockSIMLock$TouchInput$1;
.super Ljava/lang/Object;
.source "UnlockSIMLock.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/UnlockSIMLock$TouchInput;->showAlertDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/UnlockSIMLock$TouchInput;


# direct methods
.method constructor <init>(Lcom/android/phone/UnlockSIMLock$TouchInput;)V
    .locals 0
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/android/phone/UnlockSIMLock$TouchInput$1;->this$1:Lcom/android/phone/UnlockSIMLock$TouchInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 667
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 668
    return-void
.end method
