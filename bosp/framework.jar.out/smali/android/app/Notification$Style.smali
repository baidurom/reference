.class public abstract Landroid/app/Notification$Style;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Style"
.end annotation


# instance fields
.field private mBigContentTitle:Ljava/lang/CharSequence;

.field protected mBuilder:Landroid/app/Notification$Builder;

.field private mSummaryText:Ljava/lang/CharSequence;

.field private mSummaryTextSet:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1652
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1655
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1656
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    return-void
.end method


# virtual methods
.method public abstract build()Landroid/app/Notification;
.end method

.method protected checkBuilder()V
    .locals 2

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 1687
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style requires a valid Builder object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1689
    :cond_0
    return-void
.end method

.method protected getStandardView(I)Landroid/widget/RemoteViews;
    .locals 9
    .parameter "layoutId"

    .prologue
    const v8, 0x102032b

    const v7, 0x1020326

    const v6, 0x1020324

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1692
    invoke-virtual {p0}, Landroid/app/Notification$Style;->checkBuilder()V

    .line 1694
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 1695
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1698
    :cond_0
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #calls: Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(I)Landroid/widget/RemoteViews;
    invoke-static {v2, p1}, Landroid/app/Notification$Builder;->access$300(Landroid/app/Notification$Builder;I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1700
    .local v0, contentView:Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1701
    invoke-virtual {v0, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1707
    :goto_0
    iget-boolean v2, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1710
    .local v1, overflowText:Ljava/lang/CharSequence;
    :goto_1
    if-eqz v1, :cond_3

    .line 1711
    const v2, 0x1020046

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1712
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1713
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1719
    :goto_2
    return-object v0

    .line 1703
    .end local v1           #overflowText:Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 1707
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    #getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/app/Notification$Builder;->access$400(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 1715
    .restart local v1       #overflowText:Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1716
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method protected internalSetBigContentTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 1665
    iput-object p1, p0, Landroid/app/Notification$Style;->mBigContentTitle:Ljava/lang/CharSequence;

    .line 1666
    return-void
.end method

.method protected internalSetSummaryText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "cs"

    .prologue
    .line 1672
    iput-object p1, p0, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 1673
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    .line 1674
    return-void
.end method

.method public setBuilder(Landroid/app/Notification$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 1677
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eq v0, p1, :cond_0

    .line 1678
    iput-object p1, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    .line 1679
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Landroid/app/Notification$Style;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1683
    :cond_0
    return-void
.end method
