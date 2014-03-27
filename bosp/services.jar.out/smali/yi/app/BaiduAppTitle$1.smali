.class Lyi/app/BaiduAppTitle$1;
.super Ljava/lang/Object;
.source "BaiduAppTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyi/app/BaiduAppTitle;->installRiceAppTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lyi/app/BaiduAppTitle;


# direct methods
.method constructor <init>(Lyi/app/BaiduAppTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lyi/app/BaiduAppTitle$1;->this$0:Lyi/app/BaiduAppTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 107
    iget-object v0, p0, Lyi/app/BaiduAppTitle$1;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnLeftClickedListener:Lyi/app/BaiduAppTitle$OnLeftClickedListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lyi/app/BaiduAppTitle$1;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnLeftClickedListener:Lyi/app/BaiduAppTitle$OnLeftClickedListener;

    invoke-interface {v0, p1}, Lyi/app/BaiduAppTitle$OnLeftClickedListener;->onRiceTitleLeftButtonClicked(Landroid/view/View;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle$1;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnYiLeftClickedListener:Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lyi/app/BaiduAppTitle$1;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnYiLeftClickedListener:Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;

    invoke-interface {v0, p1}, Lyi/app/BaiduAppTitle$OnYiLeftClickedListener;->onYiTitleLeftButtonClicked(Landroid/view/View;)V

    .line 114
    :cond_1
    return-void
.end method
