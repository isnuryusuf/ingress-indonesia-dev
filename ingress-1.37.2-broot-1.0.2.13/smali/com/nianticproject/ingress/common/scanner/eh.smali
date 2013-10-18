.class public final Lcom/nianticproject/ingress/common/scanner/eh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:F

.field private static b:F


# instance fields
.field private c:I

.field private d:F

.field private e:Z

.field private final f:[Lcom/nianticproject/ingress/common/scanner/ei;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/high16 v0, 0x4120

    sput v0, Lcom/nianticproject/ingress/common/scanner/eh;->a:F

    .line 29
    const/high16 v0, 0x4170

    sput v0, Lcom/nianticproject/ingress/common/scanner/eh;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->c:I

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->d:F

    .line 37
    iput-boolean v5, p0, Lcom/nianticproject/ingress/common/scanner/eh;->e:Z

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/nianticproject/ingress/common/scanner/ei;

    new-instance v1, Lcom/nianticproject/ingress/common/scanner/ei;

    const/high16 v2, 0x42c8

    const/16 v3, 0xa

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/nianticproject/ingress/common/scanner/ei;-><init>(Lcom/nianticproject/ingress/common/scanner/eh;FIB)V

    aput-object v1, v0, v5

    const/4 v1, 0x1

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/ei;

    const/high16 v3, 0x4396

    const/16 v4, 0x19

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/ei;-><init>(Lcom/nianticproject/ingress/common/scanner/eh;FIB)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/ei;

    const/high16 v3, 0x43fa

    const/16 v4, 0x32

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/ei;-><init>(Lcom/nianticproject/ingress/common/scanner/eh;FIB)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/ei;

    const/high16 v3, 0x447a

    const/16 v4, 0x64

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/ei;-><init>(Lcom/nianticproject/ingress/common/scanner/eh;FIB)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/nianticproject/ingress/common/scanner/ei;

    const v3, 0x4ac26d84

    const/16 v4, 0x1f4

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/nianticproject/ingress/common/scanner/ei;-><init>(Lcom/nianticproject/ingress/common/scanner/eh;FIB)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->f:[Lcom/nianticproject/ingress/common/scanner/ei;

    .line 172
    return-void
.end method

.method private a(F)I
    .locals 7
    .parameter

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/scanner/eh;->b(F)I

    move-result v0

    .line 109
    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 110
    float-to-int v1, v1

    div-int/2addr v1, v0

    mul-int/2addr v0, v1

    return v0
.end method

.method private b(F)I
    .locals 2
    .parameter

    .prologue
    .line 164
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/eh;->f:[Lcom/nianticproject/ingress/common/scanner/ei;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/eh;->f:[Lcom/nianticproject/ingress/common/scanner/ei;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/nianticproject/ingress/common/scanner/ei;->a:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/eh;->f:[Lcom/nianticproject/ingress/common/scanner/ei;

    aget-object v0, v1, v0

    iget v0, v0, Lcom/nianticproject/ingress/common/scanner/ei;->b:I

    .line 169
    :goto_1
    return v0

    .line 164
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/16 v0, 0x1f4

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->e:Z

    .line 81
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bs;->aK:Lcom/nianticproject/ingress/common/c/bs;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bs;)V

    .line 82
    return-void
.end method

.method public final a(DD)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->e:Z

    .line 56
    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->dX:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lcom/nianticproject/ingress/common/c/ba;->aN:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    double-to-int v1, p1

    int-to-double v1, v1

    invoke-static {v1, v2}, Lcom/nianticproject/ingress/common/w/aj;->a(D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    double-to-int v1, p3

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/ai;->a(I)Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget v1, Lcom/nianticproject/ingress/common/scanner/eh;->a:F

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/eh;->d:F

    .line 64
    double-to-int v1, p1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/nianticproject/ingress/common/scanner/eh;->a(F)I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/scanner/eh;->c:I

    .line 66
    new-instance v1, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 71
    return-void
.end method

.method public final a(FDD)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 90
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->e:Z

    if-eqz v0, :cond_0

    .line 91
    double-to-float v0, p2

    double-to-float v1, p4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/scanner/eh;->e:Z

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/eh;->a(F)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->c:I

    invoke-static {}, Lcom/google/a/c/eq;->a()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v2, Lcom/nianticproject/ingress/common/c/ba;->dX:Lcom/nianticproject/ingress/common/c/ba;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/eh;->c:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/w/aj;->a(D)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    float-to-int v1, v1

    invoke-static {v1}, Lcom/nianticproject/ingress/common/w/ai;->a(I)Lcom/nianticproject/ingress/common/c/ba;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(Ljava/util/Collection;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 94
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 95
    iget v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->d:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->d:F

    .line 99
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    double-to-float v0, p2

    sget v1, Lcom/nianticproject/ingress/common/scanner/eh;->b:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/eh;->b(F)I

    move-result v1

    iget v2, p0, Lcom/nianticproject/ingress/common/scanner/eh;->c:I

    float-to-int v3, v0

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_3

    iput-boolean v4, p0, Lcom/nianticproject/ingress/common/scanner/eh;->e:Z

    sget v0, Lcom/nianticproject/ingress/common/scanner/eh;->a:F

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->d:F

    goto :goto_0

    :cond_3
    neg-int v1, v1

    if-gt v2, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/scanner/eh;->a(F)I

    move-result v0

    iput v0, p0, Lcom/nianticproject/ingress/common/scanner/eh;->c:I

    goto :goto_0
.end method
