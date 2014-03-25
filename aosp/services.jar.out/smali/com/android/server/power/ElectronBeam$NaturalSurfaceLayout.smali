.class final Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ElectronBeam.java"

# interfaces
.implements Lcom/android/server/display/DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ElectronBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/Surface;)V
    .locals 1
    .parameter "displayManager"
    .parameter "surface"

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 764
    iput-object p2, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    .line 765
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V

    .line 766
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 769
    monitor-enter p0

    .line 770
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    .line 771
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V

    .line 773
    return-void

    .line 771
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 6

    .prologue
    .line 777
    monitor-enter p0

    .line 778
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    .line 779
    monitor-exit p0

    .line 802
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 783
    .local v0, displayInfo:Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    packed-switch v1, :pswitch_data_0

    .line 801
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0           #displayInfo:Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 785
    .restart local v0       #displayInfo:Landroid/view/DisplayInfo;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 786
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_1

    .line 789
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 790
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_1

    .line 793
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 794
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    const/high16 v2, -0x4080

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x4080

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V

    goto :goto_1

    .line 797
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 798
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/Surface;->setMatrix(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 783
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
