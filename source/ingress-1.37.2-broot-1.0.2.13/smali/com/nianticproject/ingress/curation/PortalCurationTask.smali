.class public Lcom/nianticproject/ingress/curation/PortalCurationTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nianticproject/ingress/curation/PortalCurationTask;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/a/d/u;

.field private final g:Landroid/net/Uri;

.field private final h:Ljava/lang/String;

.field private final i:J

.field private final j:Z

.field private final k:Z

.field private final l:Ljava/lang/String;

.field private final m:I

.field private final n:I

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "request_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "portal_guid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "desc"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "metadata_uploaded"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "photo_uploaded"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "account"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "failed_metadata_upload_count"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "failed_photo_upload_count"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "upload_url"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "takedown_reason"

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a:[Ljava/lang/String;

    .line 307
    new-instance v0, Lcom/nianticproject/ingress/curation/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/curation/h;-><init>()V

    sput-object v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 16
    .parameter

    .prologue
    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_2

    const/4 v10, 0x1

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v11, 0x1

    if-ne v0, v11, :cond_3

    const/4 v11, 0x1

    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V

    .line 281
    return-void

    .line 266
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;JLjava/lang/String;)V
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 211
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v8, p7

    move-object/from16 v12, p9

    invoke-direct/range {v0 .. v15}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V

    .line 214
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    .line 250
    iput-object p2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    .line 251
    iput-object p3, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    .line 252
    iput-object p4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    .line 253
    iput-object p5, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    .line 254
    iput-object p6, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    .line 255
    iput-wide p8, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    .line 256
    iput-boolean p10, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    .line 257
    iput-boolean p11, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    .line 258
    invoke-static {p12}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    .line 259
    iput p13, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    .line 260
    move/from16 v0, p14

    iput v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    .line 261
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    .line 262
    iput-object p7, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 18
    .parameter

    .prologue
    .line 172
    new-instance v2, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    :goto_1
    const/16 v9, 0xe

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/16 v12, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_2
    const/16 v13, 0x9

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v13, 0x1

    :goto_3
    const/16 v14, 0xa

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xb

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v17, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    const/4 v9, 0x5

    move-object/from16 v0, p0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Lcom/google/a/d/u;->b(DD)Lcom/google/a/d/u;

    move-result-object v7

    goto :goto_0

    :cond_2
    const/4 v8, 0x6

    move-object/from16 v0, p0

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 519
    new-instance v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p2

    move-object/from16 v12, p3

    invoke-direct/range {v0 .. v15}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    new-instance v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;JLjava/lang/String;)V

    return-object v0
.end method

.method private a(ZZIILjava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    move/from16 v0, p1

    if-ne v1, v0, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    move/from16 v0, p2

    if-ne v1, v0, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    move/from16 v0, p3

    if-ne v1, v0, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    move/from16 v0, p4

    if-ne v1, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    move-object/from16 v0, p5

    if-ne v1, v0, :cond_0

    .line 488
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v1 .. v16}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V

    move-object/from16 p0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 328
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 329
    const-string/jumbo v0, "request_id"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 331
    const-string/jumbo v0, "portal_guid"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 334
    const-string/jumbo v0, "title"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 337
    const-string/jumbo v0, "desc"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    if-eqz v0, :cond_3

    .line 340
    const-string/jumbo v0, "latitude"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    invoke-virtual {v4}, Lcom/google/a/d/u;->c()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 341
    const-string/jumbo v0, "longitude"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    invoke-virtual {v4}, Lcom/google/a/d/u;->f()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 343
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 344
    const-string/jumbo v0, "takedown_reason"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 347
    const-string/jumbo v0, "photo_uri"

    iget-object v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_5
    const-string/jumbo v0, "timestamp"

    iget-wide v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 350
    const-string/jumbo v4, "metadata_uploaded"

    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string/jumbo v0, "photo_uploaded"

    iget-boolean v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    if-eqz v4, :cond_8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 352
    const-string/jumbo v0, "account"

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v0, "failed_metadata_upload_count"

    iget v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    const-string/jumbo v0, "failed_photo_upload_count"

    iget v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 355
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 356
    const-string/jumbo v0, "upload_url"

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    :cond_6
    return-object v3

    :cond_7
    move v0, v2

    .line 350
    goto :goto_0

    :cond_8
    move v1, v2

    .line 351
    goto :goto_1
.end method

