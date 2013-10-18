.class public final Lcom/nianticproject/ingress/common/c/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/c/ba;

.field private final b:Ljava/lang/String;

.field private final c:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ba;)V
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/ba;->a()Lcom/nianticproject/ingress/common/c/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bh;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/c/bi;-><init>(Lcom/nianticproject/ingress/common/c/ba;Ljava/lang/String;Z)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/c/ba;B)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/c/ba;->a()Lcom/nianticproject/ingress/common/c/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/c/bh;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nianticproject/ingress/common/c/bi;-><init>(Lcom/nianticproject/ingress/common/c/ba;Ljava/lang/String;Z)V

    .line 36
    return-void
.end method

.method private constructor <init>(Lcom/nianticproject/ingress/common/c/ba;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    .line 50
    iput-object p2, p0, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    .line 51
    iput-boolean p3, p0, Lcom/nianticproject/ingress/common/c/bi;->c:Z

    .line 52
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/c/ba;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bi;->c:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p0, p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 103
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    instance-of v2, p1, Lcom/nianticproject/ingress/common/c/bi;

    if-nez v2, :cond_3

    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/common/c/bi;

    .line 110
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 111
    goto :goto_0

    .line 113
    :cond_4
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/c/bi;->c:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/common/c/bi;->c:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :cond_5
    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    iget-object v3, p1, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 117
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 90
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/c/bi;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    add-int/2addr v0, v2

    .line 91
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    if-nez v2, :cond_2

    :goto_2
    add-int/2addr v0, v1

    .line 92
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/c/ba;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "{asset=%s id=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/bi;->a:Lcom/nianticproject/ingress/common/c/ba;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/c/bi;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
