.class Lcom/google/a/b/o;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lcom/google/a/i/a/r;

.field static final v:Lcom/google/a/b/bd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/bd",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final w:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final c:I

.field final d:I

.field final e:[Lcom/google/a/b/aq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/b/aq",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final f:I

.field final g:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/google/a/b/at;

.field final j:Lcom/google/a/b/at;

.field final k:J

.field final l:Lcom/google/a/b/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ck",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final m:J

.field final n:J

.field final o:J

.field final p:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/b/ce",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final q:Lcom/google/a/b/cd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/cd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final r:Lcom/google/a/a/bw;

.field final s:Lcom/google/a/b/w;

.field final t:Lcom/google/a/b/c;

.field final u:Lcom/google/a/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/k",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field y:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const-class v0, Lcom/google/a/b/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/o;->a:Ljava/util/logging/Logger;

    .line 158
    invoke-static {}, Lcom/google/a/i/a/s;->a()Lcom/google/a/i/a/r;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/o;->b:Lcom/google/a/i/a/r;

    .line 688
    new-instance v0, Lcom/google/a/b/p;

    invoke-direct {v0}, Lcom/google/a/b/p;-><init>()V

    sput-object v0, Lcom/google/a/b/o;->v:Lcom/google/a/b/bd;

    .line 1019
    new-instance v0, Lcom/google/a/b/q;

    invoke-direct {v0}, Lcom/google/a/b/q;-><init>()V

    sput-object v0, Lcom/google/a/b/o;->w:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/a/b/e;Lcom/google/a/b/k;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/e",
            "<-TK;-TV;>;",
            "Lcom/google/a/b/k",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 238
    invoke-virtual {p1}, Lcom/google/a/b/e;->e()I

    move-result v0

    const/high16 v3, 0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/b/o;->f:I

    .line 240
    invoke-virtual {p1}, Lcom/google/a/b/e;->i()Lcom/google/a/b/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->i:Lcom/google/a/b/at;

    .line 241
    invoke-virtual {p1}, Lcom/google/a/b/e;->j()Lcom/google/a/b/at;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->j:Lcom/google/a/b/at;

    .line 243
    invoke-virtual {p1}, Lcom/google/a/b/e;->b()Lcom/google/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    .line 244
    invoke-virtual {p1}, Lcom/google/a/b/e;->c()Lcom/google/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->h:Lcom/google/a/a/x;

    .line 246
    invoke-virtual {p1}, Lcom/google/a/b/e;->g()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/a/b/o;->k:J

    .line 247
    invoke-virtual {p1}, Lcom/google/a/b/e;->h()Lcom/google/a/b/ck;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->l:Lcom/google/a/b/ck;

    .line 248
    invoke-virtual {p1}, Lcom/google/a/b/e;->l()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/a/b/o;->m:J

    .line 249
    invoke-virtual {p1}, Lcom/google/a/b/e;->k()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/a/b/o;->n:J

    .line 250
    invoke-virtual {p1}, Lcom/google/a/b/e;->m()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/a/b/o;->o:J

    .line 252
    invoke-virtual {p1}, Lcom/google/a/b/e;->n()Lcom/google/a/b/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->q:Lcom/google/a/b/cd;

    .line 253
    iget-object v0, p0, Lcom/google/a/b/o;->q:Lcom/google/a/b/cd;

    sget-object v3, Lcom/google/a/b/i;->a:Lcom/google/a/b/i;

    if-ne v0, v3, :cond_5

    sget-object v0, Lcom/google/a/b/o;->w:Ljava/util/Queue;

    :goto_0
    iput-object v0, p0, Lcom/google/a/b/o;->p:Ljava/util/Queue;

    .line 257
    invoke-virtual {p0}, Lcom/google/a/b/o;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/a/b/o;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/a/b/e;->a(Z)Lcom/google/a/a/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    .line 258
    iget-object v4, p0, Lcom/google/a/b/o;->i:Lcom/google/a/b/at;

    invoke-virtual {p0}, Lcom/google/a/b/o;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/a/b/o;->o()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    :goto_2
    invoke-direct {p0}, Lcom/google/a/b/o;->n()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/google/a/b/o;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_2
    move v3, v2

    :goto_3
    invoke-static {v4, v0, v3}, Lcom/google/a/b/w;->a(Lcom/google/a/b/at;ZZ)Lcom/google/a/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/b/o;->s:Lcom/google/a/b/w;

    .line 259
    invoke-virtual {p1}, Lcom/google/a/b/e;->o()Lcom/google/a/a/bs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/a/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/c;

    iput-object v0, p0, Lcom/google/a/b/o;->t:Lcom/google/a/b/c;

    .line 260
    iput-object p2, p0, Lcom/google/a/b/o;->u:Lcom/google/a/b/k;

    .line 262
    invoke-virtual {p1}, Lcom/google/a/b/e;->d()I

    move-result v0

    const/high16 v3, 0x4000

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 263
    invoke-virtual {p0}, Lcom/google/a/b/o;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/a/b/o;->b()Z

    move-result v3

    if-nez v3, :cond_3

    .line 264
    iget-wide v3, p0, Lcom/google/a/b/o;->k:J

    long-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    move v3, v2

    move v4, v1

    .line 275
    :goto_4
    iget v5, p0, Lcom/google/a/b/o;->f:I

    if-ge v3, v5, :cond_9

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    mul-int/lit8 v5, v3, 0x14

    int-to-long v5, v5

    iget-wide v7, p0, Lcom/google/a/b/o;->k:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_9

    .line 276
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 277
    shl-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 253
    :cond_5
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 257
    goto :goto_1

    :cond_7
    move v0, v1

    .line 258
    goto :goto_2

    :cond_8
    move v3, v1

    goto :goto_3

    .line 279
    :cond_9
    rsub-int/lit8 v4, v4, 0x20

    iput v4, p0, Lcom/google/a/b/o;->d:I

    .line 280
    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Lcom/google/a/b/o;->c:I

    .line 282
    new-array v4, v3, [Lcom/google/a/b/aq;

    iput-object v4, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    .line 284
    div-int v4, v0, v3

    .line 285
    mul-int v5, v4, v3

    if-ge v5, v0, :cond_e

    .line 286
    add-int/lit8 v0, v4, 0x1

    :goto_5
    move v6, v2

    .line 290
    :goto_6
    if-ge v6, v0, :cond_a

    .line 291
    shl-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_6

    .line 294
    :cond_a
    invoke-virtual {p0}, Lcom/google/a/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 296
    iget-wide v4, p0, Lcom/google/a/b/o;->k:J

    int-to-long v7, v3

    div-long/2addr v4, v7

    add-long/2addr v4, v9

    .line 297
    iget-wide v7, p0, Lcom/google/a/b/o;->k:J

    int-to-long v2, v3

    rem-long/2addr v7, v2

    move-wide v2, v4

    .line 298
    :goto_7
    iget-object v0, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 299
    int-to-long v4, v1

    cmp-long v0, v4, v7

    if-nez v0, :cond_b

    .line 300
    sub-long/2addr v2, v9

    .line 302
    :cond_b
    iget-object v4, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    invoke-virtual {p1}, Lcom/google/a/b/e;->o()Lcom/google/a/a/bs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/a/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/c;

    invoke-direct {p0, v6, v2, v3, v0}, Lcom/google/a/b/o;->a(IJLcom/google/a/b/c;)Lcom/google/a/b/aq;

    move-result-object v0

    aput-object v0, v4, v1

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 306
    :cond_c
    :goto_8
    iget-object v0, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    array-length v0, v0

    if-ge v1, v0, :cond_d

    .line 307
    iget-object v2, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    const-wide/16 v3, -0x1

    invoke-virtual {p1}, Lcom/google/a/b/e;->o()Lcom/google/a/a/bs;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/a/a/bs;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/c;

    invoke-direct {p0, v6, v3, v4, v0}, Lcom/google/a/b/o;->a(IJLcom/google/a/b/c;)Lcom/google/a/b/aq;

    move-result-object v0

    aput-object v0, v2, v1

    .line 306
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 311
    :cond_d
    return-void

    :cond_e
    move v0, v4

    goto :goto_5
.end method

.method private a(I)Lcom/google/a/b/aq;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/b/aq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    iget v1, p0, Lcom/google/a/b/o;->d:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/a/b/o;->c:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(IJLcom/google/a/b/c;)Lcom/google/a/b/aq;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/a/b/c;",
            ")",
            "Lcom/google/a/b/aq",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1937
    new-instance v0, Lcom/google/a/b/aq;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/a/b/aq;-><init>(Lcom/google/a/b/o;IJLcom/google/a/b/c;)V

    return-object v0
.end method

.method static a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1986
    invoke-interface {p0, p1}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/ap;)V

    .line 1987
    invoke-interface {p1, p0}, Lcom/google/a/b/ap;->b(Lcom/google/a/b/ap;)V

    .line 1988
    return-void
.end method

.method static b(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1992
    sget-object v0, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    .line 1993
    invoke-interface {p0, v0}, Lcom/google/a/b/ap;->a(Lcom/google/a/b/ap;)V

    .line 1994
    invoke-interface {p0, v0}, Lcom/google/a/b/ap;->b(Lcom/google/a/b/ap;)V

    .line 1995
    return-void
.end method

.method static b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1999
    invoke-interface {p0, p1}, Lcom/google/a/b/ap;->c(Lcom/google/a/b/ap;)V

    .line 2000
    invoke-interface {p1, p0}, Lcom/google/a/b/ap;->d(Lcom/google/a/b/ap;)V

    .line 2001
    return-void
.end method

.method private c(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/google/a/b/o;->g:Lcom/google/a/a/x;

    invoke-virtual {v0, p1}, Lcom/google/a/a/x;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1901
    shl-int/lit8 v1, v0, 0xf

    xor-int/lit16 v1, v1, -0x3283

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0xa

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x6

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    shl-int/lit8 v2, v0, 0xe

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method

.method static c(Lcom/google/a/b/ap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 2005
    sget-object v0, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    .line 2006
    invoke-interface {p0, v0}, Lcom/google/a/b/ap;->c(Lcom/google/a/b/ap;)V

    .line 2007
    invoke-interface {p0, v0}, Lcom/google/a/b/ap;->d(Lcom/google/a/b/ap;)V

    .line 2008
    return-void
.end method

.method static j()Lcom/google/a/b/bd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 734
    sget-object v0, Lcom/google/a/b/o;->v:Lcom/google/a/b/bd;

    return-object v0
.end method

.method static k()Lcom/google/a/b/ap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1016
    sget-object v0, Lcom/google/a/b/ao;->a:Lcom/google/a/b/ao;

    return-object v0
.end method

.method static l()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1051
    sget-object v0, Lcom/google/a/b/o;->w:Ljava/util/Queue;

    return-object v0
.end method

.method private n()Z
    .locals 4

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/google/a/b/o;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    .prologue
    .line 330
    iget-wide v0, p0, Lcom/google/a/b/o;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/google/a/b/ap;J)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;J)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1948
    invoke-interface {p1}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1959
    :cond_0
    :goto_0
    return-object v0

    .line 1951
    :cond_1
    invoke-interface {p1}, Lcom/google/a/b/ap;->a()Lcom/google/a/b/bd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/b/bd;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1952
    if-eqz v1, :cond_0

    .line 1956
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;J)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1959
    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4016
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4017
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 4018
    if-nez v0, :cond_0

    .line 4019
    iget-object v1, p0, Lcom/google/a/b/o;->t:Lcom/google/a/b/c;

    invoke-interface {v1}, Lcom/google/a/b/c;->b()V

    .line 4023
    :goto_0
    return-object v0

    .line 4021
    :cond_0
    iget-object v1, p0, Lcom/google/a/b/o;->t:Lcom/google/a/b/c;

    invoke-interface {v1}, Lcom/google/a/b/c;->a()V

    goto :goto_0
.end method

.method final a(Lcom/google/a/b/ap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1911
    invoke-interface {p1}, Lcom/google/a/b/ap;->c()I

    move-result v0

    .line 1912
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;I)Z

    .line 1913
    return-void
.end method

.method final a(Lcom/google/a/b/bd;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/bd",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1905
    invoke-interface {p1}, Lcom/google/a/b/bd;->b()Lcom/google/a/b/ap;

    move-result-object v0

    .line 1906
    invoke-interface {v0}, Lcom/google/a/b/ap;->c()I

    move-result v1

    .line 1907
    invoke-direct {p0, v1}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/bd;)Z

    .line 1908
    return-void
.end method

.method final a()Z
    .locals 4

    .prologue
    .line 314
    iget-wide v0, p0, Lcom/google/a/b/o;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 4032
    iget-object v0, p0, Lcom/google/a/b/o;->u:Lcom/google/a/b/k;

    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILcom/google/a/b/k;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/a/b/o;->l:Lcom/google/a/b/ck;

    sget-object v1, Lcom/google/a/b/j;->a:Lcom/google/a/b/j;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/a/b/ap;J)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1969
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1970
    invoke-direct {p0}, Lcom/google/a/b/o;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/google/a/b/ap;->e()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/google/a/b/o;->m:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 1978
    :cond_0
    :goto_0
    return v0

    .line 1974
    :cond_1
    invoke-direct {p0}, Lcom/google/a/b/o;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/a/b/ap;->h()J

    move-result-wide v1

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/google/a/b/o;->n:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1978
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Z
    .locals 4

    .prologue
    .line 334
    iget-wide v0, p0, Lcom/google/a/b/o;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 4297
    iget-object v1, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 4298
    invoke-virtual {v3}, Lcom/google/a/b/aq;->a()V

    .line 4297
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4300
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 4187
    if-nez p1, :cond_0

    .line 4188
    const/4 v0, 0x0

    .line 4191
    :goto_0
    return v0

    .line 4190
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4191
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/b/aq;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 19
    .parameter

    .prologue
    .line 4197
    if-nez p1, :cond_0

    .line 4198
    const/4 v3, 0x0

    .line 4232
    :goto_0
    return v3

    .line 4206
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/a/b/o;->r:Lcom/google/a/a/bw;

    invoke-virtual {v3}, Lcom/google/a/a/bw;->a()J

    move-result-wide v11

    .line 4207
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    .line 4208
    const-wide/16 v6, -0x1

    .line 4209
    const/4 v3, 0x0

    move v8, v3

    move-wide v9, v6

    :goto_1
    const/4 v3, 0x3

    if-ge v8, v3, :cond_5

    .line 4210
    const-wide/16 v4, 0x0

    .line 4211
    array-length v14, v13

    const/4 v3, 0x0

    move-wide v6, v4

    move v5, v3

    :goto_2
    if-ge v5, v14, :cond_4

    aget-object v15, v13, v5

    .line 4214
    iget v3, v15, Lcom/google/a/b/aq;->b:I

    .line 4216
    iget-object v0, v15, Lcom/google/a/b/aq;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-object/from16 v16, v0

    .line 4217
    const/4 v3, 0x0

    move v4, v3

    :goto_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v4, v3, :cond_3

    .line 4218
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/a/b/ap;

    :goto_4
    if-eqz v3, :cond_2

    .line 4219
    invoke-virtual {v15, v3, v11, v12}, Lcom/google/a/b/aq;->a(Lcom/google/a/b/ap;J)Ljava/lang/Object;

    move-result-object v17

    .line 4220
    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/a/b/o;->h:Lcom/google/a/a/x;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 4221
    const/4 v3, 0x1

    goto :goto_0

    .line 4218
    :cond_1
    invoke-interface {v3}, Lcom/google/a/b/ap;->b()Lcom/google/a/b/ap;

    move-result-object v3

    goto :goto_4

    .line 4217
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    .line 4225
    :cond_3
    iget v3, v15, Lcom/google/a/b/aq;->d:I

    int-to-long v3, v3

    add-long/2addr v6, v3

    .line 4211
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_2

    .line 4227
    :cond_4
    cmp-long v3, v6, v9

    if-eqz v3, :cond_5

    .line 4209
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    move-wide v9, v6

    goto :goto_1

    .line 4232
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/google/a/b/o;->o()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/google/a/b/o;->n()Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 4333
    iget-object v0, p0, Lcom/google/a/b/o;->z:Ljava/util/Set;

    .line 4334
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/ag;

    invoke-direct {v0, p0, p0}, Lcom/google/a/b/ag;-><init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/a/b/o;->z:Ljava/util/Set;

    goto :goto_0
