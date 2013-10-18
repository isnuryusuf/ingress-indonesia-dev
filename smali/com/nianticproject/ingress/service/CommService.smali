.class public Lcom/nianticproject/ingress/service/CommService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;

.field private static b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/service/CommService;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 109
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    .line 110
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 300
    const-string/jumbo v0, "COMM_SERVICE"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 258
    const/4 v0, 0x0

    const/high16 v1, 0x1000

    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static a()Lcom/google/a/d/u;
    .locals 1

    .prologue
    .line 267
    invoke-static {}, Lcom/nianticproject/ingress/ec;->b()Landroid/location/Location;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/nianticproject/ingress/ad;->a(Landroid/location/Location;)Lcom/google/a/d/u;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 143
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 144
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    return-void
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 230
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 231
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 233
    const-string/jumbo v1, "range"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 235
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x100

    const/4 v1, 0x0

    .line 199
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 202
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 205
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_1
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string/jumbo v1, "faction_only"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 214
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 511
    :try_start_0
    const-string/jumbo v0, "CommService.doSay"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 514
    const-string/jumbo v1, "faction_only"

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 516
    invoke-static {}, Lcom/nianticproject/ingress/service/CommService;->a()Lcom/google/a/d/u;

    move-result-object v1

    .line 517
    if-nez v1, :cond_0

    .line 518
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 564
    :goto_0
    return-void

    .line 523
    :cond_0
    :try_start_1
    invoke-static {v0, v1, v3}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/String;Lcom/google/a/d/u;Z)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    .line 525
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->i()Lcom/nianticproject/ingress/common/u/q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 527
    :try_start_2
    sget-object v4, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 528
    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/q;->a(Lcom/nianticproject/ingress/shared/rpc/ab;)Lcom/nianticproject/ingress/shared/rpc/RpcResult;

    move-result-object v1

    .line 529
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 530
    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/service/CommService;->a(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_2 .. :try_end_2} :catch_0

    .line 563
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 533
    :cond_1
    :try_start_3
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 536
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 537
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/RpcResult;->d()Lcom/nianticproject/ingress/shared/rpc/GameBasket;

    move-result-object v1

    .line 538
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/GameBasket;->c()Lcom/nianticproject/ingress/shared/rpc/f;

    move-result-object v1

    .line 539
    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/rpc/f;->a()Ljava/util/Set;

    move-result-object v1

    .line 541
    if-eqz v3, :cond_4

    sget v4, Lcom/nianticproject/ingress/common/a;->b:I

    .line 542
    :goto_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/gameentity/f;

    .line 543
    invoke-interface {v1}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 544
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/google/a/c/dc;->a(Ljava/lang/Object;)Lcom/google/a/c/dc;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 547
    const/4 v0, 0x1

    .line 548
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 553
    :goto_2
    if-nez v0, :cond_3

    .line 554
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 558
    :cond_3
    invoke-static {p0}, Lcom/nianticproject/ingress/service/CommService;->d(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_3 .. :try_end_3} :catch_0

    .line 563
    :goto_3
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    goto :goto_0

    .line 541
    :cond_4
    :try_start_4
    sget v4, Lcom/nianticproject/ingress/common/a;->c:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    :try_start_5
    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/service/CommService;->a(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 563
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private a(Ljava/util/ArrayList;I)V
    .locals 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const-wide/16 v11, 0x0

    const/16 v10, 0x64

    const/4 v3, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 392
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;I)Lcom/nianticproject/ingress/content/c;

    move-result-object v0

    .line 393
    if-nez v0, :cond_1

    .line 394
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "doUpdate failed to get timestamps"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "doUpdate: minTimestamp=%s maxTimestamp=%s rowCount=%d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v0, Lcom/nianticproject/ingress/content/c;->a:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v5, v9

    new-instance v6, Ljava/util/Date;

    iget-wide v7, v0, Lcom/nianticproject/ingress/content/c;->b:J

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v5, v4

    const/4 v6, 0x2

    iget-wide v7, v0, Lcom/nianticproject/ingress/content/c;->c:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    iget-wide v1, v0, Lcom/nianticproject/ingress/content/c;->c:J

    cmp-long v1, v1, v11

    if-nez v1, :cond_2

    .line 422
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v9

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v5, 0x5265c00

    sub-long/2addr v0, v5

    .line 430
    :goto_1
    invoke-static {p1, v0, v1, p2}, Lcom/nianticproject/ingress/common/u/aj;->a(Ljava/lang/Iterable;JI)Lcom/nianticproject/ingress/shared/rpc/ab;

    move-result-object v0

    .line 441
    :try_start_0
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->i()Lcom/nianticproject/ingress/common/u/q;
    :try_end_0
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_3

    move-object v0, v3

    .line 447
    :goto_2
    if-eqz v0, :cond_0

    .line 448
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 449
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 426
    :cond_2
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    .line 427
    iget-wide v0, v0, Lcom/nianticproject/ingress/content/c;->b:J

    goto :goto_1

    .line 441
    :cond_3
    :try_start_1
    sget-object v2, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/u/q;->b(Lcom/nianticproject/ingress/shared/rpc/ab;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lcom/google/a/c/eq;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    :try_end_1
    .catch Lcom/nianticproject/ingress/shared/rpc/y; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    .line 442
    :catch_0
    move-exception v0

    .line 443
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "RpcException while requesting plexts"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2

    .line 449
    :cond_4
    invoke-static {p0, p2}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;I)Lcom/nianticproject/ingress/content/c;

    move-result-object v0

    iget-wide v0, v0, Lcom/nianticproject/ingress/content/c;->c:J

    cmp-long v0, v0, v11

    if-nez v0, :cond_0

    sget-object v1, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    const v0, 0x7f09006f

    new-array v2, v4, [Ljava/lang/Object;

    const-wide/16 v5, 0x3c

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v9

    invoke-virtual {p0, v0, v2}, Lcom/nianticproject/ingress/service/CommService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0x9c4

    move-object v0, p0

    move-object v8, v3

    move v9, p2

    invoke-static/range {v0 .. v9}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/String;[BZJILjava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private a(Z)V
    .locals 9
    .parameter

    .prologue
    .line 670
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 671
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    .line 672
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/nianticproject/ingress/common/b;->b:Lcom/nianticproject/ingress/common/b;

    :goto_0
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0x9c4

    move-object v0, p0

    move v8, p1

    invoke-static/range {v0 .. v8}, Lcom/nianticproject/ingress/service/NemesisService;->a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;Ljava/lang/String;Ljava/util/List;ZJIZ)I

    .line 681
    return-void

    .line 672
    :cond_0
    sget-object v1, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nianticproject/ingress/service/CommService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string/jumbo v1, "operation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long v1, v0, v2

    .line 276
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "scheduleNextUpdate: next=%s"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v1, v2}, Ljava/util/Date;-><init>(J)V

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 279
    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 280
    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 281
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 152
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 153
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 155
    return-void
