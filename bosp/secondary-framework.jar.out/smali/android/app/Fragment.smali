.class public Landroid/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Fragment$InstantiationException;,
        Landroid/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final INVALID_STATE:I = -0x1

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field private static final sClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAdded:Z

.field mAnimatingAway:Landroid/animation/Animator;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/app/FragmentManagerImpl;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mInLayout:Z

.field mIndex:I

.field mLoaderManager:Landroid/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/app/Fragment;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/app/Fragment;->sClassMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Fragment;->mState:I

    .line 372
    iput v1, p0, Landroid/app/Fragment;->mIndex:I

    .line 384
    iput v1, p0, Landroid/app/Fragment;->mTargetIndex:I

    .line 455
    iput-boolean v2, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 474
    iput-boolean v2, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 553
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "context"
    .parameter "fname"

    .prologue
    .line 560
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;
    .locals 6
    .parameter "context"
    .parameter "fname"
    .parameter "args"

    .prologue
    .line 579
    :try_start_0
    sget-object v3, Landroid/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 580
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 583
    const-class v3, Landroid/app/Fragment;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 584
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to instantiate a class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " that is not a Fragment"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/ClassCastException;

    invoke-direct {v5}, Ljava/lang/ClassCastException;-><init>()V

    invoke-direct {v3, v4, v5}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 595
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 596
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 587
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    .restart local v0       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_0
    :try_start_1
    sget-object v3, Landroid/app/Fragment;->sClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Fragment;

    .line 590
    .local v2, f:Landroid/app/Fragment;
    if-eqz p2, :cond_2

    .line 591
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 592
    iput-object p2, v2, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    .line 594
    :cond_2
    return-object v2

    .line 599
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #f:Landroid/app/Fragment;
    :catch_1
    move-exception v1

    .line 600
    .local v1, e:Ljava/lang/InstantiationException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 603
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 604
    .local v1, e:Ljava/lang/IllegalAccessException;
    new-instance v3, Landroid/app/Fragment$InstantiationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to instantiate fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": make sure class name exists, is public, and has an"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " empty constructor that is public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1576
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1577
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1578
    const-string v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1579
    iget v0, p0, Landroid/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1580
    const-string v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1582
    const-string v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1583
    const-string v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1584
    const-string v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1585
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1586
    const-string v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1587
    const-string v0, " mResumed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mResumed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1588
    const-string v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1589
    const-string v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1590
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1591
    const-string v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1592
    const-string v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1593
    const-string v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1594
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1595
    const-string v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1596
    const-string v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1597
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1599
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1601
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1602
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivity="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1603
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1605
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_2

    .line 1606
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1609
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1610
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1612
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 1613
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1616
    :cond_4
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 1617
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1618
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1620
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    if-eqz v0, :cond_6

    .line 1621
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1622
    const-string v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1623
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1625
    :cond_6
    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    if-eqz v0, :cond_7

    .line 1626
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/Fragment;->mNextAnim:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1628
    :cond_7
    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 1629
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1631
    :cond_8
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1632
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1634
    :cond_9
    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    if-eqz v0, :cond_a

    .line 1635
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/Fragment;->mAnimatingAway:Landroid/animation/Animator;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1636
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1637
    iget v0, p0, Landroid/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1639
    :cond_a
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_b

    .line 1640
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1641
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1643
    :cond_b
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 1644
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1645
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1647
    :cond_c
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 640
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .parameter "who"

    .prologue
    .line 1650
    iget-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1656
    .end local p0
    :goto_0
    return-object p0

    .line 1653
    .restart local p0
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 1654
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p0

    goto :goto_0

    .line 1656
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/app/FragmentManager;
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v0, :cond_0

    .line 824
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 825
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 826
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 835
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0

    .line 827
    :cond_1
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    .line 828
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 829
    :cond_2
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 830
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 831
    :cond_3
    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 832
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public final getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .prologue
    .line 676
    iget v0, p0, Landroid/app/Fragment;->mFragmentId:I

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1105
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1014
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1022
    :goto_0
    return-object v0

    .line 1017
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 1018
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_1
    iput-boolean v3, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1021
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1022
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    goto :goto_0
.end method

