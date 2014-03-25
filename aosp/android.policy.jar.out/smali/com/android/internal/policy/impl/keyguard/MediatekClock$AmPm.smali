.class Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;
.super Ljava/lang/Object;
.source "MediatekClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MediatekClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AmPm"
.end annotation


# instance fields
.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MediatekClock;Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2
    .parameter
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const v1, #id@am_pm#t

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p1, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    .line 85
    iget-object v1, p1, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 86
    iget-object v1, p1, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 89
    :cond_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->mAmString:Ljava/lang/String;

    .line 91
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->mPmString:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MediatekClock$AmPm;->this$0:Lcom/android/internal/policy/impl/keyguard/MediatekClock;

    iget-object v1, v0, Lcom/android/internal/policy/impl/keyguard/MediatekClock;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    :cond_0
    return-void

    .line 96
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
