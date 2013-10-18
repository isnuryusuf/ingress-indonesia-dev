.class public Lcom/nianticproject/ingress/common/c/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/aa;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/w/s;

.field private final c:Lcom/nianticproject/ingress/common/c/m;

.field private final d:Lcom/nianticproject/ingress/common/c/ad;

.field private final e:Lcom/nianticproject/ingress/common/c/i;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/nianticproject/ingress/common/c/g;

.field private final h:Lcom/nianticproject/ingress/common/w/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nianticproject/ingress/common/w/q",
            "<",
            "Lcom/nianticproject/ingress/common/c/bf;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/nianticproject/ingress/common/c/bg;

.field private j:Lcom/nianticproject/ingress/common/c/bn;

.field private k:Lcom/nianticproject/ingress/common/c/bi;

.field private l:I

.field private m:Z

.field private n:Lcom/nianticproject/ingress/common/c/bj;

.field private o:Lcom/nianticproject/ingress/common/c/be;

.field private final p:Lcom/nianticproject/ingress/common/c/bk;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/c/bb;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/common/c/m;Lcom/nianticproject/ingress/common/c/ad;Lcom/nianticproject/ingress/common/c/i;Lcom/nianticproject/ingress/common/c/bh;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-virtual {p4}, Lcom/nianticproject/ingress/common/c/bh;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Lcom/nianticproject/ingress/common/c/bh;->a()Lcom/nianticproject/ingress/common/c/g;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/c/bb;-><init>(Lcom/nianticproject/ingress/common/c/m;Lcom/nianticproject/ingress/common/c/ad;Lcom/nianticproject/ingress/common/c/i;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/g;)V

    .line 146
    return-void
.end method