.method public final getParentFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 765
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 768
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Landroid/app/Fragment;->mRetainInstance:Z

    return v0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 788
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "resId"
    .parameter "formatArgs"

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getTargetFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 1

    .prologue
    .line 751
    iget v0, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "resId"

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 647
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1394
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Fragment;->mIndex:I

    .line 1395
    iput-object v2, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 1396
    iput-boolean v1, p0, Landroid/app/Fragment;->mAdded:Z

    .line 1397
    iput-boolean v1, p0, Landroid/app/Fragment;->mRemoving:Z

    .line 1398
    iput-boolean v1, p0, Landroid/app/Fragment;->mResumed:Z

    .line 1399
    iput-boolean v1, p0, Landroid/app/Fragment;->mFromLayout:Z

    .line 1400
    iput-boolean v1, p0, Landroid/app/Fragment;->mInLayout:Z

    .line 1401
    iput-boolean v1, p0, Landroid/app/Fragment;->mRestored:Z

    .line 1402
    iput v1, p0, Landroid/app/Fragment;->mBackStackNesting:I

    .line 1403
    iput-object v2, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1404
    iput-object v2, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    .line 1405
    iput v1, p0, Landroid/app/Fragment;->mFragmentId:I

    .line 1406
    iput v1, p0, Landroid/app/Fragment;->mContainerId:I

    .line 1407
    iput-object v2, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    .line 1408
    iput-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    .line 1409
    iput-boolean v1, p0, Landroid/app/Fragment;->mDetached:Z

    .line 1410
    iput-boolean v1, p0, Landroid/app/Fragment;->mRetaining:Z

    .line 1411
    iput-object v2, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1412
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1413
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1414
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    .prologue
    .line 1660
    new-instance v0, Landroid/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 1661
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    new-instance v2, Landroid/app/Fragment$1;

    invoke-direct {v2, p0}, Landroid/app/Fragment$1;-><init>(Landroid/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/FragmentManagerImpl;->attachActivity(Landroid/app/Activity;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    .line 1670
    return-void
.end method

.method public final isAdded()Z
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Landroid/app/Fragment;->mDetached:Z

    return v0
.end method

.method public final isHidden()Z
    .locals 1

    .prologue
    .line 908
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    return v0
.end method

.method final isInBackStack()Z
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Landroid/app/Fragment;->mBackStackNesting:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Landroid/app/Fragment;->mInLayout:Z

    return v0
.end method

.method public final isRemoving()Z
    .locals 1

    .prologue
    .line 868
    iget-boolean v0, p0, Landroid/app/Fragment;->mRemoving:Z

    return v0
.end method

.method public final isResumed()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Landroid/app/Fragment;->mResumed:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1258
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1097
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 1168
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1169
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1329
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1563
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1194
    return-void
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1
    .parameter "transit"
    .parameter "enter"
    .parameter "nextAnim"

    .prologue
    .line 1175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1517
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1518
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1438
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 1217
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1375
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1378
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1379
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1380
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1382
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1383
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doDestroy()V

    .line 1385
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1465
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 1367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1368
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 1421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1422
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .parameter "hidden"

    .prologue
    .line 919
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .parameter "activity"
    .parameter "attrs"
    .parameter "savedInstanceState"

    .prologue
    .line 1159
    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1160
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1161
    return-void
.end method

.method public onInflate(Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .parameter "attrs"
    .parameter "savedInstanceState"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1113
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1114
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1351
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1486
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1497
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1337
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1338
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1455
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 1302
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1303
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 1325
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1281
    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1283
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-nez v0, :cond_1

    .line 1284
    iput-boolean v1, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1285
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_0

    .line 1286
    iput-boolean v1, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1287
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1289
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_1

    .line 1290
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStart()V

    .line 1293
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1346
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1347
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 1354
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1355
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1231
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1273
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 1703
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1704
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1706
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1707
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1708
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1709
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1712
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 1713
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 1715
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 1754
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1755
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1756
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1758
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1819
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 1820
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1829
    :cond_0
    :goto_0
    return v0

    .line 1823
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 1824
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1829
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1673
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 1674
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1676
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1677
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1678
    iget-boolean v1, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 1679
    new-instance v1, Landroid/app/SuperNotCalledException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " did not call through to super.onCreate()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1682
    :cond_1
    if-eqz p1, :cond_3

    .line 1683
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1684
    .local v0, p:Landroid/os/Parcelable;
    if-eqz v0, :cond_3

    .line 1685
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-nez v1, :cond_2

    .line 1686
    invoke-virtual {p0}, Landroid/app/Fragment;->instantiateChildFragmentManager()V

    .line 1688
    :cond_2
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    .line 1689
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1692
    .end local v0           #p:Landroid/os/Parcelable;
    :cond_3
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 1775
    const/4 v0, 0x0

    .line 1776
    .local v0, show:Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 1777
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 1778
    const/4 v0, 0x1

    .line 1779
    invoke-virtual {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1781
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 1782
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1785
    :cond_1
    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 1696
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1697
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1699
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method performDestroy()V
    .locals 3

    .prologue
    .line 1908
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1909
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 1911
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1912
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1913
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1914
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1917
    :cond_1
    return-void
.end method

.method performDestroyView()V
    .locals 3

    .prologue
    .line 1893
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 1896
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1897
    invoke-virtual {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 1898
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1899
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1902
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_2

    .line 1903
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportNextStart()V

    .line 1905
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 1

    .prologue
    .line 1761
    invoke-virtual {p0}, Landroid/app/Fragment;->onLowMemory()V

    .line 1762
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1763
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 1765
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 1803
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_2

    .line 1804
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    .line 1805
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1815
    :cond_0
    :goto_0
    return v0

    .line 1809
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 1810
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1815
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1833
    iget-boolean v0, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    .line 1834
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_0

    .line 1835
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1837
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_1

    .line 1838
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 1841
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 3

    .prologue
    .line 1854
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1855
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    .line 1857
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1858
    invoke-virtual {p0}, Landroid/app/Fragment;->onPause()V

    .line 1859
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1860
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1863
    :cond_1
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1789
    const/4 v0, 0x0

    .line 1790
    .local v0, show:Z
    iget-boolean v1, p0, Landroid/app/Fragment;->mHidden:Z

    if-nez v1, :cond_1

    .line 1791
    iget-boolean v1, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_0

    .line 1792
    const/4 v0, 0x1

    .line 1793
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1795
    :cond_0
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_1

    .line 1796
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1799
    :cond_1
    return v0
.end method

.method performResume()V
    .locals 3

    .prologue
    .line 1737
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1739
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1741
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1742
    invoke-virtual {p0}, Landroid/app/Fragment;->onResume()V

    .line 1743
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1744
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 1748
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 1749
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1751
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1844
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1845
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 1846
    iget-object v1, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1847
    .local v0, p:Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1848
    const-string v1, "android:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1851
    .end local v0           #p:Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 3

    .prologue
    .line 1718
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1720
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1722
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1723
    invoke-virtual {p0}, Landroid/app/Fragment;->onStart()V

    .line 1724
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1725
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1728
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_2

    .line 1729
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 1731
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_3

    .line 1732
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doReportStart()V

    .line 1734
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1866
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1867
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    .line 1869
    :cond_0
    iput-boolean v3, p0, Landroid/app/Fragment;->mCalled:Z

    .line 1870
    invoke-virtual {p0}, Landroid/app/Fragment;->onStop()V

    .line 1871
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 1872
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1876
    :cond_1
    iget-boolean v0, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    if-eqz v0, :cond_4

    .line 1877
    iput-boolean v3, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    .line 1878
    iget-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v0, :cond_2

    .line 1879
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1880
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Landroid/app/Fragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/app/LoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    .line 1882
    :cond_2
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    if-eqz v0, :cond_4

    .line 1883
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    iget-boolean v0, v0, Landroid/app/Activity;->mChangingConfigurations:Z

    if-nez v0, :cond_5

    .line 1884
    :cond_3
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doStop()V

    .line 1890
    :cond_4
    :goto_0
    return-void

    .line 1886
    :cond_5
    iget-object v0, p0, Landroid/app/Fragment;->mLoaderManager:Landroid/app/LoaderManagerImpl;

    invoke-virtual {v0}, Landroid/app/LoaderManagerImpl;->doRetain()V

    goto :goto_0
.end method

.method performTrimMemory(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 1768
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onTrimMemory(I)V

    .line 1769
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    .line 1772
    :cond_0
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1531
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1532
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 611
    iget-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Landroid/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 615
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    .line 616
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 617
    iget-boolean v0, p0, Landroid/app/Fragment;->mCalled:Z

    if-nez v0, :cond_1

    .line 618
    new-instance v0, Landroid/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_1
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2
    .parameter "args"

    .prologue
    .line 694
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 695
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_0
    iput-object p1, p0, Landroid/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 698
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 1
    .parameter "hasMenu"

    .prologue
    .line 955
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_0

    .line 956
    iput-boolean p1, p0, Landroid/app/Fragment;->mHasMenu:Z

    .line 957
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 961
    :cond_0
    return-void
.end method

.method final setIndex(ILandroid/app/Fragment;)V
    .locals 2
    .parameter "index"
    .parameter "parent"

    .prologue
    .line 624
    iput p1, p0, Landroid/app/Fragment;->mIndex:I

    .line 625
    if-eqz p2, :cond_0

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/app/Fragment$SavedState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 717
    iget v0, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 718
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment already active"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v0, p0, Landroid/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 722
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "menuVisible"

    .prologue
    .line 973
    iget-boolean v0, p0, Landroid/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 974
    iput-boolean p1, p0, Landroid/app/Fragment;->mMenuVisible:Z

    .line 975
    iget-boolean v0, p0, Landroid/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->invalidateOptionsMenu()V

    .line 979
    :cond_0
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 2
    .parameter "retain"

    .prologue
    .line 936
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/Fragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 937
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    iput-boolean p1, p0, Landroid/app/Fragment;->mRetainInstance:Z

    .line 941
    return-void
.end method

.method public setTargetFragment(Landroid/app/Fragment;I)V
    .locals 0
    .parameter "fragment"
    .parameter "requestCode"

    .prologue
    .line 736
    iput-object p1, p0, Landroid/app/Fragment;->mTarget:Landroid/app/Fragment;

    .line 737
    iput p2, p0, Landroid/app/Fragment;->mTargetRequestCode:I

    .line 738
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2
    .parameter "isVisibleToUser"

    .prologue
    .line 995
    iget-boolean v0, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/app/Fragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 996
    iget-object v0, p0, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/app/Fragment;)V

    .line 998
    :cond_0
    iput-boolean p1, p0, Landroid/app/Fragment;->mUserVisibleHint:Z

    .line 999
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/app/Fragment;->mDeferStart:Z

    .line 1000
    return-void

    .line 999
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1033
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 3
    .parameter "intent"
    .parameter "options"

    .prologue
    const/4 v1, -0x1

    .line 1045
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1046
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1048
    :cond_0
    if-eqz p2, :cond_1

    .line 1049
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1055
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, v1}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1062
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1063
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "intent"
    .parameter "requestCode"
    .parameter "options"

    .prologue
    .line 1070
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    if-eqz p3, :cond_1

    .line 1074
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 1080
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Landroid/app/Fragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 653
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 654
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    if-ltz v1, :cond_0

    .line 655
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget v1, p0, Landroid/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 658
    :cond_0
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_1

    .line 659
    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    iget v1, p0, Landroid/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_1
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 663
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    iget-object v1, p0, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1542
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1543
    return-void
.end method