.end method

.method final f()Z
    .locals 1

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/google/a/b/o;->n()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/a/b/o;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final g()Z
    .locals 1

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/google/a/b/o;->o()Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4007
    if-nez p1, :cond_0

    .line 4008
    const/4 v0, 0x0

    .line 4011
    :goto_0
    return-object v0

    .line 4010
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4011
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final h()Z
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/a/b/o;->i:Lcom/google/a/b/at;

    sget-object v1, Lcom/google/a/b/at;->a:Lcom/google/a/b/at;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/google/a/b/o;->j:Lcom/google/a/b/at;

    sget-object v1, Lcom/google/a/b/at;->a:Lcom/google/a/b/at;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3967
    .line 3968
    iget-object v6, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    move v0, v1

    move-wide v2, v4

    .line 3969
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3970
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/b/aq;->b:I

    if-eqz v7, :cond_1

    .line 3987
    :cond_0
    :goto_1
    return v1

    .line 3973
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/b/aq;->d:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3969
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3976
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3977
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3978
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/b/aq;->b:I

    if-nez v7, :cond_0

    .line 3981
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/b/aq;->d:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3977
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3983
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3987
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 4314
    iget-object v0, p0, Lcom/google/a/b/o;->x:Ljava/util/Set;

    .line 4315
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/aj;

    invoke-direct {v0, p0, p0}, Lcom/google/a/b/aj;-><init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/a/b/o;->x:Ljava/util/Set;

    goto :goto_0