.method constructor <init>(Lcom/nianticproject/ingress/common/c/m;Lcom/nianticproject/ingress/common/c/ad;Lcom/nianticproject/ingress/common/c/i;Ljava/lang/String;Lcom/nianticproject/ingress/common/c/g;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/nianticproject/ingress/common/c/bc;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/c/bc;-><init>(Lcom/nianticproject/ingress/common/c/bb;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->b:Lcom/nianticproject/ingress/common/w/s;

    .line 116
    new-instance v0, Lcom/nianticproject/ingress/common/w/q;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->b:Lcom/nianticproject/ingress/common/w/s;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/q;-><init>(Lcom/nianticproject/ingress/common/w/s;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->h:Lcom/nianticproject/ingress/common/w/q;

    .line 740
    new-instance v0, Lcom/nianticproject/ingress/common/c/bd;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/c/bd;-><init>(Lcom/nianticproject/ingress/common/c/bb;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->p:Lcom/nianticproject/ingress/common/c/bk;

    .line 162
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bb;->c:Lcom/nianticproject/ingress/common/c/m;

    .line 163
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    .line 164
    iput-object p3, p0, Lcom/nianticproject/ingress/common/c/bb;->e:Lcom/nianticproject/ingress/common/c/i;

    .line 165
    iput-object p4, p0, Lcom/nianticproject/ingress/common/c/bb;->f:Ljava/lang/String;

    .line 166
    iput-object p5, p0, Lcom/nianticproject/ingress/common/c/bb;->g:Lcom/nianticproject/ingress/common/c/g;

    .line 167
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 168
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/c/bb;)Lcom/nianticproject/ingress/common/c/ad;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    return-object v0
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 332
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    if-eqz v0, :cond_1

    .line 333
    if-eqz p1, :cond_0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/bj;->c()V
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->c:Lcom/nianticproject/ingress/common/c/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/m;->a(Lcom/nianticproject/ingress/common/c/bj;)V

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    .line 343
    :cond_1
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 337
    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "sound player stop failed."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e()Lcom/nianticproject/ingress/common/w/aa;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-object v0
.end method

.method private f()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 436
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    if-eqz v0, :cond_0

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    iget v1, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/bj;->a(I)V
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :goto_0
    iput v6, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I

    .line 446
    :cond_0
    return-void

    .line 440
    :catch_0
    move-exception v0

    .line 441
    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "%s seek failed: track=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/bb;->f:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private f(Lcom/nianticproject/ingress/common/c/bn;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 175
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/bn;->l()I

    move-result v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/bn;->l()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 551
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    .line 552
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    if-ne v0, v1, :cond_0

    .line 553
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 555
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 561
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-direct {p0, v2}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 559
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->h()V

    goto :goto_0
.end method

.method private g(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ad;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 357
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/c/e;->a(Z)V

    .line 366
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    .line 368
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0, v1, p0}, Lcom/nianticproject/ingress/common/c/ad;->a(Lcom/nianticproject/ingress/common/c/bn;Lcom/nianticproject/ingress/common/c/bb;)V

    .line 370
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Z)V

    .line 379
    :cond_1
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bb;->m:Z

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    .line 381
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 382
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 569
    :goto_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->h:Lcom/nianticproject/ingress/common/w/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/q;->b()Lcom/nianticproject/ingress/common/w/r;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bf;

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, v0, Lcom/nianticproject/ingress/common/c/bf;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 574
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 577
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 590
    :cond_0
    :goto_1
    return-void

    .line 581
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    goto :goto_0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->o:Lcom/nianticproject/ingress/common/c/be;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->o:Lcom/nianticproject/ingress/common/c/be;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/be;->a()V

    goto :goto_1
.end method

.method private i()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 599
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v2, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/c/bg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 600
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-nez v0, :cond_1

    .line 601
    sget-object v0, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v3, "playNextClip called with currentTrack == null"

    invoke-virtual {v0, v2, v3}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 602
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 640
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 599
    goto :goto_0

    .line 606
    :cond_1
    iput-object v3, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    .line 607
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 608
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->r()Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    .line 618
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/bn;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bb;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->v()V

    .line 627
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->x()V

    .line 628
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0, v2, v1}, Lcom/nianticproject/ingress/common/c/ad;->a(Lcom/nianticproject/ingress/common/c/bn;Z)V

    .line 629
    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    goto :goto_1

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->y()Lcom/nianticproject/ingress/common/c/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    .line 633
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->j()Z

    move-result v1

    goto :goto_1

    .line 639
    :cond_3
    invoke-direct {p0, v3}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    goto :goto_1
.end method

.method private j()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 649
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 650
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    if-nez v0, :cond_3

    .line 651
    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "play called with currentTrack == null || currentClip == null"

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 652
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 688
    :cond_1
    :goto_1
    return v7

    :cond_2
    move v0, v7

    .line 649
    goto :goto_0

    .line 656
    :cond_3
    invoke-direct {p0, v7}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->c:Lcom/nianticproject/ingress/common/c/m;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->e:Lcom/nianticproject/ingress/common/c/i;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v2

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    invoke-interface {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/c/m;->a(Lcom/nianticproject/ingress/common/c/i;Lcom/nianticproject/ingress/common/c/ba;Lcom/nianticproject/ingress/common/c/ai;)Lcom/nianticproject/ingress/common/c/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->g:Lcom/nianticproject/ingress/common/c/g;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ad;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/nianticproject/ingress/common/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/h;->a()F

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bn;->b()F

    move-result v1

    mul-float v2, v1, v0

    .line 674
    const v0, 0x3d4ccccd

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_1

    .line 678
    :try_start_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/c/bn;->c()F

    move-result v3

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/bi;->c()Z

    move-result v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/c/bb;->p:Lcom/nianticproject/ingress/common/c/bk;

    invoke-interface/range {v0 .. v5}, Lcom/nianticproject/ingress/common/c/bj;->a(Lcom/nianticproject/ingress/common/c/bi;FFZLcom/nianticproject/ingress/common/c/bk;)V
    :try_end_1
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move v7, v6

    .line 688
    goto :goto_1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "playNextClip interrupted"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    goto :goto_1

    .line 684
    :catch_1
    move-exception v0

    .line 685
    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "play failed"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, v7}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    goto :goto_2
.end method


# virtual methods
.method public final a(FF)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 715
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->d:Lcom/nianticproject/ingress/common/c/ad;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->g:Lcom/nianticproject/ingress/common/c/g;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ad;->a(Lcom/nianticproject/ingress/common/c/g;)Lcom/nianticproject/ingress/common/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/h;->a()F

    move-result v0

    .line 716
    mul-float/2addr v0, p1

    :try_start_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    if-eqz v1, :cond_0

    const v1, 0x3d4ccccd

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v1, v0, p2}, Lcom/nianticproject/ingress/common/c/bj;->a(FF)V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "setVolume failed"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/be;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bb;->o:Lcom/nianticproject/ingress/common/c/be;

    .line 278
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 3
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->h:Lcom/nianticproject/ingress/common/w/q;

    new-instance v1, Lcom/nianticproject/ingress/common/c/bf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/nianticproject/ingress/common/c/bf;-><init>(Lcom/nianticproject/ingress/common/c/bb;Lcom/nianticproject/ingress/common/c/bn;B)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/q;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->h:Lcom/nianticproject/ingress/common/w/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/q;->a()Lcom/nianticproject/ingress/common/w/r;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bf;

    .line 191
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/nianticproject/ingress/common/c/bf;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bn;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/nianticproject/ingress/common/c/bf;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->f(Lcom/nianticproject/ingress/common/c/bn;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->g()V

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->h()V

    goto :goto_0
.end method

.method public final a(Lcom/nianticproject/ingress/common/c/g;)V
    .locals 2
    .parameter

    .prologue
    .line 287
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->g:Lcom/nianticproject/ingress/common/c/g;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->b()F

    move-result v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/bn;->c()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/c/bb;->a(FF)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 308
    return-void
.end method

.method public final b(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 3
    .parameter

    .prologue
    .line 211
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/bb;->f(Lcom/nianticproject/ingress/common/c/bn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->h:Lcom/nianticproject/ingress/common/w/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/q;->clear()V

    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/common/c/bn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bb;->k:Lcom/nianticproject/ingress/common/c/bi;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bi;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/bj;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/bj;->a()V
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "playLoaded() failed"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->q()V

    .line 244
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->i()Z

    goto :goto_0

    .line 249
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/c/bb;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->g(Lcom/nianticproject/ingress/common/c/bn;)V

    :cond_0
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/bj;->e()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->h:Lcom/nianticproject/ingress/common/w/q;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/w/q;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bf;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/c/bf;->a:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "onPause failed getting currentPlaybackPosition()"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I

    goto :goto_0

    .line 298
    :cond_3
    return-void
.end method

.method public final c(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-ne p1, v0, :cond_0

    .line 757
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->g()V

    .line 759
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 698
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    .line 699
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    :cond_2
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->h()V

    goto :goto_0
.end method

.method public final d(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 763
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-ne p1, v0, :cond_0

    .line 764
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bb;->m:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/c/bb;->m:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->n:Lcom/nianticproject/ingress/common/c/bj;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/c/bj;->e()I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I
    :try_end_0
    .catch Lcom/nianticproject/ingress/common/c/bl; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v4}, Lcom/nianticproject/ingress/common/c/bb;->a(Z)V

    :goto_1
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 766
    :cond_0
    return-void

    .line 764
    :catch_0
    move-exception v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bb;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "explicitPause failed getting currentPlaybackPosition()"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput v3, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/nianticproject/ingress/common/c/bb;->l:I

    goto :goto_1
.end method

.method public final e(Lcom/nianticproject/ingress/common/c/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-ne p1, v0, :cond_0

    .line 771
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bb;->m:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bb;->m:Z

    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bg;->a:Lcom/nianticproject/ingress/common/c/bg;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->f()V

    .line 773
    :cond_0
    return-void
.end method

.method public final f_()V
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bb;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    .line 303
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    if-nez v0, :cond_1

    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->b:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->h()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->j:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->f()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/nianticproject/ingress/common/c/bg;->c:Lcom/nianticproject/ingress/common/c/bg;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/c/bb;->i:Lcom/nianticproject/ingress/common/c/bg;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/c/bb;->i()Z

    goto :goto_0
.end method
