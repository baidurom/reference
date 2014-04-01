.class public Landroid/app/NotificationManagerPlus$ManagerBuilder;
.super Ljava/lang/Object;
.source "NotificationManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ManagerBuilder"
.end annotation


# instance fields
.field private P:Landroid/app/NotificationManagerPlus$Parameters;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    new-instance v0, Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationManagerPlus$Parameters;-><init>(Landroid/app/NotificationManagerPlus$1;)V

    iput-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    .line 484
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mContext:Landroid/content/Context;

    .line 485
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 486
    return-void
.end method


# virtual methods
.method public create()Landroid/app/NotificationManagerPlus;
    .locals 3

    .prologue
    .line 596
    new-instance v0, Landroid/app/NotificationManagerPlus;

    iget-object v1, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/app/NotificationManagerPlus;-><init>(Landroid/app/NotificationManagerPlus$Parameters;Landroid/app/NotificationManagerPlus$1;)V

    return-object v0
.end method

.method public setCancelable(Z)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "cancelable"

    .prologue
    .line 551
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-boolean p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelable:Z

    .line 552
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 527
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 528
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 529
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNegativeButtonHandled:Z

    .line 530
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 512
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 513
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 514
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mNeutralButtonHandled:Z

    .line 515
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "listener"

    .prologue
    .line 540
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 541
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mCancelHandled:Z

    .line 542
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 560
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 561
    return-object p0
.end method

.method public setOnFirstShowListener(Landroid/app/NotificationManagerPlus$OnFirstShowListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 589
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnFirstShowListener:Landroid/app/NotificationManagerPlus$OnFirstShowListener;

    .line 590
    return-object p0
.end method

.method public setOnLastDismissListener(Landroid/app/NotificationManagerPlus$OnLastDismissListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 579
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnLastDismissListener:Landroid/app/NotificationManagerPlus$OnLastDismissListener;

    .line 580
    return-object p0
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 1
    .parameter "listener"

    .prologue
    .line 570
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    .line 571
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/NotificationManagerPlus$ManagerBuilder;
    .locals 2
    .parameter "text"
    .parameter "listener"

    .prologue
    .line 497
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 498
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    iput-object p2, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 499
    iget-object v0, p0, Landroid/app/NotificationManagerPlus$ManagerBuilder;->P:Landroid/app/NotificationManagerPlus$Parameters;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/NotificationManagerPlus$Parameters;->mPositiveButtonHandled:Z

    .line 500
    return-object p0
.end method
