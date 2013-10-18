.class public final Lcom/nianticproject/ingress/common/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/nianticproject/ingress/common/c/ba;

.field private b:F


# direct methods
.method private constructor <init>(Lcom/nianticproject/ingress/common/c/ba;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/b;->a:Lcom/nianticproject/ingress/common/c/ba;

    .line 38
    const v0, 0x3f59999a

    iput v0, p0, Lcom/nianticproject/ingress/common/c/b;->b:F

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ba;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/c/b;-><init>(Lcom/nianticproject/ingress/common/c/ba;)V

    .line 43
    return-void
.end method


# virtual methods
.method public final a(F)J
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 69
    iget v0, p0, Lcom/nianticproject/ingress/common/c/b;->b:F

    mul-float/2addr v0, p1

    .line 70
    const v1, 0x3d4ccccd

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 72
    new-instance v1, Lcom/nianticproject/ingress/common/c/bo;

    invoke-direct {v1}, Lcom/nianticproject/ingress/common/c/bo;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/nianticproject/ingress/common/c/ba;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/b;->a:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/nianticproject/ingress/common/c/bo;->a([Lcom/nianticproject/ingress/common/c/ba;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/c/bo;->a(F)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/nianticproject/ingress/common/c/bo;->a(Z)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->e()Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/c/bp;->a:Lcom/nianticproject/ingress/common/c/bp;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/c/bo;->a(Lcom/nianticproject/ingress/common/c/bp;)Lcom/nianticproject/ingress/common/c/bo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bo;->f()Lcom/nianticproject/ingress/common/c/bn;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/nianticproject/ingress/common/c/o;->a()Lcom/nianticproject/ingress/common/c/e;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/c/e;->a(Lcom/nianticproject/ingress/common/c/bn;)V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/b;->a:Lcom/nianticproject/ingress/common/c/ba;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/ba;->d()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a()Lcom/nianticproject/ingress/common/c/ba;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/b;->a:Lcom/nianticproject/ingress/common/c/ba;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 54
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 55
    const-string/jumbo v1, "{asset=%s length=%d capVolume=%.2f}"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/b;->a:Lcom/nianticproject/ingress/common/c/ba;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/ba;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticproject/ingress/common/c/b;->a:Lcom/nianticproject/ingress/common/c/ba;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/ba;->d()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/nianticproject/ingress/common/c/b;->b:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 57
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    .line 59
    return-object v1
.end method
