.class public Lcom/nianticproject/ingress/content/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static final b:[Landroid/content/ContentValues;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/content/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 64
    const/16 v0, 0x33c

    new-array v0, v0, [Landroid/content/ContentValues;

    sput-object v0, Lcom/nianticproject/ingress/content/a;->b:[Landroid/content/ContentValues;

    .line 69
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/nianticproject/ingress/content/a;->b:[Landroid/content/ContentValues;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 70
    sget-object v1, Lcom/nianticproject/ingress/content/a;->b:[Landroid/content/ContentValues;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    aput-object v2, v1, v0

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.nianticproject.ingress.content.NemesisProvider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "comms"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 154
    sput-object v0, Lcom/nianticproject/ingress/content/a;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "stats"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/content/a;->d:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method public static final a(Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;)Landroid/net/Uri;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 159
    sget-object v0, Lcom/nianticproject/ingress/content/a;->c:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/common/b;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "limit"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 169
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Lcom/nianticproject/ingress/content/c;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/content/a;->d:Landroid/net/Uri;

    sget-object v2, Lcom/nianticproject/ingress/content/d;->a:[Ljava/lang/String;

    const-string/jumbo v3, "from_server=1"

    invoke-static {v3, p1}, Lcom/nianticproject/ingress/content/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 477
    if-nez v7, :cond_0

    .line 478
    sget-object v0, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "queryCommsStats: unexpected null cursor!!!"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 493
    :goto_0
    return-object v4

    .line 484
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    new-instance v0, Lcom/nianticproject/ingress/content/c;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/content/c;-><init>(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v4, v0

    .line 493
    goto :goto_0

    .line 491
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v0, v4

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    if-eqz p0, :cond_0

    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 210
    if-eqz p0, :cond_1

    .line 211
    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_1
    const-string/jumbo v1, "(( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    const-string/jumbo v1, "categories"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string/jumbo v1, " & "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v1, " ) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a()V
    .locals 3

    .prologue
    .line 227
    invoke-static {}, Lcom/nianticproject/ingress/ec;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/nianticproject/ingress/common/w/u;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Should not call CommData methods on the UI or GLThread: thread.name="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, v2}, Lcom/nianticproject/ingress/content/a;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 504
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/String;[BZJILjava/lang/String;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 262
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "local_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->m:Lcom/nianticproject/ingress/shared/g;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/g;->a(Lcom/nianticproject/ingress/shared/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    .line 267
    :cond_0
    :try_start_0
    const-string/jumbo v1, "CommsData.addMessage"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/nianticproject/ingress/content/a;->a()V

    .line 269
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 270
    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v2, "markup"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 272
    const-string/jumbo v2, "channel"

    iget v3, p1, Lcom/nianticproject/ingress/common/b;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 273
    const-string/jumbo v2, "plext_type"

    sget-object v3, Lcom/nianticproject/ingress/shared/plext/f;->b:Lcom/nianticproject/ingress/shared/plext/f;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/shared/plext/f;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 274
    const-string/jumbo v2, "temporary"

    if-eqz p4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 275
    const-string/jumbo v0, "timestamp"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    const-string/jumbo v0, "duration"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    const-string/jumbo v0, "guid"

    invoke-virtual {v1, v0, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string/jumbo v0, "categories"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    const-string/jumbo v0, "from_server"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 280
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/nianticproject/ingress/content/a;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 20
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/gameentity/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    :try_start_0
    const-string/jumbo v1, "CommsData.addMessagesFromServer"

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/nianticproject/ingress/content/a;->a()V

    .line 308
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 427
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 428
    :goto_0
    return-void

    .line 325
    :cond_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/content/a;->c:Landroid/net/Uri;

    const-string/jumbo v3, "temporary=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 331
    const/4 v5, 0x0

    .line 333
    const/4 v4, 0x0

    .line 335
    const/4 v3, -0x1

    .line 337
    const/4 v1, 0x0

    move v6, v1

    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_6

    .line 338
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 341
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v7

    .line 342
    const-class v2, Lcom/nianticproject/ingress/message/component/ClientPlext;

    invoke-interface {v1, v2}, Lcom/nianticproject/ingress/gameentity/f;->getComponent(Ljava/lang/Class;)Lcom/nianticproject/ingress/gameentity/a;

    move-result-object v2

    check-cast v2, Lcom/nianticproject/ingress/message/component/ClientPlext;

    .line 343
    invoke-interface {v2}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getText()Ljava/lang/String;

    move-result-object v8

    .line 344
    invoke-interface {v2}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getPlext()Ljava/util/List;

    move-result-object v9

    invoke-static {v9}, Lcom/nianticproject/ingress/content/a;->a(Ljava/util/List;)[B

    move-result-object v9

    .line 345
    invoke-interface {v2}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getTeam()Lcom/nianticproject/ingress/shared/ai;

    .line 346
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getLastModifiedMs()J

    move-result-wide v10

    .line 347
    invoke-interface {v2}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getPlextType()Lcom/nianticproject/ingress/shared/plext/f;

    move-result-object v1

    .line 348
    invoke-interface {v2}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getCategories()I

    move-result v12

    .line 354
    const-wide/16 v13, 0xbe

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    array-length v15, v15

    int-to-long v15, v15

    add-long/2addr v13, v15

    array-length v15, v9

    int-to-long v15, v15

    add-long/2addr v13, v15

    .line 358
    const-wide/32 v15, 0xd4800

    cmp-long v15, v13, v15

    if-ltz v15, :cond_2

    .line 359
    sget-object v2, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v7, "Massive plext in CommsData: addMessagesFromServer size = %d type = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/f;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-virtual {v2, v7, v8}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v3

    move v2, v4

    move v3, v5

    .line 337
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v2

    move v3, v1

    goto :goto_1

    .line 377
    :cond_2
    int-to-long v15, v5

    add-long/2addr v15, v13

    const-wide/32 v17, 0xd4800

    cmp-long v15, v15, v17

    if-gtz v15, :cond_3

    const/16 v15, 0x33c

    if-lt v4, v15, :cond_4

    .line 379
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/nianticproject/ingress/content/a;->b(Landroid/content/Context;I)V

    .line 381
    const/4 v5, 0x0

    .line 383
    const/4 v4, 0x0

    .line 387
    :cond_4
    sget-object v15, Lcom/nianticproject/ingress/content/a;->b:[Landroid/content/ContentValues;

    aget-object v15, v15, v4

    .line 390
    const-string/jumbo v16, "channel"

    sget-object v17, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/nianticproject/ingress/common/b;->c:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    const-string/jumbo v16, "duration"

    const/16 v17, 0x9c4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    const-string/jumbo v16, "from_server"

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    const-string/jumbo v16, "message"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v8, "markup"

    invoke-virtual {v15, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 397
    const-string/jumbo v8, "plext_type"

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/f;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string/jumbo v1, "categories"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v15, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string/jumbo v1, "timestamp"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v15, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 400
    const-string/jumbo v1, "guid"

    invoke-virtual {v15, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string/jumbo v7, "has_nudge"

    invoke-interface {v2}, Lcom/nianticproject/ingress/message/component/ClientPlext;->getPlext()Ljava/util/List;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/ui/z;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v15, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 405
    int-to-long v1, v5

    add-long/2addr v1, v13

    long-to-int v2, v1

    .line 408
    add-int/lit8 v1, v4, 0x1

    .line 411
    if-le v1, v3, :cond_9

    move v3, v2

    move v2, v1

    .line 412
    goto/16 :goto_2

    .line 401
    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    .line 416
    :cond_6
    if-lez v4, :cond_7

    .line 417
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/nianticproject/ingress/content/a;->b(Landroid/content/Context;I)V

    .line 423
    :cond_7
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_8

    .line 424
    sget-object v2, Lcom/nianticproject/ingress/content/a;->b:[Landroid/content/ContentValues;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 427
    :cond_8
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v1

    :cond_9
    move/from16 v19, v3

    move v3, v2

    move v2, v1

    move/from16 v1, v19

    goto/16 :goto_2
.end method

.method public static a(II)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    and-int v0, p0, p1

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[B
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/plext/c;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 445
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 448
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 449
    :try_start_1
    invoke-interface {v2, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v0

    .line 456
    :try_start_2
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 457
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 460
    :goto_0
    return-object v0

    .line 458
    :catch_0
    move-exception v1

    .line 459
    sget-object v2, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception while attempting to close serialization output streams"

    invoke-virtual {v2, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 452
    :goto_1
    :try_start_3
    sget-object v4, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v5, "Exception while serializing the markup list"

    invoke-virtual {v4, v1, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 453
    :try_start_4
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 457
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 458
    :catch_2
    move-exception v1

    .line 459
    sget-object v2, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception while attempting to close serialization output streams"

    invoke-virtual {v2, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 456
    :goto_2
    :try_start_5
    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    .line 457
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 460
    :goto_3
    throw v0

    .line 458
    :catch_3
    move-exception v1

    .line 459
    sget-object v2, Lcom/nianticproject/ingress/content/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "Exception while attempting to close serialization output streams"

    invoke-virtual {v2, v1, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_3

    .line 455
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 451
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 437
    new-array v0, p1, [Landroid/content/ContentValues;

    .line 438
    sget-object v1, Lcom/nianticproject/ingress/content/a;->b:[Landroid/content/ContentValues;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/content/a;->a(Lcom/nianticproject/ingress/common/b;Ljava/lang/Integer;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 442
    return-void
.end method
