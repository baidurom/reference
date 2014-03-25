.class Landroid/view/VolumePanel$4$1;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/VolumePanel$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/VolumePanel$4;


# direct methods
.method constructor <init>(Landroid/view/VolumePanel$4;)V
    .locals 0
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Landroid/view/VolumePanel$4$1;->this$1:Landroid/view/VolumePanel$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/view/VolumePanel$4$1;->this$1:Landroid/view/VolumePanel$4;

    iget-object v0, v0, Landroid/view/VolumePanel$4;->this$0:Landroid/view/VolumePanel;

    #calls: Landroid/view/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Landroid/view/VolumePanel;->access$200(Landroid/view/VolumePanel;)V

    .line 403
    const/4 v0, 0x0

    return v0
.end method
