.class public Lcom/android/internal/app/MediaRouteChooserDialogFragment;
.super Landroid/app/DialogFragment;
.source "MediaRouteChooserDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$1;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteChooserDialog;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;,
        Lcom/android/internal/app/MediaRouteChooserDialogFragment$ViewHolder;
    }
.end annotation


# static fields
.field public static final FRAGMENT_TAG:Ljava/lang/String; = "android:MediaRouteChooserDialogFragment"

.field private static final ITEM_LAYOUTS:[I = null

.field private static final TAG:Ljava/lang/String; = "MediaRouteChooserDialogFragment"


# instance fields
.field private mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

.field final mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

.field final mComparator:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

.field mDisplayService:Landroid/hardware/display/DisplayManager;

.field private mExtendedSettingsListener:Landroid/view/View$OnClickListener;

.field private mIgnoreCallbackVolumeChanges:Z

.field private mIgnoreSliderVolumeChanges:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

.field private mListView:Landroid/widget/ListView;

.field private mRouteTypes:I

.field mRouter:Landroid/media/MediaRouter;

.field private mVolumeIcon:Landroid/widget/ImageView;

.field private mVolumeSlider:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ITEM_LAYOUTS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x89t 0x0t 0x9t 0x1t
        0x88t 0x0t 0x9t 0x1t
        0x85t 0x0t 0x9t 0x1t
        0x86t 0x0t 0x9t 0x1t
        0x87t 0x0t 0x9t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mComparator:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteComparator;

    .line 85
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-direct {v0, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    .line 90
    const/4 v0, 0x1

    const v1, 0x103012e

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->setStyle(II)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->ITEM_LAYOUTS:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/MediaRouteChooserDialogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreCallbackVolumeChanges:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method


# virtual methods
.method changeVolume(I)V
    .locals 4
    .parameter "newValue"

    .prologue
    .line 161
    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    if-eqz v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    .line 164
    .local v1, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 166
    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v0

    .line 167
    .local v0, maxVolume:I
    const/4 v2, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 168
    invoke-virtual {v1, p1}, Landroid/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 100
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    .line 101
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 102
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 204
    new-instance v0, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteChooserDialog;

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteChooserDialog;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;Landroid/content/Context;I)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 176
    const v3, 0x1090084

    invoke-virtual {p1, v3, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 178
    .local v1, layout:Landroid/view/View;
    const v3, 0x1020319

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeIcon:Landroid/widget/ImageView;

    .line 179
    const v3, 0x102031a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->updateVolume()V

    .line 181
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v4, Lcom/android/internal/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;

    invoke-direct {v4, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$VolumeSliderChangeListener;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_0

    .line 184
    const v3, 0x102031b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    .local v0, extendedSettingsButton:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    .end local v0           #extendedSettingsButton:Landroid/view/View;
    :cond_0
    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 190
    .local v2, list:Landroid/widget/ListView;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 191
    new-instance v3, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-direct {v3, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;-><init>(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    iput-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 194
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mListView:Landroid/widget/ListView;

    .line 195
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget v4, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    iget-object v5, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 197
    iget-object v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;->scrollToSelectedItem()V

    .line 199
    return-object v1
.end method

.method public onDetach()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    .line 107
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

    invoke-interface {v0, p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;->onDetached(Lcom/android/internal/app/MediaRouteChooserDialogFragment;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    if-eqz v0, :cond_1

    .line 111
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mAdapter:Lcom/android/internal/app/MediaRouteChooserDialogFragment$RouteAdapter;

    .line 113
    :cond_1
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 114
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mCallback:Lcom/android/internal/app/MediaRouteChooserDialogFragment$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 115
    iput-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    .line 116
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mDisplayService:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mDisplayService:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->scanWifiDisplays()V

    .line 213
    :cond_0
    return-void
.end method

.method public setExtendedSettingsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mExtendedSettingsListener:Landroid/view/View$OnClickListener;

    .line 120
    return-void
.end method

.method public setLauncherListener(Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mLauncherListener:Lcom/android/internal/app/MediaRouteChooserDialogFragment$LauncherListener;

    .line 95
    return-void
.end method

.method public setRouteTypes(I)V
    .locals 2
    .parameter "types"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    .line 124
    iget v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mDisplayService:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 126
    .local v0, activity:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 127
    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mDisplayService:Landroid/hardware/display/DisplayManager;

    .line 133
    .end local v0           #activity:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mDisplayService:Landroid/hardware/display/DisplayManager;

    goto :goto_0
.end method

.method updateVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 136
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    if-nez v1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouter:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mRouteTypes:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 139
    .local v0, selectedRoute:Landroid/media/MediaRouter$RouteInfo;
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const v1, 0x10802a2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iput-boolean v3, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    .line 145
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v1

    if-nez v1, :cond_4

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 150
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 157
    :goto_2
    iput-boolean v4, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mIgnoreSliderVolumeChanges:Z

    goto :goto_0

    .line 139
    :cond_3
    const v1, 0x1080319

    goto :goto_1

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteChooserDialogFragment;->mVolumeSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2
.end method
