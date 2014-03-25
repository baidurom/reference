.class public Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserSelectorView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final FADE_OUT_ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "KeyguardMultiUserSelectorView"


# instance fields
.field private mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

.field mOrderAddedComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersGrid:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    return-void
.end method

.method private createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .locals 3
    .parameter "user"

    .prologue
    .line 119
    const v1, #layout@keyguard_multi_user_avatar#t

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->fromXml(ILandroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v0

    .line 121
    .local v0, uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 122
    return-object v0
.end method

.method private hasAppsAccessingSD()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 145
    const/4 v1, 0x0

    .line 146
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    const-string v7, "mount"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 147
    .local v3, service:Landroid/os/IBinder;
    if-eqz v3, :cond_1

    .line 148
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 153
    const-string v7, "/storage/sdcard1"

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v4

    .line 154
    .local v4, stUsers:[I
    if-eqz v4, :cond_2

    array-length v7, v4

    if-lez v7, :cond_2

    .line 164
    .end local v3           #service:Landroid/os/IBinder;
    .end local v4           #stUsers:[I
    :cond_0
    :goto_0
    return v5

    .line 150
    .restart local v3       #service:Landroid/os/IBinder;
    :cond_1
    const-string v5, "KeyguardMultiUserSelectorView"

    const-string v7, "Can\'t get mount service"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 151
    goto :goto_0

    .line 157
    .restart local v4       #stUsers:[I
    :cond_2
    const-string v7, "/mnt/usbotg"

    invoke-interface {v1, v7}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v2

    .line 158
    .local v2, otgUsers:[I
    if-eqz v2, :cond_3

    array-length v7, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v7, :cond_0

    :cond_3
    move v5, v6

    .line 161
    goto :goto_0

    .line 162
    .end local v2           #otgUsers:[I
    .end local v3           #service:Landroid/os/IBinder;
    .end local v4           #stUsers:[I
    :catch_0
    move-exception v0

    .line 163
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v5, v6

    .line 164
    goto :goto_0
.end method

.method private setAllClickable(Z)V
    .locals 3
    .parameter "clickable"

    .prologue
    .line 135
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 137
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1, p1}, Landroid/view/View;->setClickable(Z)V

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    .end local v1           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public addUsers(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, userList:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/UserInfo;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 92
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    .local v0, activeUser:Landroid/content/pm/UserInfo;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v4, users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mOrderAddedComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 100
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 101
    .local v3, user:Landroid/content/pm/UserInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->createAndAddUser(Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    move-result-object v5

    .line 102
    .local v5, uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v7, :cond_0

    .line 103
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 104
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_1

    .line 93
    .end local v0           #activeUser:Landroid/content/pm/UserInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #user:Landroid/content/pm/UserInfo;
    .end local v4           #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .end local v5           #uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :catch_0
    move-exception v2

    .line 94
    .local v2, re:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .restart local v0       #activeUser:Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 106
    .end local v2           #re:Landroid/os/RemoteException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #user:Landroid/content/pm/UserInfo;
    .restart local v4       #users:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/UserInfo;>;"
    .restart local v5       #uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :cond_0
    invoke-virtual {v5, v8, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_1

    .line 109
    .end local v3           #user:Landroid/content/pm/UserInfo;
    .end local v5           #uv:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 170
    instance-of v1, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-nez v1, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 171
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 172
    .local v0, avatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    if-ne v1, v0, :cond_2

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->showUnlockHint()V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->hideSecurityView(I)V

    .line 233
    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setAllClickable(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mActiveUserAvatar:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    const/4 v2, 0x1

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)V

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setActive(ZZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    const v0, #id@keyguard_users_grid#t

    .line 75
    .local v0, resId:I
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isAlarmBoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const v0, 0x2100030

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    .line 79
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mUsersGrid:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setClipChildren(Z)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->setClipToPadding(Z)V

    .line 83
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;->userActivity()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$UserSwitcherCallback;

    .line 87
    return-void
.end method
