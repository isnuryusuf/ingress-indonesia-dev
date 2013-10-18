.class Lcom/google/a/c/fi;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
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
        "Ljava/io/Serializable;",
        "Ljava/util/concurrent/ConcurrentMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final p:Lcom/google/a/c/gu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/gu",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final q:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Ljava/util/logging/Logger;


# instance fields
.field final transient a:I

.field final transient b:I

.field final transient c:[Lcom/google/a/c/gi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/a/c/gi",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final f:Lcom/google/a/a/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/a/x",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final g:Lcom/google/a/c/gk;

.field final h:Lcom/google/a/c/gk;

.field final i:I

.field final j:J

.field final k:J

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/a/c/fh",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Lcom/google/a/c/fg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/fg",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final transient n:Lcom/google/a/c/fm;

.field final o:Lcom/google/a/a/bw;

.field transient r:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field transient s:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field

.field transient t:Ljava/util/Set;
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
    .line 135
    const-class v0, Lcom/google/a/c/fi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/a/c/fi;->u:Ljava/util/logging/Logger;

    .line 578
    new-instance v0, Lcom/google/a/c/fj;

    invoke-direct {v0}, Lcom/google/a/c/fj;-><init>()V

    sput-object v0, Lcom/google/a/c/fi;->p:Lcom/google/a/c/gu;

    .line 868
    new-instance v0, Lcom/google/a/c/fk;

    invoke-direct {v0}, Lcom/google/a/c/fk;-><init>()V

    sput-object v0, Lcom/google/a/c/fi;->q:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/a/c/ey;)V
    .locals 8
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 195
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 196
    invoke-virtual {p1}, Lcom/google/a/c/ey;->d()I

    move-result v0

    const/high16 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/a/c/fi;->d:I

    .line 198
    invoke-virtual {p1}, Lcom/google/a/c/ey;->e()Lcom/google/a/c/gk;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/fi;->g:Lcom/google/a/c/gk;

    .line 199
    iget-object v0, p1, Lcom/google/a/c/ey;->g:Lcom/google/a/c/gk;

    sget-object v1, Lcom/google/a/c/gk;->a:Lcom/google/a/c/gk;

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gk;

    iput-object v0, p0, Lcom/google/a/c/fi;->h:Lcom/google/a/c/gk;

    .line 201
    iget-object v0, p1, Lcom/google/a/c/ey;->k:Lcom/google/a/a/x;

    invoke-virtual {p1}, Lcom/google/a/c/ey;->e()Lcom/google/a/c/gk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c/gk;->a()Lcom/google/a/a/x;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/x;

    iput-object v0, p0, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    .line 202
    iget-object v0, p0, Lcom/google/a/c/fi;->h:Lcom/google/a/c/gk;

    invoke-virtual {v0}, Lcom/google/a/c/gk;->a()Lcom/google/a/a/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/fi;->f:Lcom/google/a/a/x;

    .line 204
    iget v0, p1, Lcom/google/a/c/ey;->e:I

    iput v0, p0, Lcom/google/a/c/fi;->i:I

    .line 205
    iget-wide v0, p1, Lcom/google/a/c/ey;->i:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_2

    move-wide v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/google/a/c/fi;->j:J

    .line 206
    iget-wide v0, p1, Lcom/google/a/c/ey;->h:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_3

    :goto_1
    iput-wide v2, p0, Lcom/google/a/c/fi;->k:J

    .line 208
    iget-object v0, p0, Lcom/google/a/c/fi;->g:Lcom/google/a/c/gk;

    invoke-virtual {p0}, Lcom/google/a/c/fi;->b()Z

    move-result v1

    invoke-virtual {p0}, Lcom/google/a/c/fi;->a()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/a/c/fm;->a(Lcom/google/a/c/gk;ZZ)Lcom/google/a/c/fm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/fi;->n:Lcom/google/a/c/fm;

    .line 209
    iget-object v0, p1, Lcom/google/a/c/ey;->l:Lcom/google/a/a/bw;

    invoke-static {}, Lcom/google/a/a/bw;->b()Lcom/google/a/a/bw;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/a/a/ag;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/a/bw;

    iput-object v0, p0, Lcom/google/a/c/fi;->o:Lcom/google/a/a/bw;

    .line 211
    invoke-virtual {p1}, Lcom/google/a/c/ey;->a()Lcom/google/a/c/fg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c/fi;->m:Lcom/google/a/c/fg;

    .line 212
    iget-object v0, p0, Lcom/google/a/c/fi;->m:Lcom/google/a/c/fg;

    sget-object v1, Lcom/google/a/c/bv;->a:Lcom/google/a/c/bv;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/google/a/c/fi;->q:Ljava/util/Queue;

    :goto_2
    iput-object v0, p0, Lcom/google/a/c/fi;->l:Ljava/util/Queue;

    .line 216
    invoke-virtual {p1}, Lcom/google/a/c/ey;->b()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lcom/google/a/c/fi;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    iget v1, p0, Lcom/google/a/c/fi;->i:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    move v1, v4

    move v2, v5

    .line 227
    :goto_3
    iget v3, p0, Lcom/google/a/c/fi;->d:I

    if-ge v1, v3, :cond_5

    invoke-virtual {p0}, Lcom/google/a/c/fi;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    iget v6, p0, Lcom/google/a/c/fi;->i:I

    if-gt v3, v6, :cond_5

    .line 228
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 229
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 205
    :cond_2
    iget-wide v0, p1, Lcom/google/a/c/ey;->i:J

    goto :goto_0

    .line 206
    :cond_3
    iget-wide v2, p1, Lcom/google/a/c/ey;->h:J

    goto :goto_1

    .line 212
    :cond_4
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    goto :goto_2

    .line 231
    :cond_5
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/a/c/fi;->b:I

    .line 232
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/a/c/fi;->a:I

    .line 234
    new-array v2, v1, [Lcom/google/a/c/gi;

    iput-object v2, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    .line 236
    div-int v2, v0, v1

    .line 237
    mul-int v3, v2, v1

    if-ge v3, v0, :cond_a

    .line 238
    add-int/lit8 v0, v2, 0x1

    .line 242
    :goto_4
    if-ge v4, v0, :cond_6

    .line 243
    shl-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 246
    :cond_6
    invoke-virtual {p0}, Lcom/google/a/c/fi;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 248
    iget v0, p0, Lcom/google/a/c/fi;->i:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 249
    iget v2, p0, Lcom/google/a/c/fi;->i:I

    rem-int v1, v2, v1

    .line 250
    :goto_5
    iget-object v2, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    array-length v2, v2

    if-ge v5, v2, :cond_9

    .line 251
    if-ne v5, v1, :cond_7

    .line 252
    add-int/lit8 v0, v0, -0x1

    .line 254
    :cond_7
    iget-object v2, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    invoke-direct {p0, v4, v0}, Lcom/google/a/c/fi;->a(II)Lcom/google/a/c/gi;

    move-result-object v3

    aput-object v3, v2, v5

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 258
    :cond_8
    :goto_6
    iget-object v0, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    array-length v0, v0

    if-ge v5, v0, :cond_9

    .line 259
    iget-object v0, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    const/4 v1, -0x1

    invoke-direct {p0, v4, v1}, Lcom/google/a/c/fi;->a(II)Lcom/google/a/c/gi;

    move-result-object v1

    aput-object v1, v0, v5

    .line 258
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 263
    :cond_9
    return-void

    :cond_a
    move v0, v2

    goto :goto_4
.end method

.method private a(Ljava/lang/Object;)I
    .locals 3
    .parameter

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/google/a/c/fi;->e:Lcom/google/a/a/x;

    invoke-virtual {v0, p1}, Lcom/google/a/a/x;->a(Ljava/lang/Object;)I

    move-result v0

    .line 1852
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

.method private a(I)Lcom/google/a/c/gi;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/a/c/gi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    iget v1, p0, Lcom/google/a/c/fi;->b:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/a/c/fi;->a:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method private a(II)Lcom/google/a/c/gi;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/a/c/gi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1887
    new-instance v0, Lcom/google/a/c/gi;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/c/gi;-><init>(Lcom/google/a/c/fi;II)V

    return-object v0
.end method

.method static a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V
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
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1929
    invoke-interface {p0, p1}, Lcom/google/a/c/gh;->a(Lcom/google/a/c/gh;)V

    .line 1930
    invoke-interface {p1, p0}, Lcom/google/a/c/gh;->b(Lcom/google/a/c/gh;)V

    .line 1931
    return-void
.end method

.method static a(Lcom/google/a/c/gh;J)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;J)Z"
        }
    .end annotation

    .prologue
    .line 1924
    invoke-interface {p0}, Lcom/google/a/c/gh;->e()J

    move-result-wide v0

    sub-long v0, p1, v0

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