.method public final a(Landroid/net/Uri;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 17
    .parameter

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v16}, Lcom/nianticproject/ingress/curation/PortalCurationTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/a/d/u;Landroid/net/Uri;Ljava/lang/String;JZZLjava/lang/String;IILjava/lang/String;)V

    move-object/from16 p0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 6
    .parameter

    .prologue
    .line 561
    iget-boolean v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    iget-boolean v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    iget v3, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    iget v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(ZZIILjava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 440
    if-ne p0, p1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 443
    goto :goto_0

    .line 444
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 445
    goto :goto_0

    .line 446
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;

    .line 448
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 449
    :cond_4
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    .line 450
    :cond_5
    iget v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    iget v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 451
    :cond_6
    iget v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    iget v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 452
    :cond_7
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 453
    :cond_8
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 454
    :cond_9
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v0, v1

    goto :goto_0

    .line 455
    :cond_a
    iget-boolean v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    .line 456
    :cond_b
    iget-boolean v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    .line 457
    :cond_c
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 458
    :cond_d
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    .line 459
    :cond_e
    iget-wide v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    iget-wide v4, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    .line 460
    :cond_f
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    .line 461
    :cond_10
    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public final f()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    return-object v0
.end method

.method public final g()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    const/4 v1, 0x0

    .line 419
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 422
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v4

    .line 423
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    add-int/2addr v0, v4

    .line 424
    mul-int/lit8 v0, v0, 0x1f

    iget v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    add-int/2addr v0, v4

    .line 425
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v4

    .line 426
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v4

    .line 427
    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    add-int/2addr v0, v4

    .line 428
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    if-eqz v0, :cond_5

    move v0, v2

    :goto_5
    add-int/2addr v0, v4

    .line 429
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    if-eqz v4, :cond_6

    :goto_6
    add-int/2addr v0, v2

    .line 430
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    add-int/2addr v0, v2

    .line 431
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    move v0, v1

    :goto_8
    add-int/2addr v0, v2

    .line 432
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    iget-wide v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 433
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    if-nez v0, :cond_9

    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    .line 434
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    if-nez v2, :cond_a

    :goto_a
    add-int/2addr v0, v1

    .line 435
    return v0

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 426
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    invoke-virtual {v0}, Lcom/google/a/d/u;->hashCode()I

    move-result v0

    goto :goto_3

    .line 427
    :cond_4
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4

    :cond_5
    move v0, v3

    .line 428
    goto :goto_5

    :cond_6
    move v2, v3

    .line 429
    goto :goto_6

    .line 430
    :cond_7
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    goto :goto_7

    .line 431
    :cond_8
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_8

    .line 433
    :cond_9
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_9

    .line 434
    :cond_a
    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_a
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    return v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 410
    iget v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    return v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 6

    .prologue
    .line 537
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    iget v3, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    iget v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    iget-object v5, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(ZZIILjava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    return-object v0
.end method

.method public final o()Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 6

    .prologue
    .line 543
    iget-boolean v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    const/4 v2, 0x1

    iget v3, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    iget v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    iget-object v5, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(ZZIILjava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    return-object v0
.end method

.method public final p()Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 6

    .prologue
    .line 549
    iget-boolean v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    iget-boolean v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    iget v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    iget-object v5, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(ZZIILjava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    return-object v0
.end method

.method public final q()Lcom/nianticproject/ingress/curation/PortalCurationTask;
    .locals 6

    .prologue
    .line 555
    iget-boolean v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    iget-boolean v2, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    iget v3, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    iget v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->a(ZZIILjava/lang/String;)Lcom/nianticproject/ingress/curation/PortalCurationTask;

    move-result-object v0

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/nianticproject/ingress/curation/PortalCurationTask;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PortalCurationTask [requestId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", guid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", latLng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", takedownReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", metadataUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", photoUploaded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", failedMetadataUploadAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", failedPhotoUploadAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uploadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->f:Lcom/google/a/d/u;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/google/a/d/u;->c()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0}, Lcom/google/a/d/u;->f()D

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeDouble(D)V

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->g:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget-wide v3, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->i:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 299
    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->j:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-boolean v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->k:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->n:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v0, p0, Lcom/nianticproject/ingress/curation/PortalCurationTask;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 305
    return-void

    .line 295
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 299
    goto :goto_2

    :cond_3
    move v1, v2

    .line 300
    goto :goto_3
.end method
