.class Landroid/widget/TextClock$1;
.super Landroid/database/ContentObserver;
.source "TextClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextClock;


# direct methods
.method constructor <init>(Landroid/widget/TextClock;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 121
    iput-object p1, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 124
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    #calls: Landroid/widget/TextClock;->chooseFormat()V
    invoke-static {v0}, Landroid/widget/TextClock;->access$000(Landroid/widget/TextClock;)V

    .line 125
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    #calls: Landroid/widget/TextClock;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TextClock;->access$100(Landroid/widget/TextClock;)V

    .line 126
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 130
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    #calls: Landroid/widget/TextClock;->chooseFormat()V
    invoke-static {v0}, Landroid/widget/TextClock;->access$000(Landroid/widget/TextClock;)V

    .line 131
    iget-object v0, p0, Landroid/widget/TextClock$1;->this$0:Landroid/widget/TextClock;

    #calls: Landroid/widget/TextClock;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/TextClock;->access$100(Landroid/widget/TextClock;)V

    .line 132
    return-void
.end method