.method static b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V
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
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1962
    invoke-interface {p0, p1}, Lcom/google/a/c/gh;->c(Lcom/google/a/c/gh;)V

    .line 1963
    invoke-interface {p1, p0}, Lcom/google/a/c/gh;->d(Lcom/google/a/c/gh;)V

    .line 1964
    return-void
.end method

.method static d(Lcom/google/a/c/gh;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1935
    sget-object v0, Lcom/google/a/c/gg;->a:Lcom/google/a/c/gg;

    .line 1936
    invoke-interface {p0, v0}, Lcom/google/a/c/gh;->a(Lcom/google/a/c/gh;)V

    .line 1937
    invoke-interface {p0, v0}, Lcom/google/a/c/gh;->b(Lcom/google/a/c/gh;)V

    .line 1938
    return-void
.end method

.method static e(Lcom/google/a/c/gh;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1968
    sget-object v0, Lcom/google/a/c/gg;->a:Lcom/google/a/c/gg;

    .line 1969
    invoke-interface {p0, v0}, Lcom/google/a/c/gh;->c(Lcom/google/a/c/gh;)V

    .line 1970
    invoke-interface {p0, v0}, Lcom/google/a/c/gh;->d(Lcom/google/a/c/gh;)V

    .line 1971
    return-void
.end method

.method static f()Lcom/google/a/c/gu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 614
    sget-object v0, Lcom/google/a/c/fi;->p:Lcom/google/a/c/gu;

    return-object v0
.end method

.method static g()Lcom/google/a/c/gh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 865
    sget-object v0, Lcom/google/a/c/gg;->a:Lcom/google/a/c/gg;

    return-object v0
.end method

.method static h()Ljava/util/Queue;
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
    .line 900
    sget-object v0, Lcom/google/a/c/fi;->q:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic j()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/google/a/c/fi;->u:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/google/a/c/gh;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1862
    invoke-interface {p1}, Lcom/google/a/c/gh;->c()I

    move-result v0

    .line 1863
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;I)Z

    .line 1864
    return-void
.end method

.method final a(Lcom/google/a/c/gu;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gu",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1856
    invoke-interface {p1}, Lcom/google/a/c/gu;->a()Lcom/google/a/c/gh;

    move-result-object v0

    .line 1857
    invoke-interface {v0}, Lcom/google/a/c/gh;->c()I

    move-result v1

    .line 1858
    invoke-direct {p0, v1}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;ILcom/google/a/c/gu;)Z

    .line 1859
    return-void
.end method

.method final a()Z
    .locals 2

    .prologue
    .line 266
    iget v0, p0, Lcom/google/a/c/fi;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Lcom/google/a/c/gh;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1896
    invoke-interface {p1}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1907
    :cond_0
    :goto_0
    return-object v0

    .line 1899
    :cond_1
    invoke-interface {p1}, Lcom/google/a/c/gh;->a()Lcom/google/a/c/gu;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/a/c/gu;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1900
    if-eqz v1, :cond_0

    .line 1904
    invoke-virtual {p0}, Lcom/google/a/c/fi;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/a/c/fi;->c(Lcom/google/a/c/gh;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move-object v0, v1

    .line 1907
    goto :goto_0
.end method

.method final b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 270
    iget-wide v2, p0, Lcom/google/a/c/fi;->k:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/google/a/c/fi;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method final c()Z
    .locals 4

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/a/c/fi;->j:J

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

.method final c(Lcom/google/a/c/gh;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/google/a/c/fi;->o:Lcom/google/a/a/bw;

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/google/a/c/fi;->a(Lcom/google/a/c/gh;J)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 3578
    iget-object v1, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 3579
    invoke-virtual {v3}, Lcom/google/a/c/gi;->a()V

    .line 3578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3581
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    .line 3470
    if-nez p1, :cond_0

    .line 3471
    const/4 v0, 0x0

    .line 3474
    :goto_0
    return v0

    .line 3473
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3474
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/c/gi;->b(Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 14
    .parameter

    .prologue
    .line 3479
    if-nez p1, :cond_0

    .line 3480
    const/4 v0, 0x0

    .line 3513
    :goto_0
    return v0

    .line 3488
    :cond_0
    iget-object v8, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    .line 3489
    const-wide/16 v3, -0x1

    .line 3490
    const/4 v0, 0x0

    move v5, v0

    move-wide v6, v3

    :goto_1
    const/4 v0, 0x3

    if-ge v5, v0, :cond_5

    .line 3491
    const-wide/16 v1, 0x0

    .line 3492
    array-length v9, v8

    const/4 v0, 0x0

    move-wide v3, v1

    move v2, v0

    :goto_2
    if-ge v2, v9, :cond_4

    aget-object v10, v8, v2

    .line 3495
    iget v0, v10, Lcom/google/a/c/gi;->b:I

    .line 3497
    iget-object v11, v10, Lcom/google/a/c/gi;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 3498
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 3499
    invoke-virtual {v11, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/gh;

    :goto_4
    if-eqz v0, :cond_2

    .line 3500
    invoke-virtual {v10, v0}, Lcom/google/a/c/gi;->a(Lcom/google/a/c/gh;)Ljava/lang/Object;

    move-result-object v12

    .line 3501
    if-eqz v12, :cond_1

    iget-object v13, p0, Lcom/google/a/c/fi;->f:Lcom/google/a/a/x;

    invoke-virtual {v13, p1, v12}, Lcom/google/a/a/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3502
    const/4 v0, 0x1

    goto :goto_0

    .line 3499
    :cond_1
    invoke-interface {v0}, Lcom/google/a/c/gh;->b()Lcom/google/a/c/gh;

    move-result-object v0

    goto :goto_4

    .line 3498
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 3506
    :cond_3
    iget v0, v10, Lcom/google/a/c/gi;->c:I

    int-to-long v0, v0

    add-long/2addr v3, v0

    .line 3492
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 3508
    :cond_4
    cmp-long v0, v3, v6

    if-eqz v0, :cond_5

    .line 3490
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-wide v6, v3

    goto :goto_1

    .line 3513
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final d()Z
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/a/c/fi;->g:Lcom/google/a/c/gk;

    sget-object v1, Lcom/google/a/c/gk;->a:Lcom/google/a/c/gk;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final e()Z
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/a/c/fi;->h:Lcom/google/a/c/gk;

    sget-object v1, Lcom/google/a/c/gk;->a:Lcom/google/a/c/gk;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 3603
    iget-object v0, p0, Lcom/google/a/c/fi;->t:Ljava/util/Set;

    .line 3604
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/fw;

    invoke-direct {v0, p0}, Lcom/google/a/c/fw;-><init>(Lcom/google/a/c/fi;)V

    iput-object v0, p0, Lcom/google/a/c/fi;->t:Ljava/util/Set;

    goto :goto_0
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
    .line 3449
    if-nez p1, :cond_0

    .line 3450
    const/4 v0, 0x0

    .line 3453
    :goto_0
    return-object v0

    .line 3452
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3453
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method final i()V
    .locals 4

    .prologue
    .line 1950
    :goto_0
    iget-object v0, p0, Lcom/google/a/c/fi;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/fh;

    if-eqz v0, :cond_0

    .line 1952
    :try_start_0
    iget-object v0, p0, Lcom/google/a/c/fi;->m:Lcom/google/a/c/fg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    sget-object v1, Lcom/google/a/c/fi;->u:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v3, "Exception thrown by removal listener"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1957
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 3414
    .line 3415
    iget-object v6, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    move v0, v1

    move-wide v2, v4

    .line 3416
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 3417
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/c/gi;->b:I

    if-eqz v7, :cond_1

    .line 3434
    :cond_0
    :goto_1
    return v1

    .line 3420
    :cond_1
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/c/gi;->c:I

    int-to-long v7, v7

    add-long/2addr v2, v7

    .line 3416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3423
    :cond_2
    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 3424
    :goto_2
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 3425
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/c/gi;->b:I

    if-nez v7, :cond_0

    .line 3428
    aget-object v7, v6, v0

    iget v7, v7, Lcom/google/a/c/gi;->c:I

    int-to-long v7, v7

    sub-long/2addr v2, v7

    .line 3424
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3430
    :cond_3
    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 3434
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
    .line 3587
    iget-object v0, p0, Lcom/google/a/c/fi;->r:Ljava/util/Set;

    .line 3588
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/gf;

    invoke-direct {v0, p0}, Lcom/google/a/c/gf;-><init>(Lcom/google/a/c/fi;)V

    iput-object v0, p0, Lcom/google/a/c/fi;->r:Ljava/util/Set;

    goto :goto_0
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
    .line 3518
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3519
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3520
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3521
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3534
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

    .line 3535
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/a/c/fi;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3537
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
    .line 3526
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3527
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3528
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3529
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

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
    .line 3541
    if-nez p1, :cond_0

    .line 3542
    const/4 v0, 0x0

    .line 3545
    :goto_0
    return-object v0

    .line 3544
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3545
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/a/c/gi;->c(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3550
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 3551
    :cond_0
    const/4 v0, 0x0

    .line 3554
    :goto_0
    return v0

    .line 3553
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3554
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/a/c/gi;->b(Ljava/lang/Object;ILjava/lang/Object;)Z

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
    .line 3570
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3571
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3572
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3573
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

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
    .line 3559
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3560
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3561
    if-nez p2, :cond_0

    .line 3562
    const/4 v0, 0x0

    .line 3565
    :goto_0
    return v0

    .line 3564
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/a/c/fi;->a(Ljava/lang/Object;)I

    move-result v0

    .line 3565
    invoke-direct {p0, v0}, Lcom/google/a/c/fi;->a(I)Lcom/google/a/c/gi;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/a/c/gi;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 6

    .prologue
    .line 3439
    iget-object v3, p0, Lcom/google/a/c/fi;->c:[Lcom/google/a/c/gi;

    .line 3440
    const-wide/16 v1, 0x0

    .line 3441
    const/4 v0, 0x0

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 3442
    aget-object v4, v3, v0

    iget v4, v4, Lcom/google/a/c/gi;->b:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3444
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
    .line 3595
    iget-object v0, p0, Lcom/google/a/c/fi;->s:Ljava/util/Collection;

    .line 3596
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/a/c/gv;

    invoke-direct {v0, p0}, Lcom/google/a/c/gv;-><init>(Lcom/google/a/c/fi;)V

    iput-object v0, p0, Lcom/google/a/c/fi;->s:Ljava/util/Collection;

    goto :goto_0
.end method
