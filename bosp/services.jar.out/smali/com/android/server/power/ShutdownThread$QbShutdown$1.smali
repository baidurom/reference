.class Lcom/android/server/power/ShutdownThread$QbShutdown$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$QbShutdown;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread$QbShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$QbShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$QbShutdown$1;->this$0:Lcom/android/server/power/ShutdownThread$QbShutdown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown$1;->this$0:Lcom/android/server/power/ShutdownThread$QbShutdown;

    #getter for: Lcom/android/server/power/ShutdownThread$QbShutdown;->mTextViewInfo:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread$QbShutdown;->access$400(Lcom/android/server/power/ShutdownThread$QbShutdown;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$QbShutdown$1;->this$0:Lcom/android/server/power/ShutdownThread$QbShutdown;

    #calls: Lcom/android/server/power/ShutdownThread$QbShutdown;->updateConfirmView(Z)V
    invoke-static {v0, p2}, Lcom/android/server/power/ShutdownThread$QbShutdown;->access$500(Lcom/android/server/power/ShutdownThread$QbShutdown;Z)V

    .line 484
    return-void
.end method
