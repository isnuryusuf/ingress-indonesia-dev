.class abstract enum Lcom/google/a/b/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/a/b/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/a/b/w;

.field public static final enum b:Lcom/google/a/b/w;

.field public static final enum c:Lcom/google/a/b/w;

.field public static final enum d:Lcom/google/a/b/w;

.field public static final enum e:Lcom/google/a/b/w;

.field public static final enum f:Lcom/google/a/b/w;

.field public static final enum g:Lcom/google/a/b/w;

.field public static final enum h:Lcom/google/a/b/w;

.field static final i:[Lcom/google/a/b/w;

.field private static final synthetic j:[Lcom/google/a/b/w;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 444
    new-instance v0, Lcom/google/a/b/x;

    const-string/jumbo v1, "STRONG"

    invoke-direct {v0, v1}, Lcom/google/a/b/x;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->a:Lcom/google/a/b/w;

    .line 451
    new-instance v0, Lcom/google/a/b/y;

    const-string/jumbo v1, "STRONG_ACCESS"

    invoke-direct {v0, v1}, Lcom/google/a/b/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->b:Lcom/google/a/b/w;

    .line 466
    new-instance v0, Lcom/google/a/b/z;

    const-string/jumbo v1, "STRONG_WRITE"

    invoke-direct {v0, v1}, Lcom/google/a/b/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->c:Lcom/google/a/b/w;

    .line 481
    new-instance v0, Lcom/google/a/b/aa;

    const-string/jumbo v1, "STRONG_ACCESS_WRITE"

    invoke-direct {v0, v1}, Lcom/google/a/b/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->d:Lcom/google/a/b/w;

    .line 498
    new-instance v0, Lcom/google/a/b/ab;

    const-string/jumbo v1, "WEAK"

    invoke-direct {v0, v1}, Lcom/google/a/b/ab;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->e:Lcom/google/a/b/w;

    .line 505
    new-instance v0, Lcom/google/a/b/ac;

    const-string/jumbo v1, "WEAK_ACCESS"

    invoke-direct {v0, v1}, Lcom/google/a/b/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->f:Lcom/google/a/b/w;

    .line 520
    new-instance v0, Lcom/google/a/b/ad;

    const-string/jumbo v1, "WEAK_WRITE"

    invoke-direct {v0, v1}, Lcom/google/a/b/ad;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->g:Lcom/google/a/b/w;

    .line 535
    new-instance v0, Lcom/google/a/b/ae;

    const-string/jumbo v1, "WEAK_ACCESS_WRITE"

    invoke-direct {v0, v1}, Lcom/google/a/b/ae;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/a/b/w;->h:Lcom/google/a/b/w;

    .line 443
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/a/b/w;

    sget-object v1, Lcom/google/a/b/w;->a:Lcom/google/a/b/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/b/w;->b:Lcom/google/a/b/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/b/w;->c:Lcom/google/a/b/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/b/w;->d:Lcom/google/a/b/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/b/w;->e:Lcom/google/a/b/w;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/a/b/w;->f:Lcom/google/a/b/w;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/a/b/w;->g:Lcom/google/a/b/w;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/a/b/w;->h:Lcom/google/a/b/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/b/w;->j:[Lcom/google/a/b/w;

    .line 562
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/a/b/w;

    sget-object v1, Lcom/google/a/b/w;->a:Lcom/google/a/b/w;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/b/w;->b:Lcom/google/a/b/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/b/w;->c:Lcom/google/a/b/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/b/w;->d:Lcom/google/a/b/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/b/w;->e:Lcom/google/a/b/w;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/a/b/w;->f:Lcom/google/a/b/w;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/a/b/w;->g:Lcom/google/a/b/w;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/a/b/w;->h:Lcom/google/a/b/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/a/b/w;->i:[Lcom/google/a/b/w;

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
    .line 443
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 443
    invoke-direct {p0, p1, p2}, Lcom/google/a/b/w;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Lcom/google/a/b/at;ZZ)Lcom/google/a/b/w;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 569
    sget-object v1, Lcom/google/a/b/at;->c:Lcom/google/a/b/at;

    if-ne p0, v1, :cond_1

    const/4 v1, 0x4

    move v2, v1

    :goto_0
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    or-int/2addr v1, v2

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :cond_0
    or-int/2addr v0, v1

    .line 572
    sget-object v1, Lcom/google/a/b/w;->i:[Lcom/google/a/b/w;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    move v2, v0

    .line 569
    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method static a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V
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
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 602
    invoke-interface {p0}, Lcom/google/a/b/ap;->e()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/a/b/ap;->a(J)V

    .line 604
    invoke-interface {p0}, Lcom/google/a/b/ap;->g()Lcom/google/a/b/ap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    .line 605
    invoke-interface {p0}, Lcom/google/a/b/ap;->f()Lcom/google/a/b/ap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/b/o;->a(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    .line 607
    invoke-static {p0}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;)V

    .line 608
    return-void
.end method

.method static b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V
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
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 614
    invoke-interface {p0}, Lcom/google/a/b/ap;->h()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/google/a/b/ap;->b(J)V

    .line 616
    invoke-interface {p0}, Lcom/google/a/b/ap;->j()Lcom/google/a/b/ap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    .line 617
    invoke-interface {p0}, Lcom/google/a/b/ap;->i()Lcom/google/a/b/ap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/a/b/o;->b(Lcom/google/a/b/ap;Lcom/google/a/b/ap;)V

    .line 619
    invoke-static {p0}, Lcom/google/a/b/o;->c(Lcom/google/a/b/ap;)V

    .line 620
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/b/w;
    .locals 1
    .parameter

    .prologue
    .line 443
    const-class v0, Lcom/google/a/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/a/b/w;

    return-object v0
.end method

.method public static values()[Lcom/google/a/b/w;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/google/a/b/w;->j:[Lcom/google/a/b/w;

    invoke-virtual {v0}, [Lcom/google/a/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/b/w;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/a/b/aq;Lcom/google/a/b/ap;Lcom/google/a/b/ap;)Lcom/google/a/b/ap;
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
            "Lcom/google/a/b/aq",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 595
    invoke-interface {p2}, Lcom/google/a/b/ap;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/a/b/ap;->c()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/google/a/b/w;->a(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Lcom/google/a/b/aq;Ljava/lang/Object;ILcom/google/a/b/ap;)Lcom/google/a/b/ap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/a/b/aq",
            "<TK;TV;>;TK;I",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;)",
            "Lcom/google/a/b/ap",
            "<TK;TV;>;"
        }
    .end annotation
.end method
