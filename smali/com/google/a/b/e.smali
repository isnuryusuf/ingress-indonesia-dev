.class public final Lcom/google/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final a:Lcom/google/a/a/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/bs",
            "<+",
            "Lcom/google/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/a/b/m;

.field static final c:Lcom/google/a/a/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/bs",
            "<",
            "Lcom/google/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Lcom/google/a/a/bw;

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field e:Z

.field f:I

.field g:I

.field h:J

.field i:J

.field j:Lcom/google/a/b/ck;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/ck",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field k:Lcom/google/a/b/at;

.field l:Lcom/google/a/b/at;

.field m:J

.field n:J

.field o:J

.field p:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field r:Lcom/google/a/b/cd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/b/cd",
            "<-TK;-TV;>;"
        }
    .end annotation
.end field

.field s:Lcom/google/a/a/bw;

.field t:Lcom/google/a/a/bs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/bs",
            "<+",
            "Lcom/google/a/b/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/google/a/b/f;

    invoke-direct {v0}, Lcom/google/a/b/f;-><init>()V

    invoke-static {v0}, Lcom/google/a/a/bt;->a(Ljava/lang/Object;)Lcom/google/a/a/bs;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/e;->a:Lcom/google/a/a/bs;

    .line 181
    new-instance v0, Lcom/google/a/b/m;

    invoke-direct {v0}, Lcom/google/a/b/m;-><init>()V

    sput-object v0, Lcom/google/a/b/e;->b:Lcom/google/a/b/m;

    .line 183
    new-instance v0, Lcom/google/a/b/g;

    invoke-direct {v0}, Lcom/google/a/b/g;-><init>()V

    sput-object v0, Lcom/google/a/b/e;->c:Lcom/google/a/a/bs;

    .line 207
    new-instance v0, Lcom/google/a/b/h;

    invoke-direct {v0}, Lcom/google/a/b/h;-><init>()V

    sput-object v0, Lcom/google/a/b/e;->d:Lcom/google/a/a/bw;

    .line 214
    const-class v0, Lcom/google/a/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/e;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const-wide/16 v1, -0x1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/b/e;->e:Z

    .line 220
    iput v3, p0, Lcom/google/a/b/e;->f:I

    .line 221
    iput v3, p0, Lcom/google/a/b/e;->g:I

    .line 222
    iput-wide v1, p0, Lcom/google/a/b/e;->h:J

    .line 223
    iput-wide v1, p0, Lcom/google/a/b/e;->i:J

    .line 229
    iput-wide v1, p0, Lcom/google/a/b/e;->m:J

    .line 230
    iput-wide v1, p0, Lcom/google/a/b/e;->n:J

    .line 231
    iput-wide v1, p0, Lcom/google/a/b/e;->o:J

    .line 239
    sget-object v0, Lcom/google/a/b/e;->a:Lcom/google/a/a/bs;

    iput-object v0, p0, Lcom/google/a/b/e;->t:Lcom/google/a/a/bs;

    .line 242
    return-void
.end method

.method public static a()Lcom/google/a/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/e",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/google/a/b/e;

    invoke-direct {v0}, Lcom/google/a/b/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method final a(Z)Lcom/google/a/a/bw;
    .locals 1
    .parameter

    .prologue
    .line 708
    iget-object v0, p0, Lcom/google/a/b/e;->s:Lcom/google/a/a/bw;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/google/a/b/e;->s:Lcom/google/a/a/bw;

    .line 711
    :goto_0
    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/a/a/bw;->b()Lcom/google/a/a/bw;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google/a/b/e;->d:Lcom/google/a/a/bw;

    goto :goto_0
.end method

.method public final a(Lcom/google/a/b/cd;)Lcom/google/a/b/e;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/a/b/cd",
            "<-TK1;-TV1;>;)",
            "Lcom/google/a/b/e",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/a/b/e;->r:Lcom/google/a/b/cd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 743
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/cd;

    iput-object v0, p0, Lcom/google/a/b/e;->r:Lcom/google/a/b/cd;

    .line 744
    return-object p0

    .line 738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/a/b/ck;)Lcom/google/a/b/e;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/a/b/ck",
            "<-TK1;-TV1;>;)",
            "Lcom/google/a/b/e",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/google/a/b/e;->j:Lcom/google/a/b/ck;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 479
    iget-boolean v0, p0, Lcom/google/a/b/e;->e:Z

    if-eqz v0, :cond_0

    .line 480
    iget-wide v3, p0, Lcom/google/a/b/e;->h:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v3, "weigher can not be combined with maximum size"

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lcom/google/a/b/e;->h:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 487
    :cond_0
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ck;

    iput-object v0, p0, Lcom/google/a/b/e;->j:Lcom/google/a/b/ck;

    .line 488
    return-object p0

    :cond_1
    move v0, v2

    .line 478
    goto :goto_0

    :cond_2
    move v0, v2

    .line 480
    goto :goto_1
