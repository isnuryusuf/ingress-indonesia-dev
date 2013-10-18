.class public final Lcom/nianticproject/ingress/gameentity/components/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/nianticproject/ingress/gameentity/components/q;


# instance fields
.field public final b:D

.field public final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/nianticproject/ingress/gameentity/components/q;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/nianticproject/ingress/gameentity/components/q;-><init>(DZ)V

    sput-object v0, Lcom/nianticproject/ingress/gameentity/components/q;->a:Lcom/nianticproject/ingress/gameentity/components/q;

    return-void
.end method

.method public constructor <init>(DZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 104
    iput-wide p1, p0, Lcom/nianticproject/ingress/gameentity/components/q;->b:D

    .line 105
    iput-boolean p3, p0, Lcom/nianticproject/ingress/gameentity/components/q;->c:Z

    .line 106
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 119
    instance-of v1, p1, Lcom/nianticproject/ingress/gameentity/components/q;

    if-nez v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/gameentity/components/q;

    .line 123
    iget-wide v1, p0, Lcom/nianticproject/ingress/gameentity/components/q;->b:D

    iget-wide v3, p1, Lcom/nianticproject/ingress/gameentity/components/q;->b:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/gameentity/components/q;->c:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/gameentity/components/q;->c:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/nianticproject/ingress/gameentity/components/q;->b:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nianticproject/ingress/gameentity/components/q;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/nianticproject/ingress/gameentity/components/q;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/q;->c:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " (critical)"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
