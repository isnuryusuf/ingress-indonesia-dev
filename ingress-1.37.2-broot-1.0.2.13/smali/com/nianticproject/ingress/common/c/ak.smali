.class public final Lcom/nianticproject/ingress/common/c/ak;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# instance fields
.field private a:J

.field private final b:Lcom/nianticproject/ingress/common/c/e;

.field private final c:Lcom/nianticproject/ingress/common/model/k;

.field private d:Lcom/nianticproject/ingress/common/c/am;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/util/Random;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/c/e;Lcom/nianticproject/ingress/common/model/k;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/c/ak;->a:J

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->e:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->f:Ljava/util/Random;

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ak;->g:Z

    .line 164
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/ak;->b:Lcom/nianticproject/ingress/common/c/e;

    .line 165
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/ak;->c:Lcom/nianticproject/ingress/common/model/k;

    .line 169
    invoke-interface {p2, p0}, Lcom/nianticproject/ingress/common/model/k;->a(Lcom/nianticproject/ingress/common/model/l;)V

    .line 170
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/c/ak;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->e:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ak;->g:Z

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->b:Lcom/nianticproject/ingress/common/c/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 310
    :cond_0
    return-void
.end method

.method private a(Lcom/nianticproject/ingress/common/c/bs;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/ak;->g:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->b:Lcom/nianticproject/ingress/common/c/e;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 322
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/c/ak;Lcom/nianticproject/ingress/common/c/bo;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bo;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/nianticproject/ingress/common/c/bo;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 208
    const/4 v0, 0x0

    .line 210
    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/ak;->e:Ljava/lang/Object;

    monitor-enter v4

    .line 211
    :try_start_0
    iget-wide v5, p0, Lcom/nianticproject/ingress/common/c/ak;->a:J

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 213
    const-wide/16 v5, 0x4e20

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/c/ak;->a:J

    move v0, v1

    .line 215
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/ak;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v3}, Lcom/nianticproject/ingress/common/model/k;->d()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    iget-object v5, p0, Lcom/nianticproject/ingress/common/c/ak;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v5}, Lcom/nianticproject/ingress/common/model/k;->c()J

    move-result-wide v5

    div-long/2addr v3, v5

    .line 221
    const-wide/16 v5, 0x1

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 226
    sget-object v5, Lcom/nianticproject/ingress/common/c/ba;->eo:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    long-to-int v3, v3

    int-to-double v3, v3

    invoke-static {v3, v4}, Lcom/nianticproject/ingress/common/w/ak;->a(D)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->dy:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    invoke-virtual {p1, v2}, Lcom/nianticproject/ingress/common/c/bo;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;

    .line 231
    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    .line 232
    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {p1, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;

    .line 234
    :cond_1
    return v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/c/ak;)Lcom/nianticproject/ingress/common/model/k;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->c:Lcom/nianticproject/ingress/common/model/k;

    return-object v0
.end method

.method static synthetic c(Lcom/nianticproject/ingress/common/c/ak;)Ljava/util/Random;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->f:Ljava/util/Random;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const-string/jumbo v0, "PlayerAudio"

    return-object v0
.end method

.method public final a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 277
    if-eqz p2, :cond_0

    .line 278
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->a:Lcom/nianticproject/ingress/common/c/bs;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bs;Z)V

    .line 280
    :cond_0
    return-void
.end method

.method public final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    sget-object v0, Lcom/nianticproject/ingress/common/c/al;->a:[I

    invoke-virtual {p7}, Lcom/nianticproject/ingress/common/model/z;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 267
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->aS:Lcom/nianticproject/ingress/common/c/bs;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bs;Z)V

    new-instance v0, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    goto :goto_0

    .line 270
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->am:Lcom/nianticproject/ingress/common/c/bs;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bs;Z)V

    neg-long v0, p5

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    invoke-virtual {v2, v0, v1}, Lcom/nianticproject/ingress/common/c/am;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    new-instance v2, Lcom/nianticproject/ingress/common/c/am;

    invoke-direct {v2, p0, v0, v1}, Lcom/nianticproject/ingress/common/c/am;-><init>(Lcom/nianticproject/ingress/common/c/ak;J)V

    iput-object v2, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/am;->e()Lcom/nianticproject/ingress/common/f/a;

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/nianticproject/ingress/shared/f;Lcom/nianticproject/ingress/shared/f;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 196
    if-eq p2, p1, :cond_0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/shared/f;->a:Lcom/nianticproject/ingress/shared/f;

    if-ne p1, v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    sget-object v0, Lcom/nianticproject/ingress/shared/f;->b:Lcom/nianticproject/ingress/shared/f;

    if-ne p2, v0, :cond_2

    .line 200
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->aR:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bs;Z)V

    goto :goto_0

    .line 201
    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/shared/f;->c:Lcom/nianticproject/ingress/shared/f;

    if-ne p2, v0, :cond_0

    .line 202
    sget-object v0, Lcom/nianticproject/ingress/common/c/bs;->aQ:Lcom/nianticproject/ingress/common/c/bs;

    invoke-direct {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Lcom/nianticproject/ingress/common/c/bs;Z)V

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/c/ak;->g:Z

    .line 186
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->c:Lcom/nianticproject/ingress/common/model/k;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/k;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 299
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/am;->b(Z)Z

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/ak;->d:Lcom/nianticproject/ingress/common/c/am;

    .line 289
    :cond_0
    return-void
.end method

.method public final f_()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method
