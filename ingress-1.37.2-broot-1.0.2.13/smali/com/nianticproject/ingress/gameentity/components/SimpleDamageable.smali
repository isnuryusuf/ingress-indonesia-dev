.class public Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/Damageable;
.implements Lcom/nianticproject/ingress/shared/s;


# instance fields
.field private transient dirty:Z

.field private total:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->total:I

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->dirty:Z

    .line 28
    return-void
.end method


# virtual methods
.method public getTotal()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->total:I

    return v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->dirty:Z

    return v0
.end method

.method public setClean()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->dirty:Z

    .line 51
    return-void
.end method

.method public setTotal(I)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->total:I

    if-eq v0, p1, :cond_0

    .line 38
    iput p1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->total:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->dirty:Z

    .line 41
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->total:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleDamageable;->dirty:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " [dirty]"

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
