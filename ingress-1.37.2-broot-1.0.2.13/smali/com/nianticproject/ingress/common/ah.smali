.class final Lcom/nianticproject/ingress/common/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->a:D

    .line 29
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->b:D

    .line 30
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->c:D

    .line 31
    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->d:D

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ah;-><init>()V

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    return v0
.end method

.method final a(FF)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->a:D

    float-to-double v2, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->a:D

    .line 36
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->b:D

    mul-float v2, p1, p1

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->b:D

    .line 37
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->c:D

    float-to-double v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->c:D

    .line 38
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->d:D

    mul-float v2, p2, p2

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->d:D

    .line 39
    iget v0, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    .line 40
    return-void
.end method

.method final b()F
    .locals 10

    .prologue
    .line 47
    iget-wide v0, p0, Lcom/nianticproject/ingress/common/ah;->b:D

    iget v2, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 48
    iget-wide v2, p0, Lcom/nianticproject/ingress/common/ah;->a:D

    iget v4, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 49
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ah;->d:D

    iget v6, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    .line 50
    iget-wide v6, p0, Lcom/nianticproject/ingress/common/ah;->c:D

    iget v8, p0, Lcom/nianticproject/ingress/common/ah;->e:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 52
    mul-double/2addr v2, v2

    sub-double/2addr v0, v2

    add-double/2addr v0, v4

    mul-double v2, v6, v6

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
