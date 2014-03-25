.class Lyi/widget/BaiduEditText$1;
.super Ljava/lang/Object;
.source "BaiduEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyi/widget/BaiduEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/widget/BaiduEditText;


# direct methods
.method constructor <init>(Lyi/widget/BaiduEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lyi/widget/BaiduEditText$1;->this$0:Lyi/widget/BaiduEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 242
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 236
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 239
    iget-object v0, p0, Lyi/widget/BaiduEditText$1;->this$0:Lyi/widget/BaiduEditText;

    #calls: Lyi/widget/BaiduEditText;->updateDeleteIcon()V
    invoke-static {v0}, Lyi/widget/BaiduEditText;->access$000(Lyi/widget/BaiduEditText;)V

    .line 240
    return-void
.end method