.end method

.method public final a(Lcom/google/a/b/k;)Lcom/google/a/b/n;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lcom/google/a/b/k",
            "<-TK1;TV1;>;)",
            "Lcom/google/a/b/n",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, -0x1

    .line 788
    iget-object v2, p0, Lcom/google/a/b/e;->j:Lcom/google/a/b/ck;

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/a/b/e;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    :goto_0
    const-string/jumbo v1, "maximumWeight requires weigher"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 789
    :cond_0
    :goto_1
    new-instance v0, Lcom/google/a/b/am;

    invoke-direct {v0, p0, p1}, Lcom/google/a/b/am;-><init>(Lcom/google/a/b/e;Lcom/google/a/b/k;)V

    return-object v0

    :cond_1
    move v0, v1

    .line 788
    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/google/a/b/e;->e:Z

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/google/a/b/e;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :goto_2
    const-string/jumbo v1, "weigher requires maximumWeight"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    iget-wide v0, p0, Lcom/google/a/b/e;->i:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/a/b/e;->u:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method final b()Lcom/google/a/a/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/a/b/e;->p:Lcom/google/a/a/x;

    invoke-virtual {p0}, Lcom/google/a/b/e;->i()Lcom/google/a/b/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/b/at;->a()Lcom/google/a/a/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/x;

    return-object v0
.end method

.method final c()Lcom/google/a/a/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/a/b/e;->q:Lcom/google/a/a/x;

    invoke-virtual {p0}, Lcom/google/a/b/e;->j()Lcom/google/a/b/at;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/b/at;->a()Lcom/google/a/a/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/x;

    return-object v0
.end method

.method final d()I
    .locals 2

    .prologue
    .line 341
    iget v0, p0, Lcom/google/a/b/e;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/a/b/e;->f:I

    goto :goto_0
.end method

.method final e()I
    .locals 2

    .prologue
    .line 383
    iget v0, p0, Lcom/google/a/b/e;->g:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/a/b/e;->g:I

    goto :goto_0
.end method

.method public final f()Lcom/google/a/b/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/b/e",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const-wide/32 v9, 0xa00000

    const-wide/16 v7, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 438
    iget-wide v3, p0, Lcom/google/a/b/e;->i:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "maximum weight was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/a/b/e;->i:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 440
    iget-wide v3, p0, Lcom/google/a/b/e;->h:J

    cmp-long v0, v3, v7

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v3, "maximum size was already set to %s"

    new-array v4, v1, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/google/a/b/e;->h:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 442
    iput-wide v9, p0, Lcom/google/a/b/e;->i:J

    .line 443
    const-wide/16 v3, 0x0

    cmp-long v0, v9, v3

    if-ltz v0, :cond_2

    :goto_2
    const-string/jumbo v0, "maximum weight must not be negative"

    invoke-static {v1, v0}, Lcom/google/a/a/an;->a(ZLjava/lang/Object;)V

    .line 444
    return-object p0

    :cond_0
    move v0, v2

    .line 438
    goto :goto_0

    :cond_1
    move v0, v2

    .line 440
    goto :goto_1

    :cond_2
    move v1, v2

    .line 443
    goto :goto_2
.end method

.method final g()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 492
    iget-wide v2, p0, Lcom/google/a/b/e;->m:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/a/b/e;->n:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 495
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/a/b/e;->j:Lcom/google/a/b/ck;

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/a/b/e;->h:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/google/a/b/e;->i:J

    goto :goto_0
.end method

.method final h()Lcom/google/a/b/ck;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/a/b/ck",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/a/b/e;->j:Lcom/google/a/b/ck;

    sget-object v1, Lcom/google/a/b/j;->a:Lcom/google/a/b/j;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/ck;

    return-object v0
.end method

.method final i()Lcom/google/a/b/at;
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/google/a/b/e;->k:Lcom/google/a/b/at;

    sget-object v1, Lcom/google/a/b/at;->a:Lcom/google/a/b/at;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/at;

    return-object v0
.end method

.method final j()Lcom/google/a/b/at;
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/google/a/b/e;->l:Lcom/google/a/b/at;

    sget-object v1, Lcom/google/a/b/at;->a:Lcom/google/a/b/at;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/at;

    return-object v0
.end method

.method final k()J
    .locals 4

    .prologue
    .line 615
    iget-wide v0, p0, Lcom/google/a/b/e;->m:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/b/e;->m:J

    goto :goto_0
