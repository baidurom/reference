.class Lyi/app/BaiduAppTitle$2;
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
    .line 121
    iput-object p1, p0, Lyi/app/BaiduAppTitle$2;->this$0:Lyi/app/BaiduAppTitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 123
    iget-object v0, p0, Lyi/app/BaiduAppTitle$2;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnRightClickedListener:Lyi/app/BaiduAppTitle$OnRightClickedListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lyi/app/BaiduAppTitle$2;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnRightClickedListener:Lyi/app/BaiduAppTitle$OnRightClickedListener;

    invoke-interface {v0, p1}, Lyi/app/BaiduAppTitle$OnRightClickedListener;->onRiceTitleRightButtonClicked(Landroid/view/View;)V

    .line 127
    :cond_0
    iget-object v0, p0, Lyi/app/BaiduAppTitle$2;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnYiRightClickedListener:Lyi/app/BaiduAppTitle$OnYiRightClickedListener;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lyi/app/BaiduAppTitle$2;->this$0:Lyi/app/BaiduAppTitle;

    iget-object v0, v0, Lyi/app/BaiduAppTitle;->mOnYiRightClickedListener:Lyi/app/BaiduAppTitle$OnYiRightClickedListener;

    invoke-interface {v0, p1}, Lyi/app/BaiduAppTitle$OnYiRightClickedListener;->onYiTitleRightButtonClicked(Landroid/view/View;)V

    .line 130
    :cond_1
    return-void
.end method
