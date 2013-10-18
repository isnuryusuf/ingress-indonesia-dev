.class public final Lcom/nianticproject/ingress/common/k/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/nianticproject/ingress/common/c/bs;

.field private static final c:[Lcom/nianticproject/ingress/common/c/b;


# instance fields
.field private final b:Lcom/nianticproject/ingress/common/c/a;

.field private final d:Lcom/nianticproject/ingress/common/c/e;

.field private final e:Lcom/nianticproject/ingress/common/c/ak;

.field private final f:Lcom/nianticproject/ingress/common/c/bn;

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 36
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nianticproject/ingress/common/c/b;

    new-instance v1, Lcom/nianticproject/ingress/common/c/b;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->aC:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v1, v2, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/nianticproject/ingress/common/c/b;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->aE:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v1, v2, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/nianticproject/ingress/common/c/b;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->aF:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v1, v2, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/nianticproject/ingress/common/c/b;

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->aD:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v1, v2, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-instance v2, Lcom/nianticproject/ingress/common/c/b;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->aG:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/nianticproject/ingress/common/c/b;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->aH:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/nianticproject/ingress/common/c/b;

    sget-object v3, Lcom/nianticproject/ingress/common/c/ba;->aI:Lcom/nianticproject/ingress/common/c/ba;

    invoke-direct {v2, v3, v4}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;B)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/k/z;->c:[Lcom/nianticproject/ingress/common/c/b;

    .line 45
    new-array v0, v7, [Lcom/nianticproject/ingress/common/c/bs;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aV:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aW:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aX:Lcom/nianticproject/ingress/common/c/bs;

    aput-object v1, v0, v6

    sput-object v0, Lcom/nianticproject/ingress/common/k/z;->a:[Lcom/nianticproject/ingress/common/c/bs;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ak;)V
    .locals 5
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    .line 57
    iput-object p1, p0, Lcom/nianticproject/ingress/common/k/z;->e:Lcom/nianticproject/ingress/common/c/ak;

    .line 59
    new-instance v0, Lcom/nianticproject/ingress/common/c/a;

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->al:Lcom/nianticproject/ingress/common/c/ba;

    sget-object v2, Lcom/nianticproject/ingress/common/k/z;->c:[Lcom/nianticproject/ingress/common/c/b;

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/c/a;-><init>(Lcom/nianticproject/ingress/common/c/ba;[Lcom/nianticproject/ingress/common/c/b;F)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->b:Lcom/nianticproject/ingress/common/c/a;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    .line 66
    sget-object v0, Lcom/nianticproject/ingress/common/k/z;->a:[Lcom/nianticproject/ingress/common/c/bs;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    sget-object v3, Lcom/nianticproject/ingress/common/k/z;->a:[Lcom/nianticproject/ingress/common/c/bs;

    array-length v3, v3

    int-to-double v3, v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bs;->a()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->f:Lcom/nianticproject/ingress/common/c/bn;

    .line 67
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/k/z;->e()V

    .line 68
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 75
    :try_start_0
    const-string/jumbo v0, "PrecacheSpaceMixAssets"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->f:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 78
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/c/e;->b(Lcom/nianticproject/ingress/common/c/ba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 89
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 98
    :try_start_0
    const-string/jumbo v0, "DisposeSpaceMixAssets"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->al:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/ba;)V

    .line 100
    sget-object v1, Lcom/nianticproject/ingress/common/k/z;->c:[Lcom/nianticproject/ingress/common/c/b;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 101
    iget-object v4, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/c/b;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/ba;)V

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->f:Lcom/nianticproject/ingress/common/c/bn;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/c/bi;

    .line 105
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bi;->a()Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/ba;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 109
    return-void
.end method

.method public final a(FZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 143
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    if-nez v0, :cond_0

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    if-eqz p2, :cond_1

    .line 149
    const v0, 0x3e4ccccd

    .line 154
    :goto_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/z;->b:Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/c/a;->a()V

    .line 156
    iget-object v2, p0, Lcom/nianticproject/ingress/common/k/z;->b:Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v2, v1}, Lcom/nianticproject/ingress/common/c/a;->a(F)V

    .line 158
    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/z;->b:Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v1, p1, v0}, Lcom/nianticproject/ingress/common/c/a;->a(FF)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 151
    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->e:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 118
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/c/e;->b(Z)V

    .line 119
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    .line 121
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->b:Lcom/nianticproject/ingress/common/c/a;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/a;->c()V

    .line 130
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->e:Lcom/nianticproject/ingress/common/c/ak;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/ak;->a(Z)V

    .line 131
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    invoke-interface {v0, v2}, Lcom/nianticproject/ingress/common/c/e;->b(Z)V

    .line 132
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    .line 134
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->h:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->g:Z

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/k/z;->g:Z

    .line 171
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/k/z;->f:Lcom/nianticproject/ingress/common/c/bn;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 175
    iget-object v0, p0, Lcom/nianticproject/ingress/common/k/z;->d:Lcom/nianticproject/ingress/common/c/e;

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->ba:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 177
    :cond_0
    return-void
.end method
