.class final Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "SMSDispatcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mRememberChoice:Z

.field private final mRememberUndoInstruction:Landroid/widget/TextView;

.field private final mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter "tracker"
    .parameter "textView"

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1357
    iput-object p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 1358
    iput-object p3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    .line 1359
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 1399
    const-string v0, "SMS"

    const-string v1, "dialog dismissed: don\'t send SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1401
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 1405
    const-string v0, "SMS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remember this choice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iput-boolean p2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    .line 1407
    if-eqz p2, :cond_1

    .line 1408
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x1040427

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1409
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x1040428

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1410
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    const v1, 0x1040426

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1413
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x1040423

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1417
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    const v1, 0x1040424

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1418
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1419
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberUndoInstruction:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 1373
    const/4 v0, 0x1

    .line 1375
    .local v0, newSmsPermission:I
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1376
    const-string v1, "SMS"

    const-string v2, "CONFIRM sending SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    const v1, 0xc3d0

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1380
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1381
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    if-eqz v1, :cond_0

    .line 1382
    const/4 v0, 0x3

    .line 1394
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->setPremiumSmsPermission(Ljava/lang/String;I)V

    .line 1395
    return-void

    .line 1384
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 1385
    const-string v1, "SMS"

    const-string v2, "DENY sending SMS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    const v1, 0xc3cd

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mAppInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1389
    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1390
    iget-boolean v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mRememberChoice:Z

    if-eqz v1, :cond_0

    .line 1391
    const/4 v0, 0x2

    goto :goto_0
.end method

.method setNegativeButton(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 1366
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mNegativeButton:Landroid/widget/Button;

    .line 1367
    return-void
.end method

.method setPositiveButton(Landroid/widget/Button;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConfirmDialogListener;->mPositiveButton:Landroid/widget/Button;

    .line 1363
    return-void
.end method
