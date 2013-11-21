.class public Landroid/widget/Editor$UserDictionaryListener;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDictionaryListener"
.end annotation


# instance fields
.field public mOriginalWord:Ljava/lang/String;

.field public mTextView:Landroid/widget/TextView;

.field public mWordEnd:I

.field public mWordStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4378
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private onUserDictionaryAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "originalWord"
    .parameter "addedWord"

    .prologue
    .line 4412
    iget-object v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mOriginalWord:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4433
    :cond_0
    :goto_0
    return-void

    .line 4415
    :cond_1
    iget v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordStart:I

    if-ltz v3, :cond_0

    iget v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordEnd:I

    iget-object v4, p0, Landroid/widget/Editor$UserDictionaryListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 4418
    iget-object v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mOriginalWord:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4421
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4424
    iget-object v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 4425
    .local v1, editable:Landroid/text/Editable;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordStart:I

    iget v5, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordEnd:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4426
    .local v0, currentWord:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4429
    iget-object v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mTextView:Landroid/widget/TextView;

    iget v4, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordStart:I

    iget v5, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordEnd:I

    invoke-virtual {v3, v4, v5, p2}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 4431
    iget v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordStart:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v3, v4

    .line 4432
    .local v2, newCursorPosition:I
    iget-object v3, p0, Landroid/widget/Editor$UserDictionaryListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v2}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 4394
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 4407
    :goto_0
    :pswitch_0
    return-void

    .line 4397
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 4398
    const-string v3, "Editor"

    const-string v4, "Illegal message. Abort handling onUserDictionaryAdded."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4401
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 4402
    .local v1, bundle:Landroid/os/Bundle;
    const-string/jumbo v3, "originalWord"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4403
    .local v2, originalWord:Ljava/lang/String;
    const-string/jumbo v3, "word"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4404
    .local v0, addedWord:Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Landroid/widget/Editor$UserDictionaryListener;->onUserDictionaryAdded(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public waitForUserDictionaryAdded(Landroid/widget/TextView;Ljava/lang/String;II)V
    .locals 0
    .parameter "tv"
    .parameter "originalWord"
    .parameter "spanStart"
    .parameter "spanEnd"

    .prologue
    .line 4386
    iput-object p1, p0, Landroid/widget/Editor$UserDictionaryListener;->mTextView:Landroid/widget/TextView;

    .line 4387
    iput-object p2, p0, Landroid/widget/Editor$UserDictionaryListener;->mOriginalWord:Ljava/lang/String;

    .line 4388
    iput p3, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordStart:I

    .line 4389
    iput p4, p0, Landroid/widget/Editor$UserDictionaryListener;->mWordEnd:I

    .line 4390
    return-void
.end method
