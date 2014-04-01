.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDrmContentDescriptioin:Ljava/lang/String;

.field private mDrmContentName:Ljava/lang/String;

.field private mDrmContentUr:Ljava/lang/String;

.field private mDrmContentVendor:Ljava/lang/String;

.field private mDrmDataLen:J

.field private mDrmIconUri:Ljava/lang/String;

.field private mDrmMethod:J

.field private mDrmOffset:J

.field private mDrmRightsIssuer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsAccurateDuration:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 430
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 1021
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1022
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1023
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    .locals 30
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_1

    .line 849
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 852
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v25

    .line 853
    .local v25, values:Landroid/content/ContentValues;
    const-string/jumbo v26, "title"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 854
    .local v24, title:Ljava/lang/String;
    if-eqz v24, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_3

    .line 855
    :cond_2
    const-string v26, "_data"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 856
    const-string/jumbo v26, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    :cond_3
    const-string v26, "album"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 859
    .local v5, album:Ljava/lang/String;
    const-string v26, "<unknown>"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_5

    .line 860
    const-string v26, "_data"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 862
    const/16 v26, 0x2f

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v14

    .line 863
    .local v14, lastSlash:I
    if-ltz v14, :cond_5

    .line 864
    const/16 v17, 0x0

    .line 866
    .local v17, previousSlash:I
    :goto_0
    const/16 v26, 0x2f

    add-int/lit8 v27, v17, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 867
    .local v12, idx:I
    if-ltz v12, :cond_4

    if-lt v12, v14, :cond_10

    .line 872
    :cond_4
    if-eqz v17, :cond_5

    .line 873
    add-int/lit8 v26, v17, 0x1

    move/from16 v0, v26

    invoke-virtual {v5, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 874
    const-string v26, "album"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    .end local v12           #idx:I
    .end local v14           #lastSlash:I
    .end local v17           #previousSlash:I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v19, v0

    .line 879
    .local v19, rowId:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v26

    if-eqz v26, :cond_11

    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-eqz v26, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)I

    move-result v26

    if-eqz v26, :cond_11

    .line 884
    :cond_6
    const-string v26, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 885
    const-string v26, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 886
    const-string v26, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 887
    const-string v26, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 888
    const-string v26, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 943
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v21

    .line 944
    .local v21, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v13

    .line 945
    .local v13, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v21

    .line 954
    :cond_8
    :goto_2
    const/16 v18, 0x0

    .line 955
    .local v18, result:Landroid/net/Uri;
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-nez v26, :cond_19

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)I

    move-result v26

    if-eqz v26, :cond_9

    .line 957
    const-string/jumbo v26, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v27, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v27 .. v27}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_b

    .line 960
    move-object/from16 v0, p1

    iget v11, v0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    .line 961
    .local v11, format:I
    if-nez v11, :cond_a

    .line 962
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 964
    :cond_a
    const-string v26, "format"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 971
    .end local v11           #format:I
    :cond_b
    if-eqz v13, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    move/from16 v26, v0

    const/16 v27, 0x3001

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 972
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v18

    .line 977
    :goto_3
    if-eqz v18, :cond_d

    .line 978
    invoke-static/range {v18 .. v18}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v19

    .line 979
    move-wide/from16 v0, v19

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    .line 990
    :cond_d
    :goto_4
    if-eqz p3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v26

    if-eqz v26, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Z

    move-result v26

    if-nez v26, :cond_1a

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v27, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 993
    :cond_e
    const-string/jumbo v26, "notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 994
    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setProfileSettings(ILandroid/net/Uri;J)V

    .line 995
    const-string/jumbo v26, "pre_set_notification_sound"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v26 .. v27}, Landroid/media/MediaScanner;->access$1902(Landroid/media/MediaScanner;Z)Z

    .line 1017
    :cond_f
    :goto_5
    return-object v18

    .line 870
    .end local v13           #inserter:Landroid/media/MediaInserter;
    .end local v18           #result:Landroid/net/Uri;
    .end local v19           #rowId:J
    .end local v21           #tableUri:Landroid/net/Uri;
    .restart local v12       #idx:I
    .restart local v14       #lastSlash:I
    .restart local v17       #previousSlash:I
    :cond_10
    move/from16 v17, v12

    .line 871
    goto/16 :goto_0

    .line 889
    .end local v12           #idx:I
    .end local v14           #lastSlash:I
    .end local v17           #previousSlash:I
    .restart local v19       #rowId:J
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    const/16 v27, 0x191

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    const/16 v27, 0x197

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    .line 890
    const/4 v8, 0x0

    .line 891
    .local v8, exif:Landroid/media/ExifInterface;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    .line 893
    .local v10, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v9, Landroid/media/ExifInterface;

    invoke-direct {v9, v10}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #exif:Landroid/media/ExifInterface;
    .local v9, exif:Landroid/media/ExifInterface;
    move-object v8, v9

    .line 898
    .end local v9           #exif:Landroid/media/ExifInterface;
    .restart local v8       #exif:Landroid/media/ExifInterface;
    :goto_6
    if-eqz v8, :cond_7

    .line 899
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v15, v0, [F

    .line 900
    .local v15, latlng:[F
    invoke-virtual {v8, v15}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v26

    if-eqz v26, :cond_13

    .line 901
    const-string v26, "latitude"

    const/16 v27, 0x0

    aget v27, v15, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 902
    const-string/jumbo v26, "longitude"

    const/16 v27, 0x1

    aget v27, v15, v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 905
    :cond_13
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v22

    .line 906
    .local v22, time:J
    const-wide/16 v26, -0x1

    cmp-long v26, v22, v26

    if-eqz v26, :cond_15

    .line 907
    const-string v26, "datetaken"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 919
    :cond_14
    :goto_7
    const-string v26, "Orientation"

    const/16 v27, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v16

    .line 921
    .local v16, orientation:I
    const/16 v26, -0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    .line 924
    packed-switch v16, :pswitch_data_0

    .line 935
    :pswitch_0
    const/4 v6, 0x0

    .line 938
    .local v6, degree:I
    :goto_8
    const-string/jumbo v26, "orientation"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 894
    .end local v6           #degree:I
    .end local v15           #latlng:[F
    .end local v16           #orientation:I
    .end local v22           #time:J
    :catch_0
    move-exception v7

    .line 896
    .local v7, ex:Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 913
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v15       #latlng:[F
    .restart local v22       #time:J
    :cond_15
    invoke-virtual {v8}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v22

    .line 914
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x3e8

    mul-long v26, v26, v28

    sub-long v26, v26, v22

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    const-wide/32 v28, 0x5265c00

    cmp-long v26, v26, v28

    if-ltz v26, :cond_14

    .line 915
    const-string v26, "datetaken"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .line 926
    .restart local v16       #orientation:I
    :pswitch_1
    const/16 v6, 0x5a

    .line 927
    .restart local v6       #degree:I
    goto :goto_8

    .line 929
    .end local v6           #degree:I
    :pswitch_2
    const/16 v6, 0xb4

    .line 930
    .restart local v6       #degree:I
    goto :goto_8

    .line 932
    .end local v6           #degree:I
    :pswitch_3
    const/16 v6, 0x10e

    .line 933
    .restart local v6       #degree:I
    goto :goto_8

    .line 948
    .end local v6           #degree:I
    .end local v8           #exif:Landroid/media/ExifInterface;
    .end local v10           #filePath:Ljava/lang/String;
    .end local v15           #latlng:[F
    .end local v16           #orientation:I
    .end local v22           #time:J
    .restart local v13       #inserter:Landroid/media/MediaInserter;
    .restart local v21       #tableUri:Landroid/net/Uri;
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v26

    if-eqz v26, :cond_17

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v21

    goto/16 :goto_2

    .line 950
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v26

    if-eqz v26, :cond_8

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v21

    goto/16 :goto_2

    .line 974
    .restart local v18       #result:Landroid/net/Uri;
    :cond_18
    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_3

    .line 983
    :cond_19
    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 986
    const-string v26, "_data"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 998
    :cond_1a
    if-eqz p2, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v26

    if-eqz v26, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Z

    move-result v26

    if-nez v26, :cond_1c

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v27, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1001
    :cond_1b
    const-string/jumbo v26, "ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1002
    const-string/jumbo v26, "video_call"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1003
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setProfileSettings(ILandroid/net/Uri;J)V

    .line 1004
    const/16 v26, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setProfileSettings(ILandroid/net/Uri;J)V

    .line 1005
    const-string/jumbo v26, "pre_set_ringtone"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v26 .. v27}, Landroid/media/MediaScanner;->access$2102(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 1008
    :cond_1c
    if-eqz p4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v26

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_1d

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v27, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 1011
    :cond_1d
    const-string v26, "alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1012
    const-string/jumbo v26, "pre_set_alarm_alert"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-wide/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v26 .. v27}, Landroid/media/MediaScanner;->access$2302(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 1052
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v2}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1053
    const/4 v1, 0x0

    .line 1069
    :cond_0
    :goto_0
    return v1

    .line 1056
    :cond_1
    const/4 v1, 0x0

    .line 1058
    .local v1, resultFileType:I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1059
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$2602(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 1062
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1063
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1065
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 1066
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 625
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 626
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 639
    .end local p3
    :goto_0
    return p3

    .line 628
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 630
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 632
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 633
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 634
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 635
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 636
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 639
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 755
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 756
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 757
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 758
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, th:Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setProfileSettings(ILandroid/net/Uri;J)V
    .locals 4
    .parameter "type"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1038
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1039
    const-string/jumbo v3, "mtk_audioprofile_default_notification"

    invoke-direct {p0, v3, p2, p3, p4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 1045
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getStreamUriKeys(I)Ljava/util/List;

    move-result-object v2

    .line 1046
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1047
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0, v1, p2, p3, p4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_1

    .line 1040
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1041
    const-string/jumbo v3, "mtk_audioprofile_default_ringtone"

    invoke-direct {p0, v3, p2, p3, p4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0

    .line 1042
    :cond_2
    const/16 v3, 0x8

    if-ne p1, v3, :cond_0

    .line 1043
    const-string/jumbo v3, "mtk_audioprofile_default_video_call"

    invoke-direct {p0, v3, p2, p3, p4}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    goto :goto_0

    .line 1049
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-void
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 1028
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1032
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1035
    :cond_0
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 783
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 785
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v1, "date_modified"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 788
    const-string v1, "_size"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 789
    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string v1, "is_drm"

    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 792
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v1, :cond_0

    .line 793
    const-string/jumbo v1, "width"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 794
    const-string v1, "height"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 797
    :cond_0
    iget-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v1, :cond_1

    .line 798
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 799
    const-string v2, "artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    const-string v2, "album"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    const-string v1, "duration"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 827
    :cond_1
    :goto_2
    iget-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    if-eqz v1, :cond_2

    .line 828
    const-string v1, "drm_content_description"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentDescriptioin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v1, "drm_content_name"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "drm_content_uri"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentUr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v1, "drm_content_vendor"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentVendor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v1, "drm_dataLen"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmDataLen:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 833
    const-string v1, "drm_icon_uri"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmIconUri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v1, "drm_offset"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmOffset:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 835
    const-string v1, "drm_rights_issuer"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmRightsIssuer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const-string v1, "drm_method"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMethod:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 839
    :cond_2
    return-object v0

    .line 799
    :cond_3
    const-string v1, "<unknown>"

    goto :goto_0

    .line 801
    :cond_4
    const-string v1, "<unknown>"

    goto :goto_1

    .line 805
    :cond_5
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 807
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 808
    const-string v2, "artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v2, "album_artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v2, "album"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    const-string v1, "composer"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v1, "genre"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v1, :cond_6

    .line 817
    const-string/jumbo v1, "year"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 819
    :cond_6
    const-string/jumbo v1, "track"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 820
    const-string v1, "duration"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    const-string v1, "compilation"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const-string v1, "isaccurateduration"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsAccurateDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 808
    :cond_7
    const-string v1, "<unknown>"

    goto :goto_3

    .line 810
    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .line 812
    :cond_9
    const-string v1, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileCacheEntry;
    .locals 15
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 466
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 467
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 468
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 470
    if-nez p7, :cond_4

    .line 471
    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    const/16 p8, 0x1

    .line 474
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 477
    if-eqz p2, :cond_1

    .line 478
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 493
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 494
    const-string v3, "."

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 495
    .local v12, lastDot:I
    if-lez v12, :cond_2

    add-int/lit8 v3, v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DCF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 496
    const-string v3, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detect a *.DCF file with input mime type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 502
    .end local v12           #lastDot:I
    :cond_2
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_3

    .line 503
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v13

    .line 504
    .local v13, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v13, :cond_3

    .line 505
    iget v3, v13, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 506
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 507
    iget-object v3, v13, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 512
    .end local v13           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_3
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 513
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 517
    :cond_4
    move-object/from16 v11, p1

    .line 518
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 521
    :cond_5
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileCacheEntry;

    .line 523
    .local v2, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v2, :cond_9

    iget-wide v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 524
    .local v9, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_6

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_a

    :cond_6
    const/4 v14, 0x1

    .line 525
    .local v14, wasModified:Z
    :goto_1
    if-eqz v2, :cond_7

    if-eqz v14, :cond_8

    .line 526
    :cond_7
    if-eqz v14, :cond_b

    .line 527
    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    .line 533
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    .line 535
    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    .line 537
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 538
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const/4 v2, 0x0

    .line 572
    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :goto_3
    return-object v2

    .line 523
    .end local v9           #delta:J
    .end local v14           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_9
    const-wide/16 v9, 0x0

    goto :goto_0

    .line 524
    .restart local v9       #delta:J
    :cond_a
    const/4 v14, 0x0

    goto :goto_1

    .line 529
    .restart local v14       #wasModified:Z
    :cond_b
    new-instance v2, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_c

    const/16 v8, 0x3001

    :goto_4
    move-object/from16 v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(JLjava/lang/String;JI)V

    .line 531
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 529
    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    .line 544
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_d
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    .line 545
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    .line 546
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    .line 547
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 548
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    .line 549
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    .line 550
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    .line 551
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    .line 552
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    .line 553
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    .line 554
    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    .line 555
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    .line 556
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsAccurateDuration:I

    .line 557
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    .line 558
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    .line 559
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 560
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    .line 562
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentDescriptioin:Ljava/lang/String;

    .line 563
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentName:Ljava/lang/String;

    .line 564
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentUr:Ljava/lang/String;

    .line 565
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentVendor:Ljava/lang/String;

    .line 566
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmIconUri:Ljava/lang/String;

    .line 567
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmRightsIssuer:Ljava/lang/String;

    .line 568
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmDataLen:J

    .line 569
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmOffset:J

    .line 570
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMethod:J

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 12
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 585
    const/4 v11, 0x0

    .local v11, result:Landroid/net/Uri;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p9

    .line 588
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 591
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 592
    :cond_0
    if-eqz p9, :cond_2

    .line 593
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v11

    .line 621
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_1
    :goto_0
    return-object v11

    .line 595
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 596
    .local v10, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    const/4 v2, 0x1

    .line 597
    .local v2, ringtones:Z
    :goto_1
    const-string v0, "/notifications/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v3, 0x1

    .line 598
    .local v3, notifications:Z
    :goto_2
    const-string v0, "/alarms/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v4, 0x1

    .line 599
    .local v4, alarms:Z
    :goto_3
    const-string v0, "/podcasts/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v6, 0x1

    .line 600
    .local v6, podcasts:Z
    :goto_4
    const-string v0, "/music/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    if-nez v2, :cond_b

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    if-nez v6, :cond_b

    :cond_3
    const/4 v5, 0x1

    .line 604
    .local v5, music:Z
    :goto_5
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 606
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 609
    :cond_5
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 610
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_6
    move-object v0, p0

    .line 613
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 596
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 597
    .restart local v2       #ringtones:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 598
    .restart local v3       #notifications:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 599
    .restart local v4       #alarms:Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 600
    .restart local v6       #podcasts:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    .line 616
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v6           #podcasts:Z
    .end local v10           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 617
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v7, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "genreTagValue"

    .prologue
    const/4 v6, 0x0

    const/16 v9, 0xff

    .line 710
    if-nez p1, :cond_1

    move-object p1, v6

    .line 749
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 713
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 715
    .local v4, length:I
    if-lez v4, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x28

    if-ne v7, v8, :cond_0

    .line 716
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 717
    .local v5, number:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .line 718
    .local v3, i:I
    :goto_1
    add-int/lit8 v7, v4, -0x1

    if-ge v3, v7, :cond_2

    .line 719
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 720
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 721
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 718
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 726
    .end local v0           #c:C
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x29

    if-ne v7, v8, :cond_0

    .line 728
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    .line 729
    .local v2, genreIndex:S
    if-ltz v2, :cond_0

    .line 730
    invoke-static {}, Landroid/media/MediaScanner;->access$900()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 731
    invoke-static {}, Landroid/media/MediaScanner;->access$900()[Ljava/lang/String;

    move-result-object v6

    aget-object p1, v6, v2

    goto :goto_0

    .line 732
    :cond_3
    if-ne v2, v9, :cond_4

    move-object p1, v6

    .line 733
    goto :goto_0

    .line 734
    :cond_4
    if-ge v2, v9, :cond_5

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v4, :cond_5

    .line 737
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 740
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 743
    .end local v2           #genreIndex:S
    :catch_0
    move-exception v1

    .line 744
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 644
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 648
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 706
    :cond_1
    :goto_0
    return-void

    .line 649
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 650
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 651
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 653
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 654
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 655
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 656
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 657
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 658
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 660
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 661
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 662
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 663
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 666
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 667
    .local v0, num:I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 668
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 672
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 673
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 674
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 675
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 676
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 677
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 678
    :cond_15
    const-string v3, "isaccurateduration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 681
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsAccurateDuration:I

    goto/16 :goto_0

    .line 683
    :cond_16
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 684
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 685
    :cond_17
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 686
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_18

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_18
    move v1, v2

    goto :goto_1

    .line 687
    :cond_19
    const-string v1, "drm_content_uri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 688
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentUr:Ljava/lang/String;

    goto/16 :goto_0

    .line 689
    :cond_1a
    const-string v1, "drm_offset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 690
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmOffset:J

    goto/16 :goto_0

    .line 691
    :cond_1b
    const-string v1, "drm_dataLen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 692
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmDataLen:J

    goto/16 :goto_0

    .line 693
    :cond_1c
    const-string v1, "drm_rights_issuer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 694
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmRightsIssuer:Ljava/lang/String;

    goto/16 :goto_0

    .line 695
    :cond_1d
    const-string v1, "drm_content_name"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 696
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentName:Ljava/lang/String;

    goto/16 :goto_0

    .line 697
    :cond_1e
    const-string v1, "drm_content_description"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 698
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentDescriptioin:Ljava/lang/String;

    goto/16 :goto_0

    .line 699
    :cond_1f
    const-string v1, "drm_content_vendor"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 700
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmContentVendor:Ljava/lang/String;

    goto/16 :goto_0

    .line 701
    :cond_20
    const-string v1, "drm_icon_uri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 702
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmIconUri:Ljava/lang/String;

    goto/16 :goto_0

    .line 703
    :cond_21
    const-string v1, "drm_method"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 704
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDrmMethod:J

    goto/16 :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 580
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 581
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 765
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    :goto_0
    return-void

    .line 772
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 773
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
