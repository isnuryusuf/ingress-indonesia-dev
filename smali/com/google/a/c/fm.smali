.class abstract enum Lcom/google/a/c/fm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/c/fm;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/c/fm;

.field public static final enum b:Lcom/google/a/c/fm;

.field public static final enum c:Lcom/google/a/c/fm;

.field public static final enum d:Lcom/google/a/c/fm;

.field public static final enum e:Lcom/google/a/c/fm;

.field public static final enum f:Lcom/google/a/c/fm;

.field public static final enum g:Lcom/google/a/c/fm;

.field public static final enum h:Lcom/google/a/c/fm;

.field static final i:[[Lcom/google/a/c/fm;

.field private static final synthetic j:[Lcom/google/a/c/fm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    new-instance v0, Lcom/google/a/c/fn;

    const-string/jumbo v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/a/c/fn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->a:Lcom/google/a/c/fm;

    .line 359
    new-instance v0, Lcom/google/a/c/fo;

    const-string/jumbo v1, "STRONG_EXPIRABLE"

    invoke-direct {v0, v1}, Lcom/google/a/c/fo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->b:Lcom/google/a/c/fm;

    .line 374
    new-instance v0, Lcom/google/a/c/fp;

    const-string/jumbo v1, "STRONG_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/a/c/fp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->c:Lcom/google/a/c/fm;

    .line 389
    new-instance v0, Lcom/google/a/c/fq;

    const-string/jumbo v1, "STRONG_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/a/c/fq;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->d:Lcom/google/a/c/fm;

    .line 406
    new-instance v0, Lcom/google/a/c/fr;

    const-string/jumbo v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/a/c/fr;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->e:Lcom/google/a/c/fm;

    .line 413
    new-instance v0, Lcom/google/a/c/fs;

    const-string/jumbo v1, "WEAK_EXPIRABLE"

    invoke-direct {v0, v1}, Lcom/google/a/c/fs;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->f:Lcom/google/a/c/fm;

    .line 428
    new-instance v0, Lcom/google/a/c/ft;

    const-string/jumbo v1, "WEAK_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/a/c/ft;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->g:Lcom/google/a/c/fm;

    .line 443
    new-instance v0, Lcom/google/a/c/fu;

    const-string/jumbo v1, "WEAK_EXPIRABLE_EVICTABLE"

    invoke-direct {v0, v1}, Lcom/google/a/c/fu;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/c/fm;->h:Lcom/google/a/c/fm;

    .line 351
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/a/c/fm;

    sget-object v1, Lcom/google/a/c/fm;->a:Lcom/google/a/c/fm;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/c/fm;->b:Lcom/google/a/c/fm;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/c/fm;->c:Lcom/google/a/c/fm;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/c/fm;->d:Lcom/google/a/c/fm;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/c/fm;->e:Lcom/google/a/c/fm;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/a/c/fm;->f:Lcom/google/a/c/fm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/a/c/fm;->g:Lcom/google/a/c/fm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/a/c/fm;->h:Lcom/google/a/c/fm;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/c/fm;->j:[Lcom/google/a/c/fm;

    .line 470
    new-array v0, v6, [[Lcom/google/a/c/fm;

    new-array v1, v7, [Lcom/google/a/c/fm;

    sget-object v2, Lcom/google/a/c/fm;->a:Lcom/google/a/c/fm;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/a/c/fm;->b:Lcom/google/a/c/fm;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/a/c/fm;->c:Lcom/google/a/c/fm;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/a/c/fm;->d:Lcom/google/a/c/fm;

    aput-object v2, v1, v6

    aput-object v1, v0, v3

    new-array v1, v3, [Lcom/google/a/c/fm;

    aput-object v1, v0, v4

    new-array v1, v7, [Lcom/google/a/c/fm;

    sget-object v2, Lcom/google/a/c/fm;->e:Lcom/google/a/c/fm;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/a/c/fm;->f:Lcom/google/a/c/fm;

    aput-object v2, v1, v4

    sget-object v2, Lcom/google/a/c/fm;->g:Lcom/google/a/c/fm;

    aput-object v2, v1, v5

    sget-object v2, Lcom/google/a/c/fm;->h:Lcom/google/a/c/fm;

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/a/c/fm;->i:[[Lcom/google/a/c/fm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/google/a/c/fm;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/google/a/c/gk;ZZ)Lcom/google/a/c/fm;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 478
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 479
    sget-object v1, Lcom/google/a/c/fm;->i:[[Lcom/google/a/c/fm;

    invoke-virtual {p0}, Lcom/google/a/c/gk;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v1, v0

    .line 478
    goto :goto_0
.end method

.method static a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V
    .locals 2
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
    .line 509
    invoke-interface {p0}, Lcom/google/a/c/gh;->e()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/a/c/gh;->a(J)V

    .line 511
    invoke-interface {p0}, Lcom/google/a/c/gh;->g()Lcom/google/a/c/gh;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/fi;->a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V

    .line 512
    invoke-interface {p0}, Lcom/google/a/c/gh;->f()Lcom/google/a/c/gh;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/c/fi;->a(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V

    .line 514
    invoke-static {p0}, Lcom/google/a/c/fi;->d(Lcom/google/a/c/gh;)V

    .line 515
    return-void
.end method

.method static b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V
    .locals 1
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
    .line 521
    invoke-interface {p0}, Lcom/google/a/c/gh;->i()Lcom/google/a/c/gh;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/c/fi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V

    .line 522
    invoke-interface {p0}, Lcom/google/a/c/gh;->h()Lcom/google/a/c/gh;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/c/fi;->b(Lcom/google/a/c/gh;Lcom/google/a/c/gh;)V

    .line 524
    invoke-static {p0}, Lcom/google/a/c/fi;->e(Lcom/google/a/c/gh;)V

    .line 525
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/c/fm;
    .locals 1
    .parameter

    .prologue
    .line 351
    const-class v0, Lcom/google/a/c/fm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/c/fm;

    return-object v0
.end method

.method public static values()[Lcom/google/a/c/fm;
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/google/a/c/fm;->j:[Lcom/google/a/c/fm;

    invoke-virtual {v0}, [Lcom/google/a/c/fm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/c/fm;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/a/c/gi;Lcom/google/a/c/gh;Lcom/google/a/c/gh;)Lcom/google/a/c/gh;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/gi",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 502
    invoke-interface {p2}, Lcom/google/a/c/gh;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/a/c/gh;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/a/c/fm;->a(Lcom/google/a/c/gi;Ljava/lang/Object;ILcom/google/a/c/gh;)Lcom/google/a/c/gh;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/google/a/c/gi;Ljava/lang/Object;ILcom/google/a/c/gh;)Lcom/google/a/c/gh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/c/gi",
            "<TK;TV;>;TK;I",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;)",
            "Lcom/google/a/c/gh",
            "<TK;TV;>;"
        }
    .end annotation
.end method
