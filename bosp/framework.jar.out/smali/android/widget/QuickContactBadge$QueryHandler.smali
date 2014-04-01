.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 267
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 268
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 269
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 273
    const/4 v4, 0x0

    .line 274
    .local v4, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 275
    .local v2, createUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 278
    .local v5, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 308
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 309
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_1
    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v6, v4}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 314
    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v6}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 316
    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 318
    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v9, v9, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v6, v7, v4, v8, v9}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 328
    :cond_2
    :goto_1
    return-void

    .line 280
    .restart local p2
    :pswitch_0
    const/4 v5, 0x1

    .line 281
    :try_start_0
    const-string/jumbo v6, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v7, 0x0

    invoke-static {v6, p2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 285
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 286
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 287
    .local v0, contactId:J
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 289
    goto :goto_0

    .line 294
    .end local v0           #contactId:J
    .end local v3           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v5, 0x1

    .line 295
    const-string/jumbo v6, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v7, 0x0

    invoke-static {v6, p2, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 299
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 300
    const/4 v6, 0x0

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 301
    .restart local v0       #contactId:J
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 302
    .restart local v3       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    goto :goto_0

    .line 308
    .end local v0           #contactId:J
    .end local v3           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz p3, :cond_3

    .line 309
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v6

    .line 320
    :cond_4
    if-eqz v2, :cond_2

    .line 325
    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->showStrangeQuickContact(Landroid/net/Uri;)V
    invoke-static {v6, v2}, Landroid/widget/QuickContactBadge;->access$200(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    goto :goto_1

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
