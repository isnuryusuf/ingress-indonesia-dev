.class public final Lcom/nianticproject/ingress/common/missions/co;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nianticproject/ingress/common/missions/ca;",
            ">;",
            "Lcom/nianticproject/ingress/common/model/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Lcom/nianticproject/ingress/common/missions/cp;

.field private static final c:[Lcom/nianticproject/ingress/common/missions/cp;

.field private static final d:[Lcom/nianticproject/ingress/common/missions/cp;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-static {}, Lcom/google/a/c/hc;->b()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/missions/co;->a:Ljava/util/HashMap;

    .line 58
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nianticproject/ingress/common/missions/cp;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->a:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->b:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->c:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->d:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->e:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->f:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->g:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/nianticproject/ingress/common/missions/cp;->h:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v2, v0, v1

    sput-object v0, Lcom/nianticproject/ingress/common/missions/co;->b:[Lcom/nianticproject/ingress/common/missions/cp;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/missions/cp;

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->a:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->i:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->c:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->d:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nianticproject/ingress/common/missions/cp;->e:Lcom/nianticproject/ingress/common/missions/cp;

    aput-object v1, v0, v7

    sput-object v0, Lcom/nianticproject/ingress/common/missions/co;->c:[Lcom/nianticproject/ingress/common/missions/cp;

    .line 77
    sget-object v0, Lcom/nianticproject/ingress/common/missions/co;->b:[Lcom/nianticproject/ingress/common/missions/cp;

    check-cast v0, [Lcom/nianticproject/ingress/common/missions/cp;

    sput-object v0, Lcom/nianticproject/ingress/common/missions/co;->d:[Lcom/nianticproject/ingress/common/missions/cp;

    return-void
.end method

.method public static a(Lcom/nianticproject/ingress/common/missions/ca;)Lcom/nianticproject/ingress/common/model/a/i;
    .locals 2
    .parameter

    .prologue
    .line 99
    invoke-static {p0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/nianticproject/ingress/common/missions/co;->a:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/model/a/i;

    return-object v0
.end method

.method public static a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/common/missions/ca;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/nianticproject/ingress/common/missions/co;->d:[Lcom/nianticproject/ingress/common/missions/cp;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/nianticproject/ingress/common/missions/co;->d:[Lcom/nianticproject/ingress/common/missions/cp;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    sget-object v2, Lcom/nianticproject/ingress/common/missions/co;->d:[Lcom/nianticproject/ingress/common/missions/cp;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/nianticproject/ingress/common/missions/cp;->l:Lcom/nianticproject/ingress/common/missions/ca;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/nianticproject/ingress/common/model/a/e;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    sget-object v2, Lcom/nianticproject/ingress/common/missions/co;->d:[Lcom/nianticproject/ingress/common/missions/cp;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 82
    iget-object v4, v4, Lcom/nianticproject/ingress/common/missions/cp;->k:Lcom/nianticproject/ingress/common/model/a/i;

    invoke-virtual {p0, v4}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/i;)Lcom/nianticproject/ingress/common/missions/ck;

    move-result-object v4

    sget-object v5, Lcom/nianticproject/ingress/common/missions/ck;->d:Lcom/nianticproject/ingress/common/missions/ck;

    if-ne v4, v5, :cond_1

    .line 83
    const/4 v0, 0x1

    .line 86
    :cond_0
    return v0

    .line 81
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/nianticproject/ingress/common/missions/co;->a:Ljava/util/HashMap;

    return-object v0
.end method
