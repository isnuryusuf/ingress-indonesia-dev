.class final Lcom/nianticproject/ingress/common/scanner/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[[F

.field private final b:[[F


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x6

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->a:[[F

    .line 37
    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    .line 38
    return-void
.end method


# virtual methods
.method final a(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 45
    iget-object v0, p1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    .line 48
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v1

    aget v3, v0, v1

    aput v3, v2, v1

    .line 49
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v1

    aget v3, v0, v9

    aput v3, v2, v4

    .line 50
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v1

    const/16 v3, 0x8

    aget v3, v0, v3

    aput v3, v2, v5

    .line 51
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v1

    const/16 v3, 0xc

    aget v3, v0, v3

    aput v3, v2, v8

    .line 53
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v4

    aget v3, v0, v4

    aput v3, v2, v1

    .line 54
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x5

    aget v3, v0, v3

    aput v3, v2, v4

    .line 55
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v4

    const/16 v3, 0x9

    aget v3, v0, v3

    aput v3, v2, v5

    .line 56
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v4

    const/16 v3, 0xd

    aget v3, v0, v3

    aput v3, v2, v8

    .line 58
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v5

    aget v3, v0, v5

    aput v3, v2, v1

    .line 59
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v5

    const/4 v3, 0x6

    aget v3, v0, v3

    aput v3, v2, v4

    .line 60
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v5

    const/16 v3, 0xa

    aget v3, v0, v3

    aput v3, v2, v5

    .line 61
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v5

    const/16 v3, 0xe

    aget v3, v0, v3

    aput v3, v2, v8

    .line 63
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v8

    aget v3, v0, v8

    aput v3, v2, v1

    .line 64
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v8

    const/4 v3, 0x7

    aget v3, v0, v3

    aput v3, v2, v4

    .line 65
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v8

    const/16 v3, 0xb

    aget v3, v0, v3

    aput v3, v2, v5

    .line 66
    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v2, v2, v8

    const/16 v3, 0xf

    aget v0, v0, v3

    aput v0, v2, v8

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v3, v0, v8

    move v2, v1

    .line 70
    :goto_0
    if-ge v2, v8, :cond_2

    .line 71
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->b:[[F

    aget-object v4, v0, v2

    .line 72
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->a:[[F

    mul-int/lit8 v5, v2, 0x2

    aget-object v5, v0, v5

    move v0, v1

    .line 73
    :goto_1
    if-ge v0, v9, :cond_0

    aget v6, v3, v0

    aget v7, v4, v0

    add-float/2addr v6, v7

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->a:[[F

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v0, v5

    move v0, v1

    .line 76
    :goto_2
    if-ge v0, v9, :cond_1

    aget v6, v3, v0

    aget v7, v4, v0

    sub-float/2addr v6, v7

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 78
    :cond_2
    return-void
.end method

.method final a(I)[F
    .locals 1
    .parameter

    .prologue
    .line 90
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/a/a;->a:[[F

    aget-object v0, v0, p1

    return-object v0

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