.end method

.method private c()V
    .locals 16

    .prologue
    const/4 v15, 0x1

    const/4 v8, 0x0

    .line 626
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 627
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-static {}, Lcom/nianticproject/ingress/shared/rpc/s;->values()[Lcom/nianticproject/ingress/shared/rpc/s;

    move-result-object v1

    invoke-static {v1}, Lcom/nianticproject/ingress/shared/rpc/s;->a([Lcom/nianticproject/ingress/shared/rpc/s;)I

    move-result v1

    add-int/lit8 v10, v1, 0x1

    move v7, v8

    .line 631
    :goto_0
    const/16 v1, 0x9b4

    if-ge v7, v1, :cond_1

    .line 635
    invoke-static {}, Lcom/nianticproject/ingress/shared/plext/d;->values()[Lcom/nianticproject/ingress/shared/plext/d;

    move-result-object v1

    invoke-static {}, Lcom/nianticproject/ingress/shared/plext/d;->values()[Lcom/nianticproject/ingress/shared/plext/d;

    move-result-object v2

    array-length v2, v2

    rem-int v2, v7, v2

    aget-object v1, v1, v2

    .line 636
    sget-object v2, Lcom/nianticproject/ingress/service/a;->a:[I

    invoke-virtual {v1}, Lcom/nianticproject/ingress/shared/plext/d;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v3, "%s is an untested MarkupType, add it here"

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-virtual {v2, v3, v4}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "[\"TEXT\",{\"plain\":\"unknown message\"}]"

    .line 637
    :goto_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/plext/f;->values()[Lcom/nianticproject/ingress/shared/plext/f;

    move-result-object v2

    invoke-static {}, Lcom/nianticproject/ingress/shared/plext/f;->values()[Lcom/nianticproject/ingress/shared/plext/f;

    move-result-object v3

    array-length v3, v3

    rem-int v3, v7, v3

    aget-object v5, v2, v3

    .line 639
    rem-int/lit8 v2, v7, 0x2

    if-nez v2, :cond_0

    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    .line 640
    :goto_2
    div-int/lit8 v2, v7, 0x2

    rem-int v6, v2, v10

    .line 643
    :try_start_0
    sget-object v2, Lcom/nianticproject/ingress/common/o/c;->a:Lorg/codehaus/jackson/map/ObjectMapper;

    const-class v3, Lcom/nianticproject/ingress/shared/plext/c;

    invoke-virtual {v2, v1, v3}, Lorg/codehaus/jackson/map/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nianticproject/ingress/shared/plext/c;

    move-object v3, v0

    .line 644
    new-instance v11, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stress_test_plext."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nianticproject/ingress/shared/g;->m:Lcom/nianticproject/ingress/shared/g;

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/g;->a(Lcom/nianticproject/ingress/shared/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v11, v1, v12, v13}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;-><init>(Ljava/lang/String;J)V

    new-instance v1, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;

    const-string/jumbo v2, "Stress test plext %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x1

    new-array v12, v12, [Lcom/nianticproject/ingress/shared/plext/c;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct/range {v1 .. v6}, Lcom/nianticproject/ingress/message/component/SimpleClientPlext;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/shared/plext/f;I)V

    invoke-virtual {v11, v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a(Lcom/nianticproject/ingress/gameentity/a;)Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/gameentity/GameEntityBuilder;->a()Lcom/nianticproject/ingress/gameentity/PersistentGameEntity;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/codehaus/jackson/map/JsonMappingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 634
    :goto_3
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto/16 :goto_0

    .line 636
    :pswitch_0
    const-string/jumbo v1, "[\"TEXT\",{\"plain\":\"hello world\"}]"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "[\"SENDER\",{\"plain\":\"nickname: \",\"guid\":\"guid\",\"team\":\"ALIENS\"}]"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "[\"PLAYER\",{\"plain\":\"nickname\",\"guid\":\"guid\",\"team\":\"ALIENS\"}]"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "[\"AT_PLAYER\",{\"plain\":\"@nickname\",\"guid\":\"guid\",\"team\":\"ALIENS\"}]"

    goto/16 :goto_1

    :pswitch_4
    const-string/jumbo v1, "[\"FACTION\",{\"plain\":\"Enlightened\",\"team\":\"ALIENS\"}]"

    goto/16 :goto_1

    :pswitch_5
    const-string/jumbo v1, "[\"PORTAL\",{\"plain\":\"[Unnamed Portal] ([Unknown Location])\",\"guid\":\"guid\",\"team\":\"RESISTANCE\",\"latE6\":\"0\",\"lngE6\":\"0\",\"address\":\"[Unknown Location]\"}]"

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo v1, "[\"SECURE\",{\"plain\":\"[secure] \"}]"

    goto/16 :goto_1

    :pswitch_7
    const-string/jumbo v1, "[\"SCORE\",{\"plain\":\"Enlightened 101 - Resistance 100\",\"resistanceScore\":\"100\",\"aliensScore\":\"101\"}]"

    goto/16 :goto_1

    .line 639
    :cond_0
    sget-object v4, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    goto/16 :goto_2

    .line 654
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParseException;->printStackTrace()V

    goto :goto_3

    .line 656
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/codehaus/jackson/map/JsonMappingException;->printStackTrace()V

    goto :goto_3

    .line 658
    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 663
    :cond_1
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-array v1, v15, [Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    .line 664
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/model/k;->j()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v9}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 666
    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 667
    return-void

    .line 636
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 244
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    .line 245
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 247
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 248
    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 165
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "forced_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/16 v5, 0x3e8

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 685
    const-string/jumbo v0, "operation"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 687
    :try_start_0
    const-string/jumbo v2, "CommService.onHandleIntent"

    const-string/jumbo v3, "op"

    invoke-static {v2, v3, v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 688
    sget-object v2, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 689
    packed-switch v0, :pswitch_data_0

    .line 709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is an unknown operation code"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    .line 691
    :pswitch_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/nianticproject/ingress/service/CommService;->c:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    invoke-static {p0}, Lcom/nianticproject/ingress/service/CommService;->d(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :cond_0
    :goto_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 713
    return-void

    .line 694
    :pswitch_1
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/nianticproject/ingress/service/CommService;->c:Z

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "cancelNextUpdate"

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;)V

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/service/CommService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/service/CommService;->b(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    goto :goto_0

    .line 697
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    sget-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "forced_update"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/nianticproject/ingress/service/CommService;->c:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/nianticproject/ingress/service/CommService;->a()Lcom/google/a/d/u;

    move-result-object v3

    if-nez v3, :cond_3

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    sget-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-direct {p0}, Lcom/nianticproject/ingress/service/CommService;->b()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    const/16 v0, 0x4e2f

    :try_start_5
    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->e(I)I

    move-result v0

    mul-int/lit16 v4, v0, 0x3e8

    if-ge v4, v5, :cond_4

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "rangeFilterMeters %d below minimum %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    sget-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-direct {p0}, Lcom/nianticproject/ingress/service/CommService;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_4
    :try_start_7
    invoke-virtual {v3}, Lcom/google/a/d/u;->g()Lcom/google/a/d/y;

    move-result-object v0

    int-to-double v5, v4

    const-wide v7, 0x41584db080000000L

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Lcom/google/a/d/d;->a(D)Lcom/google/a/d/d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/a/d/h;->a(Lcom/google/a/d/y;Lcom/google/a/d/d;)Lcom/google/a/d/h;

    move-result-object v0

    new-instance v2, Lcom/google/a/d/ae;

    invoke-direct {v2}, Lcom/google/a/d/ae;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/a/d/ae;->a(Lcom/google/a/d/ad;)Lcom/google/a/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/d/k;->a()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v6, v0, [J

    move v2, v1

    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/d/j;

    invoke-virtual {v0}, Lcom/google/a/d/j;->d()J

    move-result-wide v7

    aput-wide v7, v6, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    array-length v0, v6

    if-nez v0, :cond_6

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "s2CellIdsForPlextLocation gives 0 cells for %s range %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/google/a/d/u;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    sget-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-direct {p0}, Lcom/nianticproject/ingress/service/CommService;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    array-length v0, v6

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v6

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_7

    aget-wide v4, v6, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    invoke-direct {p0, v2, v0}, Lcom/nianticproject/ingress/service/CommService;->a(Ljava/util/ArrayList;I)V

    invoke-static {}, Lcom/nianticproject/ingress/common/q;->f()Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/p/a;->a()Lcom/nianticproject/ingress/knobs/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/knobs/ClientFeatureKnobBundle;->a(Lcom/nianticproject/ingress/knobs/b;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/nianticproject/ingress/common/a;->a:I

    invoke-direct {p0, v2, v0}, Lcom/nianticproject/ingress/service/CommService;->a(Ljava/util/ArrayList;I)V

    :cond_8
    sget v0, Lcom/nianticproject/ingress/common/a;->b:I

    invoke-direct {p0, v2, v0}, Lcom/nianticproject/ingress/service/CommService;->a(Ljava/util/ArrayList;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    sget-boolean v0, Lcom/nianticproject/ingress/service/CommService;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-direct {p0}, Lcom/nianticproject/ingress/service/CommService;->b()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    sget-boolean v1, Lcom/nianticproject/ingress/service/CommService;->b:Z

    if-eqz v1, :cond_9

    sget-object v1, Lcom/nianticproject/ingress/service/CommService;->a:Lcom/nianticproject/ingress/common/w/aa;

    invoke-direct {p0}, Lcom/nianticproject/ingress/service/CommService;->b()V

    :cond_9
    throw v0

    .line 700
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/service/CommService;->a(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 703
    :pswitch_4
    const/16 v0, 0x4e2f

    invoke-static {v0}, Lcom/nianticproject/ingress/common/s/c;->e(I)I

    move-result v0

    const-string/jumbo v1, "range"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/b;->a:Lcom/nianticproject/ingress/common/b;

    invoke-static {p0, v0}, Lcom/nianticproject/ingress/content/a;->a(Landroid/content/Context;Lcom/nianticproject/ingress/common/b;)V

    invoke-static {v1}, Lcom/nianticproject/ingress/common/s/c;->d(I)V

    invoke-static {p0}, Lcom/nianticproject/ingress/service/CommService;->d(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 706
    :pswitch_5
    invoke-direct {p0}, Lcom/nianticproject/ingress/service/CommService;->c()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