.end method

.method final m()V
    .locals 4

    .prologue
    .line 2018
    :goto_0
    iget-object v0, p0, Lcom/google/a/b/o;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ce;

    if-eqz v0, :cond_0

    .line 2020
    :try_start_0
    iget-object v1, p0, Lcom/google/a/b/o;->q:Lcom/google/a/b/cd;

    invoke-interface {v1, v0}, Lcom/google/a/b/cd;->a(Lcom/google/a/b/ce;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    sget-object v1, Lcom/google/a/b/o;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2025
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4237
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4238
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4239
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4240
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 4253
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4254
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/a/b/o;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4256
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4245
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4246
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4247
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4248
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 4260
    if-nez p1, :cond_0

    .line 4261
    const/4 v0, 0x0

    .line 4264
    :goto_0
    return-object v0

    .line 4263
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4264
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/b/aq;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 4269
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 4270
    :cond_0
    const/4 v0, 0x0

    .line 4273
    :goto_0
    return v0

    .line 4272
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4273
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/a/b/aq;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 4289
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4290
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4291
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4292
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 4278
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4279
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4280
    if-nez p2, :cond_0

    .line 4281
    const/4 v0, 0x0

    .line 4284
    :goto_0
    return v0

    .line 4283
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/b/o;->c(Ljava/lang/Object;)I

    move-result v0

    .line 4284
    invoke-direct {p0, v0}, Lcom/google/a/b/o;->a(I)Lcom/google/a/b/aq;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/a/b/aq;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 4001
    iget-object v3, p0, Lcom/google/a/b/o;->e:[Lcom/google/a/b/aq;

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/a/b/aq;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/google/a/h/a;->a(J)I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 4323
    iget-object v0, p0, Lcom/google/a/b/o;->y:Ljava/util/Collection;

    .line 4324
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/b/be;

    invoke-direct {v0, p0, p0}, Lcom/google/a/b/be;-><init>(Lcom/google/a/b/o;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v0, p0, Lcom/google/a/b/o;->y:Ljava/util/Collection;

    goto :goto_0
.end method
