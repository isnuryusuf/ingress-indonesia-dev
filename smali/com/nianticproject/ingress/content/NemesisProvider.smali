.class public Lcom/nianticproject/ingress/content/NemesisProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:Landroid/content/UriMatcher;


# instance fields
.field private c:Lcom/nianticproject/ingress/content/g;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/content/NemesisProvider;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 280
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    .line 281
    sput-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    const-string/jumbo v2, "comms"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    const-string/jumbo v2, "comms/group/#"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 283
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    const-string/jumbo v2, "comms/group/#/limit/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    const-string/jumbo v2, "comms/stats"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 285
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    const-string/jumbo v2, "portal_curation"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 685
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 616
    const-string/jumbo v0, "comms"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-static {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x33c

    .line 361
    const-string/jumbo v0, "comms"

    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 367
    const-string/jumbo v0, "comms"

    const-string/jumbo v1, "_id <= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sub-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method static a()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 640
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "drop index if exists ix_comms_by_from_server;"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "drop index if exists ix_comms_by_temporary;"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "drop index if exists ix_comms_by_factions;"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "drop table if exists comms;"

    aput-object v2, v0, v1

    return-object v0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 653
    const-string/jumbo v0, "drop table if exists portal_curation;"

    return-object v0
.end method

.method private static b([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 620
    if-nez p0, :cond_0

    .line 621
    const-string/jumbo v0, "null"

    .line 634
    :goto_0
    return-object v0

    .line 623
    :cond_0
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 625
    :try_start_0
    const-string/jumbo v1, "["

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v1, v0

    .line 626
    :goto_1
    array-length v0, p0

    if-ge v1, v0, :cond_2

    .line 627
    if-lez v1, :cond_1

    const-string/jumbo v0, ", %s"

    .line 628
    :goto_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, p0, v1

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 626
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 627
    :cond_1
    const-string/jumbo v0, "%s"

    goto :goto_2

    .line 630
    :cond_2
    const-string/jumbo v0, "]"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 631
    invoke-virtual {v2}, Ljava/util/Formatter;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 634
    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/Formatter;->close()V

    throw v0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 660
    const-string/jumbo v0, "alter table portal_curation add column upload_url TEXT;"

    return-object v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    const-string/jumbo v0, "alter table portal_curation add column takedown_reason TEXT;"

    return-object v0
.end method

.method static e()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 673
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "CREATE TABLE comms (_id INTEGER PRIMARY KEY AUTOINCREMENT,message TEXT NOT NULL,markup BLOB,plext_type INT NOT NULL,timestamp INT NOT NULL,duration INT NOT NULL,channel INT NOT NULL,guid TEXT UNIQUE NOT NULL,categories INT DEFAULT 0,temporary INT DEFAULT 0,from_server INT NOT NULL,has_nudge INT DEFAULT 0 NOT NULL);"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "CREATE UNIQUE INDEX ix_comms_by_factions on comms(channel,plext_type,timestamp,categories,_id);"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "CREATE UNIQUE INDEX ix_comms_by_temporary on comms(temporary DESC,_id);"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "CREATE UNIQUE INDEX ix_comms_by_from_server on comms(from_server DESC,_id);"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "CREATE TABLE IF NOT EXISTS portal_curation (request_id TEXT PRIMARY KEY,portal_guid TEXT,title TEXT,desc TEXT,latitude REAL,longitude REAL,photo_uri TEXT,timestamp INTEGER NOT NULL,metadata_uploaded INTEGER DEFAULT(0),photo_uploaded INTEGER DEFAULT(0),account TEXT NOT NULL,failed_metadata_upload_count INTEGER DEFAULT(0),failed_photo_upload_count INTEGER DEFAULT(0),upload_url TEXT,takedown_reason TEXT);"

    aput-object v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v0, 0x0

    .line 374
    :try_start_0
    const-string/jumbo v1, "NemesisProvider.bulkInsert"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 375
    new-instance v1, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;

    move-result-object v6

    .line 377
    iget-object v1, p0, Lcom/nianticproject/ingress/content/NemesisProvider;->c:Lcom/nianticproject/ingress/content/g;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/content/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 380
    sget-object v1, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 398
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    .line 409
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    :goto_0
    return v0

    .line 382
    :pswitch_0
    :try_start_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 385
    :try_start_2
    array-length v8, p2

    move v1, v0

    move-wide v2, v4

    :goto_1
    if-ge v1, v8, :cond_1

    aget-object v2, p2, v1

    .line 386
    invoke-static {v7, v2}, Lcom/nianticproject/ingress/content/NemesisProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 387
    cmp-long v9, v2, v4

    if-eqz v9, :cond_0

    .line 388
    add-int/lit8 v0, v0, 0x1

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 391
    :cond_1
    if-lez v0, :cond_2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 392
    invoke-static {v7, v2, v3}, Lcom/nianticproject/ingress/content/NemesisProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 394
    :cond_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    :try_start_3
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 402
    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/w/al;->b()Lcom/nianticproject/ingress/common/w/al;

    .line 403
    sget-object v1, Lcom/nianticproject/ingress/content/NemesisProvider;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v6}, Lcom/nianticproject/ingress/common/w/al;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 406
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 409
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 396
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 409
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 545
    :try_start_0
    const-string/jumbo v0, "NemesisProvider.delete"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 546
    new-instance v0, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 551
    :try_start_1
    const-string/jumbo v0, "BuildDatabaseQuery"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 552
    new-instance v2, Lcom/nianticproject/ingress/content/h;

    invoke-direct {v2, p0, p2, p3}, Lcom/nianticproject/ingress/content/h;-><init>(Lcom/nianticproject/ingress/content/NemesisProvider;Ljava/lang/String;[Ljava/lang/String;)V

    .line 553
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 573
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot delete Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 576
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 594
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 555
    :pswitch_1
    :try_start_3
    const-string/jumbo v0, "comms"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 576
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 580
    :try_start_5
    const-string/jumbo v3, "RunDatabaseQuery"

    invoke-static {v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 581
    iget-object v3, p0, Lcom/nianticproject/ingress/content/NemesisProvider;->c:Lcom/nianticproject/ingress/content/g;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/content/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 582
    invoke-virtual {v2}, Lcom/nianticproject/ingress/content/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nianticproject/ingress/content/h;->b()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 584
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/al;->b()Lcom/nianticproject/ingress/common/w/al;

    .line 585
    sget-object v4, Lcom/nianticproject/ingress/content/NemesisProvider;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    const/4 v0, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/al;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    .line 588
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 591
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 594
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v3

    .line 559
    :pswitch_2
    :try_start_7
    const-string/jumbo v0, "comms"

    .line 560
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/nianticproject/ingress/common/b;->a(I)Lcom/nianticproject/ingress/common/b;

    move-result-object v3

    .line 561
    const-string/jumbo v4, "channel"

    iget v3, v3, Lcom/nianticproject/ingress/common/b;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/nianticproject/ingress/content/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 565
    :pswitch_3
    const-string/jumbo v0, "portal_curation"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 591
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 553
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 303
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown Uri type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :pswitch_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.nianticproject.ingress.comms"

    .line 313
    :goto_0
    return-object v0

    .line 310
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.nianticproject.ingress.comms"

    goto :goto_0

    .line 313
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.nianticproject.ingress.portal_curation"

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 322
    :try_start_0
    const-string/jumbo v2, "NemesisProvider.insert"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 323
    new-instance v2, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;

    move-result-object v4

    .line 325
    iget-object v2, p0, Lcom/nianticproject/ingress/content/NemesisProvider;->c:Lcom/nianticproject/ingress/content/g;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/content/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 332
    sget-object v2, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 342
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot insert into Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 334
    :pswitch_1
    :try_start_1
    invoke-static {v3, p2}, Lcom/nianticproject/ingress/content/NemesisProvider;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 335
    invoke-static {v3, v1, v2}, Lcom/nianticproject/ingress/content/NemesisProvider;->a(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 344
    :goto_0
    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/w/al;->b()Lcom/nianticproject/ingress/common/w/al;

    .line 345
    sget-object v3, Lcom/nianticproject/ingress/content/NemesisProvider;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/w/al;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    .line 347
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 348
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 338
    :pswitch_2
    :try_start_2
    const-string/jumbo v0, "portal_curation"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    move v0, v1

    move-wide v8, v2

    move-wide v1, v8

    .line 340
    goto :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 293
    :try_start_0
    const-string/jumbo v0, "NemesisProvider.onCreate"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/nianticproject/ingress/content/g;

    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/content/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/content/NemesisProvider;->c:Lcom/nianticproject/ingress/content/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 417
    :try_start_0
    const-string/jumbo v0, "NemesisProvider.query"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;

    move-result-object v9

    .line 423
    new-instance v2, Lcom/nianticproject/ingress/content/h;

    invoke-direct {v2, p0, p3, p4}, Lcom/nianticproject/ingress/content/h;-><init>(Lcom/nianticproject/ingress/content/NemesisProvider;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 425
    :try_start_1
    const-string/jumbo v0, "BuildDatabaseQuery"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 426
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot query Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 453
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 483
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 428
    :pswitch_0
    :try_start_3
    const-string/jumbo v1, "comms"

    .line 429
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/b;->a(I)Lcom/nianticproject/ingress/common/b;

    move-result-object v0

    .line 430
    const-string/jumbo v3, "channel"

    iget v0, v0, Lcom/nianticproject/ingress/common/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nianticproject/ingress/content/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 453
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 457
    :try_start_5
    const-string/jumbo v0, "RunDatabaseQuery"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/nianticproject/ingress/content/NemesisProvider;->c:Lcom/nianticproject/ingress/content/g;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/content/g;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 459
    invoke-virtual {v2}, Lcom/nianticproject/ingress/content/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/nianticproject/ingress/content/h;->b()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 468
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 469
    invoke-virtual {v9}, Lcom/nianticproject/ingress/common/w/al;->b()Lcom/nianticproject/ingress/common/w/al;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 480
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 483
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    .line 434
    :pswitch_1
    :try_start_7
    const-string/jumbo v1, "comms"

    .line 435
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 436
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 437
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/nianticproject/ingress/common/b;->a(I)Lcom/nianticproject/ingress/common/b;

    move-result-object v0

    .line 438
    const-string/jumbo v3, "channel"

    iget v0, v0, Lcom/nianticproject/ingress/common/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/nianticproject/ingress/content/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :pswitch_2
    const-string/jumbo v1, "comms"

    goto :goto_0

    .line 446
    :pswitch_3
    const-string/jumbo v1, "portal_curation"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 480
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    :try_start_0
    const-string/jumbo v0, "NemesisProvider.update"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/nianticproject/ingress/common/w/al;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/al;-><init>()V

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/al;->a()Lcom/nianticproject/ingress/common/w/al;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 499
    :try_start_1
    const-string/jumbo v0, "BuildDatabaseQuery"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 500
    sget-object v0, Lcom/nianticproject/ingress/content/NemesisProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Cannot update Uri: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 538
    :catchall_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 502
    :sswitch_0
    :try_start_3
    const-string/jumbo v0, "comms"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 515
    :goto_0
    :try_start_4
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 519
    :try_start_5
    const-string/jumbo v2, "RunDatabaseQuery"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/nianticproject/ingress/content/NemesisProvider;->c:Lcom/nianticproject/ingress/content/g;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/content/g;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 521
    invoke-virtual {v2, v0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 523
    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/w/al;->b()Lcom/nianticproject/ingress/common/w/al;

    .line 532
    invoke-virtual {p0}, Lcom/nianticproject/ingress/content/NemesisProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 535
    :try_start_6
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 538
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return v0

    .line 505
    :sswitch_1
    :try_start_7
    const-string/jumbo v0, "portal_curation"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 535
    :catchall_2
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 500
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch
.end method