.end method

.method final l()J
    .locals 4

    .prologue
    .line 649
    iget-wide v0, p0, Lcom/google/a/b/e;->n:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/b/e;->n:J

    goto :goto_0
.end method

.method final m()J
    .locals 4

    .prologue
    .line 689
    iget-wide v0, p0, Lcom/google/a/b/e;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/a/b/e;->o:J

    goto :goto_0
.end method

.method final n()Lcom/google/a/b/cd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lcom/google/a/b/cd",
            "<TK1;TV1;>;"
        }
    .end annotation

    .prologue
    .line 750
    iget-object v0, p0, Lcom/google/a/b/e;->r:Lcom/google/a/b/cd;

    sget-object v1, Lcom/google/a/b/i;->a:Lcom/google/a/b/i;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/cd;

    return-object v0
.end method

.method final o()Lcom/google/a/a/bs;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/a/bs",
            "<+",
            "Lcom/google/a/b/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/a/b/e;->t:Lcom/google/a/a/bs;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, -0x1

    const-wide/16 v5, -0x1

    .line 834
    invoke-static {p0}, Lcom/google/a/a/ag;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    move-result-object v0

    .line 835
    iget v1, p0, Lcom/google/a/b/e;->f:I

    if-eq v1, v3, :cond_0

    .line 836
    const-string/jumbo v1, "initialCapacity"

    iget v2, p0, Lcom/google/a/b/e;->f:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    .line 838
    :cond_0
    iget v1, p0, Lcom/google/a/b/e;->g:I

    if-eq v1, v3, :cond_1

    .line 839
    const-string/jumbo v1, "concurrencyLevel"

    iget v2, p0, Lcom/google/a/b/e;->g:I

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;I)Lcom/google/a/a/ah;

    .line 841
    :cond_1
    iget-wide v1, p0, Lcom/google/a/b/e;->h:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 842
    const-string/jumbo v1, "maximumSize"

    iget-wide v2, p0, Lcom/google/a/b/e;->h:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/ah;->a(Ljava/lang/String;J)Lcom/google/a/a/ah;

    .line 844
    :cond_2
    iget-wide v1, p0, Lcom/google/a/b/e;->i:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_3

    .line 845
    const-string/jumbo v1, "maximumWeight"

    iget-wide v2, p0, Lcom/google/a/b/e;->i:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/a/a/ah;->a(Ljava/lang/String;J)Lcom/google/a/a/ah;

    .line 847
    :cond_3
    iget-wide v1, p0, Lcom/google/a/b/e;->m:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_4

    .line 848
    const-string/jumbo v1, "expireAfterWrite"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/a/b/e;->m:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 850
    :cond_4
    iget-wide v1, p0, Lcom/google/a/b/e;->n:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5

    .line 851
    const-string/jumbo v1, "expireAfterAccess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/google/a/b/e;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ns"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 853
    :cond_5
    iget-object v1, p0, Lcom/google/a/b/e;->k:Lcom/google/a/b/at;

    if-eqz v1, :cond_6

    .line 854
    const-string/jumbo v1, "keyStrength"

    iget-object v2, p0, Lcom/google/a/b/e;->k:Lcom/google/a/b/at;

    invoke-virtual {v2}, Lcom/google/a/b/at;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 856
    :cond_6
    iget-object v1, p0, Lcom/google/a/b/e;->l:Lcom/google/a/b/at;

    if-eqz v1, :cond_7

    .line 857
    const-string/jumbo v1, "valueStrength"

    iget-object v2, p0, Lcom/google/a/b/e;->l:Lcom/google/a/b/at;

    invoke-virtual {v2}, Lcom/google/a/b/at;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/a/a/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/a/a/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 859
    :cond_7
    iget-object v1, p0, Lcom/google/a/b/e;->p:Lcom/google/a/a/x;

    if-eqz v1, :cond_8

    .line 860
    const-string/jumbo v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/a/a/ah;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 862
    :cond_8
    iget-object v1, p0, Lcom/google/a/b/e;->q:Lcom/google/a/a/x;

    if-eqz v1, :cond_9

    .line 863
    const-string/jumbo v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lcom/google/a/a/ah;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 865
    :cond_9
    iget-object v1, p0, Lcom/google/a/b/e;->r:Lcom/google/a/b/cd;

    if-eqz v1, :cond_a

    .line 866
    const-string/jumbo v1, "removalListener"

    invoke-virtual {v0, v1}, Lcom/google/a/a/ah;->a(Ljava/lang/Object;)Lcom/google/a/a/ah;

    .line 868
    :cond_a
    invoke-virtual {v0}, Lcom/google/a/a/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
