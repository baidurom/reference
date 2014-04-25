.class Lcom/android/phone/InCallScreen$24;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->showCanDismissDialog(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 4914
    iput-object p1, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 4917
    iget-object v0, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 4919
    iget-object v0, p0, Lcom/android/phone/InCallScreen$24;->this$0:Lcom/android/phone/InCallScreen;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect(I)V

    .line 4920
    return-void
.end method
